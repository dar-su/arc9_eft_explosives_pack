AddCSLuaFile()
ENT.Type 				= "anim"
ENT.Base 				= "arc9_eft_grenade_base"
ENT.Spawnable 			= false

if CLIENT then killicon.Add("arc9_eft_grenade_vog17", "vgui/killicons/arc9_eft_vog17", Color(255, 255, 255)) end

ENT.PrintName  = "VOG-17 Khattabka"
ENT.Model = "models/weapons/arc9/darsu_eft/w_vog17.mdl"
ENT.ModelTrue = "models/weapons/arc9/darsu_eft/w_vog17.mdl"
ENT.SWEP = "arc9_eft_vog17"
ENT.LifeTime = 3

ENT.dmg = 150
ENT.dmgradiusminM = 2 * 2
ENT.dmgradiusmaxM = 6 * 1.5
ENT.shakeradiusM = 11
ENT.contusionLength = 10

ENT.shrapnelcount = 100
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