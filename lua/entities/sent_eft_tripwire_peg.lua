AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "base_anim"
ENT.PrintName = "EFT Mining Kit Peg"
ENT.Category = "Fun + Games"
ENT.Author = "Darsu"
ENT.Spawnable = false
ENT.AdminOnly = false

if SERVER then
	function ENT:Initialize()
		-- self:SetModel( "models/weapons/arc9/darsu_eft/mining_kit_peg1.mdl" )
		self:PhysicsInit( SOLID_VPHYSICS )
		self:SetMoveType( MOVETYPE_NONE )
		self:SetSolid( SOLID_VPHYSICS )
		self:SetCollisionGroup( COLLISION_GROUP_WORLD )
		self:SetUseType(CONTINUOUS_USE)
	end


	function ENT:OnTakeDamage( dmginfo )
		if self.ImMain then
			self:Trigger()
		end
	end
else
	function ENT:Draw()
		self:DrawModel()
	end
end

local v1 = Vector(0, 0, 6)
local v2 = Vector(1, 1, 1)
local v3 = Vector(-1, -1, -1)
function ENT:Think()
	self:NextThink( CurTime() )

	if SERVER then
		if self.ImMain then
			if !self.Defused then
				local link, grenade = self.Link, self.Grenade
				if !IsValid(link) or !IsValid(grenade) and !self.Defused then return self:Remove() end

				local tr = util.TraceHull({
					maxs = v2,
					mins = v3,
					start = self:GetPos() + v1,
					endpos = link:GetPos() + v1,
					filter = {self, link, grenade},
					collisiongroup = COLLISION_GROUP_PLAYER
				})

				if tr.Hit then
					self:Trigger()
				end
			end

			if self.Defusing and !self.Triggered then
				local defusor = self.Defusor
				if !IsValid(defusor) or defusor:EyePos():DistToSqr(self:GetPos()) > (1.5/0.024)^2 or !defusor:KeyDown(IN_USE) then
					self.Defusing = false
					self.DefuseStartTime = 0
					self:StopLoopingSound(self.LoopSound)

					if IsValid(defusor) then
						net.Start("arc9eftdefuseprogress")
						net.WriteBool(false)
						net.Send(defusor)
					end
				else
					local defuseprogress = CurTime() - self.DefuseStartTime
					if defuseprogress > 5 then
						self:Defuse()
					end
				end
			end
		else
			if !IsValid(self.Link) then return self:Remove() end
		end
	end
	
	return true
end

function ENT:Trigger()
	if !self.Triggered and self.ImMain then
		self.Triggered = true
		if IsValid(self.Grenade) then
			self.Grenade.Defused = false
			self.Grenade.SpawnTime = CurTime()
			self.Grenade:SetModel(self.Grenade.TrueModel or self.Grenade.Model)
			self.Grenade:SetPos(self.Grenade:GetPos() + Vector(0, 0, 2.5))
			
			net.Start("arc9eftdefusegrenade")
			net.WriteEntity(self.Grenade)
			net.Broadcast()
		end
		
		constraint.RemoveAll(self)

		self:EmitSound(")weapons/darsu_eft/grenades/tripwire_grenade_pin.ogg", 160)
		self:EmitSound(")weapons/darsu_eft/grenades/gren_fuze1.ogg", 160)
		self:EmitSound(")weapons/darsu_eft/grenades/gren_fuze1.ogg", 160)

		SafeRemoveEntityDelayed(self, 5)
		SafeRemoveEntityDelayed(self.Link, 5)
	end
end

function ENT:Defuse()
	if !self.Triggered and self.ImMain and !self.Defused then
		self.Defused = true
		self:StopLoopingSound(self.LoopSound)
		self:EmitSound(")weapons/darsu_eft/grenades/tripwire_grenade_defuse_end.ogg", 60)

		if IsValid(self.Grenade) then
			local drop = ents.Create(self.Grenade.SWEP)
			drop:SetPos(self.Grenade:GetPos())
			drop:SetAngles(self.Grenade:GetAngles())
			drop:Spawn()
			drop.EFTPickupIn = CurTime() + 1
		end

		if IsValid(self.Defusor) then
			net.Start("arc9eftdefuseprogress")
			net.WriteBool(false)
			net.Send(self.Defusor)
		end

		SafeRemoveEntity(self.Grenade)
		constraint.RemoveAll(self)

		SafeRemoveEntityDelayed(self, 10)
		SafeRemoveEntityDelayed(self.Link, 10)
	end
end


function ENT:Use(activator, caller, usetype, value)
	if self.ImMain and !self.Triggered and !self.Defused then
		if !self.Defusing and IsValid(activator) and activator:EyePos():DistToSqr(self:GetPos()) <= (1.5/0.024)^2 then
			self.Defusing = true
			self.DefuseStartTime = CurTime()
			self.Defusor = activator

			net.Start("arc9eftdefuseprogress")
			net.WriteBool(true)
			net.Send(activator)
			self.LoopSound = self:StartLoopingSound("weapons/darsu_eft/grenades/tripwire_grenade_defuse_loop.wav")
		end
	end
end

if CLIENT then
	net.Receive("arc9eftdefuseprogress", function()
		local bool = net.ReadBool()
		LocalPlayer().EFT_Defusing = bool
		if bool then LocalPlayer().EFT_DefuseStartTime = CurTime() end
	end)

	local function ss(size) return (size * (ScrH() / 1080) * GetConVar("arc9_hud_scale"):GetFloat()) end
    surface.CreateFont("eftpopup", { font = "Bender", size = ss(26), weight = 551, blursize = 0, antialias = true, extended = true })

	local smoothdef = 0
	local defuseprogress = 0
	local shadow = Material("vgui/arc9_eft_shared/glow_particle2.png", "mips smooth")
	local shield = Material("vgui/arc9_eft_shared/shield.png", "mips smooth")

	hook.Add("HUDPaint", "EFTDefuseProgress", function()
		local lp = LocalPlayer()

		local defusing = lp.EFT_Defusing and lp:KeyDown(IN_USE)

		smoothdef = Lerp(FrameTime() * 15, smoothdef, defusing and 1 or 0) 

		if defusing then defuseprogress = CurTime() - lp.EFT_DefuseStartTime end

		if smoothdef > 0.1 then
			local text = "     Disarming " .. math.Round(5 - defuseprogress, 1)
			surface.SetFont("eftpopup")
			local tw = surface.GetTextSize(text) 
			local width = tw + ss(30)

			surface.SetDrawColor(185, 210, 30, smoothdef * 255)
			surface.DrawRect(ScrW()/2 - width/2, ScrH()/1.25 + ss(5), width, ss(51))

			surface.SetMaterial(shield)
			surface.SetDrawColor(0, 0, 0, smoothdef * 255)
			surface.DrawTexturedRect(ScrW()/2 - tw/2 - ss(2), ScrH()/1.25 + ss(14), ss(30), ss(32))

			surface.SetTextPos(ScrW()/2 - tw/2, ScrH()/1.25 + ss(16))
			surface.SetTextColor(0, 0, 0, smoothdef * 255)
			surface.DrawText(text)
			
			surface.SetMaterial(shadow)
			surface.SetDrawColor(217, 255, 81, smoothdef * 16)
			surface.DrawTexturedRect(ScrW()/2 - ss(200/2 + 100), ScrH()/1.25 - ss(40-5), width + ss(200-10), ss(51+85))
		end
	end)
end

hook.Add( "PlayerCanPickupWeapon", "EFTGrenadesNoInstantPickup", function(ply, weapon) -- qol
	if weapon.EFTPickupIn and !(weapon.EFTPickupIn < CurTime() and ply:KeyDown(IN_USE)) then return false end
end)