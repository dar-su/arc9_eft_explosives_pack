AddCSLuaFile()
ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

if CLIENT then killicon.Add("arc9_eft_grenade_rgd5", "vgui/killicons/arc9_eft_rgd5", Color(255, 255, 255)) end

ENT.PrintName  = "RGD-5 hand grenade"
ENT.Model = "models/weapons/arc9/darsu_eft/w_rgd5.mdl"
ENT.ModelTrue = "models/weapons/arc9/darsu_eft/w_rgd5.mdl"
ENT.SWEP = "arc9_eft_rgd5"
ENT.LifeTime = 3.5

ENT.dmg = 200
ENT.dmgradiusminM = 3 * 2
ENT.dmgradiusmaxM = 7 * 1.5
ENT.shakeradiusM = 15
ENT.contusionLength = 10

ENT.shrapnelcount = 70
ENT.shrapneldmg = 55

ENT.ExplodeOnImpact = false

local path = "weapons/darsu_eft/grenades/"
ENT.BounceSounds = { path .. "grenade_collision_concrete1.ogg", path .. "grenade_collision_concrete2.ogg", path .. "grenade_collision_concrete3.ogg" }

ENT.closeSound = path .. "gren_expl1_close.ogg"
ENT.distantSound = path .. "gren_expl1_far.ogg"
ENT.closeIndoorSound = path .. "gren_expl1_indoor_close.ogg"
ENT.distantIndoorSound = path .. "gren_expl1_indoor_distant.ogg"

ENT.particle = "grenade_final"
ENT.waterparticle = "water_explosion"
ENT.watersound = "weapons/underwater_explode3.wav"
ENT.underdecal = "Scorch"