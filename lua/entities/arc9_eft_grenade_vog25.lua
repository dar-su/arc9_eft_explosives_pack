AddCSLuaFile()
ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

if CLIENT then killicon.Add("arc9_eft_grenade_vog25", "vgui/killicons/arc9_eft_vog25", Color(255, 255, 255)) end

ENT.PrintName  = "VOG-25 Khattabka"
ENT.Model = "models/weapons/arc9/darsu_eft/w_vog25.mdl"
ENT.LifeTime = 2

ENT.dmg = 150
ENT.dmgradiusminM = 2 * 2
ENT.dmgradiusmaxM = 7 * 1.5
ENT.shakeradiusM = 8
ENT.contusionLength = 10

ENT.shrapnelcount = 35
ENT.shrapneldmg = 40

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