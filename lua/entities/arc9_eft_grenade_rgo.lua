AddCSLuaFile()
ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

if CLIENT then killicon.Add("arc9_eft_grenade_rgo", "vgui/killicons/arc9_eft_rgo", Color(255, 255, 255)) end


ENT.PrintName  = "RGN hand grenade"
ENT.Model = "models/weapons/arc9/darsu_eft/w_rgn.mdl"
-- ENT.LifeTime = 0.3
ENT.LifeTime = 3.5

ENT.dmg = 125
ENT.dmgradiusminM = 2 * 2
ENT.dmgradiusmaxM = 7 * 1.5
ENT.shakeradiusM = 13.5
ENT.contusionLength = 10

ENT.shrapnelcount = 85
ENT.shrapneldmg = 40

ENT.ExplodeOnImpact = true

local path = "weapons/darsu_eft/grenades/"
ENT.BounceSounds = { path .. "grenade_collision_concrete1.ogg", path .. "grenade_collision_concrete2.ogg", path .. "grenade_collision_concrete3.ogg" }

ENT.closeSound = path .. "rgo_rgn_explosion_close2.ogg"
ENT.distantSound = path .. "rgo_rgn_explosion_distant.ogg"
ENT.closeIndoorSound = path .. "rgo_rgn_explosion_indoor_close2.ogg"
ENT.distantIndoorSound = path .. "rgo_rgn_explosion_indoor_distant.ogg"

ENT.particle = "grenade_thick_smoke"
ENT.waterparticle = "water_explosion"
ENT.watersound = "weapons/underwater_explode3.wav"
ENT.underdecal = "FadingScorch"