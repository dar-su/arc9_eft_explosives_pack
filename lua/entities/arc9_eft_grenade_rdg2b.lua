AddCSLuaFile()
ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

if CLIENT then killicon.Add("arc9_eft_grenade_rdg2b", "vgui/killicons/arc9_eft_rdg2b", Color(255, 255, 255)) end

ENT.PrintName  = "RDG-2B smoke grenade"
ENT.Model = "models/weapons/arc9/darsu_eft/w_rdg2.mdl"
ENT.StartTime = 3.5
ENT.LifeTime = 266
ENT.EmitTime = 120

ENT.dmg = 0
ENT.dmgradiusminM = 0
ENT.dmgradiusmaxM = 0
ENT.shakeradiusM = 0
ENT.contusionLength = 0

ENT.shrapnelcount = 0
ENT.shrapneldmg = 0

ENT.ExplodeOnImpact = false

local path = "weapons/darsu_eft/grenades/"
ENT.BounceSounds = { path .. "grenade_collision_smoke_russian1.ogg", path .. "grenade_collision_smoke_russian2.ogg", path .. "grenade_collision_smoke_russian3.ogg", path .. "grenade_collision_smoke_russian4.ogg" }

ENT.closeSound = path .. "grenade_smoke_russian_loop_start.ogg"
ENT.loopSound = path .. "grenade_smoke_russian_loop.ogg"
ENT.loopendSound = path .. "grenade_smoke_russian_loop_end.ogg"

ENT.nextloopsound = 999999999999

function ENT:Think()
    if SERVER and self.SpawnTime + self.LifeTime < CurTime() then 
        SafeRemoveEntity(self) 
    end
    
    if SERVER and self.nextloopsound < CurTime() then 
        if (self.SpawnTime + self.EmitTime - CurTime()) > 0 then
            self:EmitSound(self.loopSound, 70, 100, 1, nil, nil, 0)
            self.nextloopsound = CurTime() + 2.9
        else
            self:EmitSound(self.loopendSound, 70, 100, 1, nil, nil, 0)
            self.nextloopsound = 9999999999
        end
    end

    if self.Defused then return end

    if self.StartTime > 0 and self.SpawnTime + self.StartTime < CurTime() then
        self:StartSmoke()
        return
    end

end

PrecacheParticleSystem( "smoke_exhaust_01" )

function ENT:StartSmoke()
    self.Defused = true

    if CLIENT then
        table.insert(ARC9EFT.Smokeslist, self)

        timer.Simple(self.EmitTime, function()
            if IsValid(self) then self:StopParticles() end
        end)
    else
        self:EmitSound(self.closeSound, 70, 100, 1, nil, nil, 0)
        self.nextloopsound = CurTime() + 2.9

        local fear = ents.Create("ai_sound")
        fear:SetKeyValue("soundtype", 8)
        fear:SetKeyValue("volume", 256)
        fear:SetKeyValue("duration", 80)
        fear:SetOwner(self.Owner)
        fear:SetPos(self:GetPos())
        fear:Fire("EmitAISound" , "", 0.82)
        fear:Fire("kill", "", 6)

        local exp = ents.Create("env_smoketrail")
        exp:SetKeyValue("startsize", "11100")
        exp:SetKeyValue("endsize", "100000")
        exp:SetKeyValue("spawnradius", "128")
        exp:SetKeyValue("opacity", "1")
        exp:SetKeyValue("lifetime", "" .. self.EmitTime)
        exp:SetKeyValue("spawnrate", "4")
        exp:SetKeyValue("emittime", "" .. self.EmitTime)
        exp:SetKeyValue("maxspeed", "1")
        exp:SetKeyValue("maxdirectedspeed", "5")
        exp:SetKeyValue("startcolor", "150 150 150")
        exp:SetKeyValue("endcolor", "255 255 255")
        exp:SetPos(self:GetPos())
        exp:SetParent(self)
        exp:Spawn()
        exp:Fire("kill", "", self.EmitTime + 1)
    end
end

if CLIENT then
    function ENT:Initialize()
        self.SpawnTime = CurTime()

        ParticleEffectAttach("port_smoke_heavy", PATTACH_ABSORIGIN_FOLLOW, self, 1) -- flash

        ParticleEffectAttach("smoke_exhaust_01", PATTACH_ABSORIGIN_FOLLOW, self, 1)
    end
end