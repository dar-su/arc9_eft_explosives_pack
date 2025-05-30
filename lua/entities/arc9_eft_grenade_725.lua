AddCSLuaFile()
ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

if CLIENT then killicon.Add("arc9_eft_grenade_725", "vgui/killicons/arc9_eft_rshg2", Color(255, 255, 255)) end

ENT.PrintName  = "RSHG-2 rocket"
ENT.Model = "models/weapons/arc9/darsu_eft/rshg2_rocket.mdl"
ENT.ModelTrue = "models/weapons/arc9/darsu_eft/rshg2_rocket.mdl"
-- ENT.LifeTime = 0.3
ENT.LifeTime = 3.5

ENT.dmg = 600
ENT.dmgradiusminM = 4 * 2
ENT.dmgradiusmaxM = 8 * 1.5
ENT.shakeradiusM = 16.5
ENT.contusionLength = 10

ENT.shrapnelcount = 75
ENT.shrapneldmg = 45

ENT.ExplodeOnImpact = true
-- ENT.ExplodeOnImpactDelay = 0.3

local path = "weapons/darsu_eft/grenades/"
ENT.BounceSounds = { path .. "grenade_collision_concrete1.ogg", path .. "grenade_collision_concrete2.ogg", path .. "grenade_collision_concrete3.ogg" }

ENT.closeSound = path .. "gren_expl3_close.ogg"
ENT.distantSound = path .. "gren_expl3_dist2.ogg"
ENT.closeIndoorSound = path .. "gren_expl3_indoor_close.ogg"
ENT.distantIndoorSound = path .. "gren_expl3_indoor_distant.ogg"

ENT.particle = "explosion_grenade"
ENT.waterparticle = "water_explosion"
ENT.watersound = "weapons/underwater_explode3.wav"
ENT.underdecal = "FadingScorch"


ENT.FuseTime = 0.05

if SERVER then
    function ENT:PhysicsCollide(data, phys)
        timer.Simple(0, function()
            if IsValid(self) then
                if CurTime() > self.SpawnTime + self.FuseTime then
                    self:Detonate()
                else
                    self:FireBullets({Attacker = self:GetOwner(), Damage = self.dmg, Force = 16, HullSize = 16, Tracer = false, Dir = self:GetAngles():Forward(), Src = self:GetPos(), IgnoreEntity = self, AmmoType = 9})
                    self:Remove()
                end
            end
        end)
    end
end