AddCSLuaFile()
ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

if CLIENT then killicon.Add("arc9_eft_grenade_m67", "vgui/killicons/arc9_eft_m67", Color(255, 255, 255)) end

ENT.PrintName  = "M67 hand grenade"
ENT.Model = "models/weapons/arc9/darsu_eft/w_m67.mdl"
ENT.ModelTrue = "models/weapons/arc9/darsu_eft/w_m67.mdl"
ENT.SWEP = "arc9_eft_m67"
ENT.LifeTime = 5

ENT.dmg = 300
ENT.dmgradiusminM = 4 * 2
ENT.dmgradiusmaxM = 8 * 1.5
ENT.shakeradiusM = 16.5
ENT.contusionLength = 10

ENT.shrapnelcount = 75
ENT.shrapneldmg = 45

ENT.ExplodeOnImpact = false

local path = "weapons/darsu_eft/grenades/"
ENT.BounceSounds = { path .. "grenade_collision_concrete1.ogg", path .. "grenade_collision_concrete2.ogg", path .. "grenade_collision_concrete3.ogg" }

ENT.closeSound = path .. "gren_expl3_close.ogg"
ENT.distantSound = path .. "gren_expl3_dist2.ogg"
ENT.closeIndoorSound = path .. "gren_expl3_indoor_close.ogg"
ENT.distantIndoorSound = path .. "gren_expl3_indoor_distant.ogg"

ENT.particle = "explosion_grenade"
ENT.waterparticle = "water_explosion"
ENT.watersound = "weapons/underwater_explode3.wav"
ENT.underdecal = "Scorch"