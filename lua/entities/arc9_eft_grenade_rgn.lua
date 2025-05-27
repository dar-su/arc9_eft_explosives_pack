AddCSLuaFile()
ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

if CLIENT then killicon.Add("arc9_eft_grenade_rgn", "vgui/killicons/arc9_eft_rgn", Color(255, 255, 255)) end

ENT.PrintName  = "RGN hand grenade"
ENT.Model = "models/weapons/arc9/darsu_eft/w_rgn.mdl"
ENT.ModelTrue = "models/weapons/arc9/darsu_eft/w_rgn.mdl"
ENT.SWEP = "arc9_eft_rgn"
-- ENT.LifeTime = 0.3
ENT.LifeTime = 3.5

ENT.dmg = 100
ENT.dmgradiusminM = 2 * 2
ENT.dmgradiusmaxM = 5 * 1.5
ENT.shakeradiusM = 15
ENT.contusionLength = 10

ENT.shrapnelcount = 75
ENT.shrapneldmg = 55

ENT.ExplodeOnImpact = true
ENT.ExplodeOnImpactDelay = 0.15

local path = "weapons/darsu_eft/grenades/"
ENT.BounceSounds = { path .. "grenade_collision_concrete1.ogg", path .. "grenade_collision_concrete2.ogg", path .. "grenade_collision_concrete3.ogg" }

ENT.closeSound = path .. "rgo_rgn_explosion_close.ogg"
ENT.distantSound = path .. "rgo_rgn_explosion_distant.ogg"
ENT.closeIndoorSound = path .. "rgo_rgn_explosion_indoor_close.ogg"
ENT.distantIndoorSound = path .. "rgo_rgn_explosion_indoor_distant.ogg"

ENT.particle = "grenade_thick_smoke"
ENT.waterparticle = "water_explosion"
ENT.watersound = "weapons/underwater_explode3.wav"
ENT.underdecal = "FadingScorch"