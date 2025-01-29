AddCSLuaFile()
ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

if CLIENT then killicon.Add("arc9_eft_grenade_v40", "vgui/killicons/arc9_eft_v40", Color(255, 255, 255)) end

ENT.PrintName  = "VOG-17 Khattabka"
ENT.Model = "models/weapons/arc9/darsu_eft/w_v40.mdl"
ENT.ModelTrue = "models/weapons/arc9/darsu_eft/w_v40.mdl"
ENT.SWEP = "arc9_eft_v40"
ENT.LifeTime = 2.5

ENT.dmg = 20 * 2
ENT.dmgradiusminM = 1 * 2
ENT.dmgradiusmaxM = 5 * 1.5
ENT.shakeradiusM = 7
ENT.contusionLength = 10

ENT.shrapnelcount = 25
ENT.shrapneldmg = 25

ENT.ExplodeOnImpact = false

local path = "weapons/darsu_eft/grenades/"
ENT.BounceSounds = { path .. "grenade_collision_concrete1.ogg", path .. "grenade_collision_concrete2.ogg", path .. "grenade_collision_concrete3.ogg" }

ENT.closeSound = path .. "v40_explosion2_close.ogg"
ENT.distantSound = path .. "v40_explosion4_far.ogg"
ENT.closeIndoorSound = path .. "v40_explosion4_indoor_close.ogg"
ENT.distantIndoorSound = path .. "v40_explosion1_indoor_distant.ogg"

ENT.particle = "muzzleflash_M82"
ENT.waterparticle = "water_explosion"
ENT.watersound = "weapons/underwater_explode3.wav"
ENT.underdecal = "Scorch"