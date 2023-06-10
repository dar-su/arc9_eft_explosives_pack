AddCSLuaFile()
ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

if CLIENT then killicon.Add("arc9_eft_grenade_m7290", "vgui/killicons/arc9_eft_m7290", Color(255, 255, 255)) end

ENT.PrintName  = "M7290 Flash Bang"
ENT.Model = "models/weapons/arc9/darsu_eft/w_m7920.mdl"
ENT.LifeTime = 1.5

ENT.dmg = 0
ENT.dmgradiusminM = 0
ENT.dmgradiusmaxM = 0
ENT.shakeradiusM = 10 * 2 -- contusion range will be divided by 2, flash range is not
ENT.contusionLength = 30

ENT.ExplodeOnImpact = false

local path = "weapons/darsu_eft/grenades/"
ENT.BounceSounds = { path .. "grenade_flash_impact1.ogg", path .. "grenade_flash_impact2.ogg", path .. "grenade_flash_impact3.ogg", path .. "grenade_flash_impact1.ogg" }

ENT.closeSound = path .. "grenade_flash_start_outdoor_close.ogg"
ENT.distantSound = path .. "grenade_flash_start_outdoor_distant.ogg"
ENT.closeIndoorSound = path .. "grenade_flash_start_indoor_close.ogg"
ENT.distantIndoorSound = path .. "grenade_flash_start_indoor_distant.ogg"

ENT.particle = "grenade_flash"
ENT.waterparticle = "grenade_flash"
ENT.watersound = path .. "grenade_flash_start_outdoor_close.ogg"
ENT.underdecal = "FadingScorch"

ENT.isflashbang = true 

-- fucker for light
if CLIENT then
    function ENT:Initialize()
        self.SpawnTime = CurTime()
    end

    function ENT:Think()
        if self.Defused then return end

        if self.LifeTime > 0 and self.SpawnTime + self.LifeTime < CurTime() and !self.LightPlayed then
            local light = DynamicLight(self:EntIndex())

            if light then
                light.Pos = self:GetPos() + Vector(0, 0, 4)
                light.r = 255
                light.g = 255
                light.b = 255
                light.Brightness = 5
                light.Decay = 2500
                light.Size = 2048*2
                light.DieTime = CurTime() + 0.2
            end
            
            self.LightPlayed = true 

            return
        end
    end
end