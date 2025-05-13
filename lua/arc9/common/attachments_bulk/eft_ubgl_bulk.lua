local ATT = {}

ATT.PrintName = [[GP-25 "Kostyor" 40mm underbarrel grenade launcher]]
ATT.CompactName = [[GP-25]]
ATT.Icon = Material("entities/eft_ak_attachments/gp25real.png", "mips smooth")
ATT.Description = [[An underbarrel grenade launcher for 40mm VOG-25 grenades, designed for installation on all full length AK automatic rifles.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.EFTErgoAdd = -35
ATT.CustomCons = { Ergonomics = "-35" }
ATT.RecoilMult = 0.92
ATT.VisualRecoilMult = 0.92

ATT.ReloadInSightsUBGL = false 

ATT.VisualRecoilUBGL = 0.5
ATT.VisualRecoilDampingConstUBGL = 70
ATT.VisualRecoilSpringMagnitudeUBGL = 2
ATT.VisualRecoilUpUBGL = 60 -- Vertical tilt
ATT.VisualRecoilSideUBGL = 0 -- Horizontal tilt
ATT.VisualRecoilRollUBGL = 0 -- Roll tilt

ATT.Model = "models/weapons/arc9/darsu_eft/mods/gp25.mdl"
-- ATT.ModelBodygroups = "01"
ATT.LHIK = true
ATT.LHIK_Priority = 100

ATT.MuzzleDeviceUBGL = true
ATT.DropMagazineAmountUBGL = 0

local path = "weapons/darsu_eft/ak/"
local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}


ATT.IKAnimationProxy = {
    ["fire_ubgl"] = {
        Source = "fire",
    },
    ["fire_empty_ubgl"] = {
        Source = "fire",
    },
    ["reload_ubgl"] = {
        Source = "reload",
        EventTable = {
            { s = randspin, t = 0.05 },
            { s = path .. "gp34/gp_25_vog_in.ogg", t = 0.4 },
            { s = randspin, t = 1.7 },
        }
    },
    ["enter_ubgl"] = {
        Source = "to_armed"
    },
    ["idle_ubgl"] = {
        Source = "idle_armed"
    },
    ["exit_ubgl"] = {
        Source = "to_idle"
    },
    ["enter_sights_ubgl"] = {
        Source = "idle_armed"
    },
    ["exit_sights_ubgl"] = {
        Source = "idle_armed"
    },
    ["inspect_ubgl"] = {
        Source = "look",
        EventTable = {
            { s = randspin, t = 12/24 },
            { s = randspin, t = 41/24 },
            { s = randspin, t = 62/24 },
        }
    },
    ["inspect_check_ubgl"] = {
        Source = "check",
        EventTable = {
            { s = randspin, t = 0 },
            { s = path .. "gp34/gp_25_vog_out.ogg", t = 0 },
            { s = randspin, t = 21/24 },
            { s = randspin, t = 48/24 },
            { s = path .. "gp34/gp_25_vog_in.ogg", t = 60/24 },
            { s = randspin, t = 93/24 },
        }
    }
} -- When an animation event plays, override it with one based on this LHIK model.
ATT.IKGunMotionQCA = 2

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.IKCameraMotionQCA = 2
ATT.IKCameraMotionQCA_Mult = -0.03
ATT.IKCameraMotionOffsetAngle = Angle(0+0, 90, 90)

ATT.CamCoolViewUBGL = false

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, 0, 0)
end

-- ATT.Category = {"fas_ubgl", "eft_cat_foregrip", "eft_ak_gp34"}
ATT.Category = {"eft_ak_gp34", "eft_ak_gp25"}

-- ATT.AimDownSightsTimeMult = 1.1
-- ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "eft_gp25.compactname"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 111

ATT.SpreadUBGL = 0.02

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_outdoor_close.ogg"
ATT.DistantShootSoundUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_outdoor_distant.ogg"
ATT.ShootSoundIndoorUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_indoor_close.ogg"
ATT.DistantShootSoundIndoorUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_indoor_distant.ogg"
ATT.HasSightsUBGL = true

ATT.TriggerDelayUBGL = false

ATT.EnterUBGLSound = "eft_shared/weapon_generic_rifle_spin2.ogg"
ATT.ExitUBGLSound = "eft_shared/weapon_generic_rifle_spin1.ogg"

ATT.ShootEntUBGL = "arc9_eft_vog25_bang"
ATT.ShootEntForceUBGL = 4000

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ATT.ModelOffset = Vector(-4.5, 0, -0.8)
ATT.ModelAngleOffset = Angle(0, 180, 0)

ATT.AimDownSightsTimeUBGL = 0.4

ATT.Sights = {
    {
        Pos = Vector(2.3, 12, -3.3),
        Ang = Angle(0.29, -2.5+0.35, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(100) end
        end,
    },
    {
        Pos = Vector(2.3, 12, -4.3),
        Ang = Angle(0.3, -5+0.35, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(150) end
        end,
    },
    {
        Pos = Vector(2.375, 12, -6.15),
        Ang = Angle(0.48, -5-4.6+0.3, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(200) end
        end,
    },
    {
        Pos = Vector(2.45, 12, -8.15),
        Ang = Angle(0.7, -5-9.45+0.3, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(250) end
        end,
    },
    {
        Pos = Vector(2.54, 12, -10.1),
        Ang = Angle(0.95, -5-14.1+0.4, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(300) end
        end,
    },
    {
        Pos = Vector(2.61, 12, -12.65),
        Ang = Angle(1.17, -5-19.6+0.35, -2),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(350) end
        end,
    },
    {
        Pos = Vector(2.75, 12-5, -23.7+5),
        Ang = Angle(2.5, -5-37.8+0.3, -4),
        Magnification = 1.1,
        ViewModelFOV = 50,
        UBGLOnly = true,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(400) end
        end,
    },
}

local gp25zeroing = {-5, -6.9, -9.6, -13.45, -14.1, -24.6, -45} -- negro

ATT.ShootAngOffsetHook = function(swep, val) 
    if swep:GetUBGL() and swep:GetInSights() then
        return Angle(-gp25zeroing[swep:GetMultiSight()], 0, 0)
    end
    return Angle(0, 0, 0)
end

ATT.DrawFunc = function(swep, model)
    if swep:GetUBGL() then
        model:SetPoseParameter("zeroing", swep:GetMultiSight()-1)
    end
end

ATT.UBGLExclusiveSightsUBGL = true

ARC9.LoadAttachment(ATT, "eft_gp25")












////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


ATT = {}

ATT.PrintName = "GP-34 underbarrel grenade launcher"
ATT.CompactName = "GP-34"
ATT.Icon = Material("entities/eft_ak_attachments/gp34.png", "mips smooth")
ATT.Description = [[!! AWOOGA!! Do not use it!! Bad, might break gp25 if this one was used before!

!! Was removed from game when GP-25 was added (and UBGL system in tarkov). Was hidden in files since 2016

An underbarrel grenade launcher for 40mm VOG-25 grenades, installed on AK family of assault rifles.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"
ATT.Category = {"eft_ak_gp34"}

ATT.EFTErgoAdd = -35
ATT.CustomCons = { Ergonomics = "-35" }
ATT.RecoilMult = 0.92
ATT.VisualRecoilMult = 0.92

ATT.ReloadInSightsUBGL = false 
ATT.VisualRecoilUBGL = 0.5
ATT.VisualRecoilDampingConstUBGL = 70
ATT.VisualRecoilSpringMagnitudeUBGL = 2
ATT.VisualRecoilUpUBGL = 60 -- Vertical tilt
ATT.VisualRecoilSideUBGL = 0 -- Horizontal tilt
ATT.VisualRecoilRollUBGL = 0 -- Roll tilt

ATT.Model = "models/weapons/arc9/darsu_eft/gp34_lhik.mdl"
ATT.ModelOffset = Vector(-20, -6.2, -57)
ATT.ModelAngleOffset = Angle(0, 180, 0)
ATT.LHIK = true
ATT.LHIK_Priority = 100

ATT.UBGL = true
ATT.UBGLIntegralReload = true -- The UBGL uses reload animations that are baked into the gun.
ATT.DoFireAnimationUBGL = true
ATT.NoShellEjectUBGL = true
ATT.MuzzleEffectQCAUBGL = 1
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "eft_gp34.compactname"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 110

ATT.SpreadUBGL = -0.2
ATT.RecoilUBGL = 0.5

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_outdoor_close.ogg"
ATT.DistantShootSoundUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_outdoor_distant.ogg"
ATT.ShootSoundIndoorUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_indoor_close.ogg"
ATT.DistantShootSoundIndoorUBGL = "weapons/darsu_eft/ak/gp34/gp_25_grenade_fire_indoor_distant.ogg"
ATT.HasSightsUBGL = true

ATT.EnterUBGLSound = "eft_shared/weapon_generic_rifle_spin2.ogg"
ATT.ExitUBGLSound = "eft_shared/weapon_generic_rifle_spin1.ogg"

ATT.ShootEntUBGL = "arc9_eft_vog25_bang"
ATT.ShootEntForceUBGL = 4000

ATT.AimDownSightsTimeUBGL = 0.4
ATT.DropMagazineAmountUBGL = 0

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ARC9.LoadAttachment(ATT, "eft_gp34")










////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


ATT = {}

ATT.PrintName = [[M203 40mm underbarrel grenade launcher]]
ATT.CompactName = [[M203]]
ATT.Icon = Material("entities/eft_ar15_attachments/m203_40mm.png", "mips smooth")
ATT.Description = [[A single-shot 40mm underbarrel grenade launcher, designed for installation on M16 and M4 assault rifles.]]
ATT.Pros = {}
ATT.Cons = {}
ATT.SortOrder = 0

ATT.ExcludeElements = {
    "eft_hg_ar15_m4_lower",
    "eft_hg_ar15_ddrisii1225_lower",
    "eft_hg_ar15_ddrisii95_lower",
    "eft_hg_ar15_ddrisii95_lower_b",
    "eft_hg_ar15_ddfsp",
    "eft_hg_ar15_kacris_lower",
    "eft_hg_ar15_kacurx31_lower",
    "eft_hg_ar15_kacurx38_lower",
    "eft_hg_ar15_viper_lower",
    "eft_hg_ar15_viper_lower_fde",
    "eft_hg_ar15_mk16",
    "eft_hg_ar15_mk1695",
    "eft_hg_ar15_ionlite",
    "eft_hg_ar15_moesl",
    "eft_hg_ar15_moeslmid",
    "eft_hg_ar15_saiqd10",
    "eft_hg_ar15_saiqd",
    "eft_hg_ar15_stm15",
    "eft_hg_ar15_stm12",
    "eft_hg_ar15_stm9",
    "eft_hg_ar15_vypr",
    "eft_hg_ar15_wing",
    "eft_hg_ar15_lvoac_b",
    "eft_hg_ar15_lvoac_f",
    "eft_hg_ar15_lvoac_g",
    "eft_hg_ar15_lvoas_b",
    "eft_hg_ar15_lvoas_f",
    "eft_hg_ar15_lvoas_g",
    "eft_hg_ar15_mk10",
    "eft_hg_ar15_ax15",
    "eft_hg_ar15_adar",
    "eft_hg_ar15_precision",
    "eft_mag_ar15_pmag_60",
}

ATT.EFTErgoAdd = -41
ATT.CustomCons = { Ergonomics = "-41" }
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9

ATT.ReloadInSightsUBGL = false 

ATT.VisualRecoilUBGL = 1
ATT.VisualRecoilDampingConstUBGL = 150
ATT.VisualRecoilSpringMagnitudeUBGL = 0.1
-- ATT.VisualRecoilUpUBGL = 120 -- Vertical tilt -- anyway overidded in gun code
ATT.VisualRecoilSideUBGL = 0 -- Horizontal tilt
ATT.VisualRecoilRollUBGL = 11 -- Roll tilt

ATT.Model = "models/weapons/arc9/darsu_eft/mods/m203.mdl"
-- ATT.ModelBodygroups = "01"
ATT.LHIK = true
ATT.LHIK_Priority = 100

ATT.MuzzleDeviceUBGL = true
ATT.DropMagazineAmountUBGL = 0

local path = "weapons/darsu_eft/m203/"
local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}


ATT.IKAnimationProxy = {
    ["fire_ubgl"] = {
        Source = "fire",
        EventTable = {
            { s = path .. "m203_trigger.ogg", t = 0 },
        }
    },
    ["fire_empty_ubgl"] = {
        Source = "fire",
    },
    ["reload_ubgl"] = {
        Source = "reload",
        EventTable = {
            -- { s = randspin, t = 0.05 },
            { s = path .. "m203_hand_on_tube.ogg", t = 10/24 },
            { s = path .. "fn40gl_tube_button.ogg", t = 12/24 },
            { s = path .. "m203_tube_open_empty.ogg", t = 16/24 },
            { s = path .. "m203_grenade_out_slide.ogg", t = 18/24 },
            { s = path .. "m203_hand_out_tube.ogg", t = 24/24 },

            { s = path .. "m203_grenade_in.ogg", t = 47/24 },
            { s = path .. "m203_hand_on_tube.ogg", t = 68/24 },
            { s = path .. "m203_tube_close_full.ogg", t = 71/24 },
            { s = path .. "m203_hand_out_tube.ogg", t = 76/24 },
            -- { s = randspin, t = 1.7 },
        }
    },
    ["enter_ubgl"] = {
        Source = "to_armed"
    },
    ["idle_ubgl"] = {
        Source = "idle_armed"
    },
    ["exit_ubgl"] = {
        Source = "to_idle"
    },
    ["enter_sights_ubgl"] = {
        Source = "idle_armed"
    },
    ["exit_sights_ubgl"] = {
        Source = "idle_armed"
    },
    ["inspect_ubgl"] = {
        Source = "look",
        EventTable = {
            { s = randspin, t = 12/24 },
            { s = randspin, t = 41/24 },
            { s = randspin, t = 62/24 },
        }
    },
    ["inspect_check_ubgl"] = {
        Source = "check",
        EventTable = {
            { s = path .. "m203_hand_on_tube.ogg", t = 11/24 },
            { s = path .. "fn40gl_tube_button.ogg", t = 13/24 },
            { s = path .. "m203_tube_open_full.ogg", t = 16/24 },
            { s = path .. "m203_hand_out_tube.ogg", t = 25/24 },
            { s = path .. "m203_grenade_out.ogg", t = 33/24 },

            { s = path .. "m203_grenade_in.ogg", t = 75/24 },
            { s = path .. "m203_hand_on_tube.ogg", t = 98/24 },
            { s = path .. "m203_tube_close_full.ogg", t = 101/24 },
            { s = path .. "m203_hand_out_tube.ogg", t = 106/24 },
        }
    }
} -- When an animation event plays, override it with one based on this LHIK model.
ATT.IKGunMotionQCA = 2

ATT.IKGunMotionMult = 0.5
ATT.IKGunMotionAngleMult = 0.5

ATT.IKCameraMotionQCA = 2
ATT.IKCameraMotionQCA_Mult = -0.03
ATT.IKCameraMotionOffsetAngle = Angle(0+2.5, 90, 90)

ATT.CamCoolViewUBGL = false

ATT.ActivePosHook = function(wep, vec)
    return vec + Vector(0, 0, 0)
end

-- ATT.Category = {"fas_ubgl", "eft_cat_foregrip", "eft_ak_gp34"}
-- ATT.Category = {"eft_ak_gp34"}
ATT.Category = {"eft_m4a1_m203"}

-- ATT.AimDownSightsTimeMult = 1.1
-- ATT.SprintToFireTimeMult = 1.1

ATT.UBGL = true
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 0
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "M203"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 111

ATT.SpreadUBGL = 0.02

ATT.FirstShootSoundUBGL = false
ATT.ShootSoundUBGL = path.."m203_fire_outdoor_close.ogg"
ATT.DistantShootSoundUBGL = path.."m203_fire_outdoor_distant.ogg"
ATT.ShootSoundIndoorUBGL = path.."m203_fire_indoor_close.ogg"
ATT.DistantShootSoundIndoorUBGL = path.."m203_fire_indoor_distant.ogg"
ATT.HasSightsUBGL = true

ATT.TriggerDelayUBGL = false

ATT.EnterUBGLSound = path.."m203_hand_out_tube.ogg"
ATT.ExitUBGLSound = path.."m203_hand_on_tube.ogg"

ATT.ShootEntUBGL = "arc9_eft_40mm_m381_bang" -- bla bla
ATT.ShootEntForceUBGL = 4000

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ATT.ModelOffset = Vector(-0.55, 0, 1.5)
ATT.ModelAngleOffset = Angle(0, 180, 0)

-- ATT.AimDownSightsTimeUBGL =
-- please fixx  having gl fucks up regular ironsights on gun
-- ATT.Sights = {
    -- {
    --     Pos = Vector(2.3, 12, -3.3),
    --     Ang = Angle(0.29, -2.5+0.35, -2),
    --     Magnification = 1.1,
    --     ViewModelFOV = 50,
    --     UBGLOnly = true,
    --     CrosshairInSights = false,
    --     IsIronSight = true
    -- },
-- }

-- ATT.UBGLExclusiveSightsUBGL = true

ATT.DrawFunc = function(swep, model) 
    local eles = swep:GetElements()

    local bg = eles["eft_ammo_40x46_m381"] and 1 
    or eles["eft_ammo_40x46_m386"] and 2
    or eles["eft_ammo_40x46_m406"] and 3
    or eles["eft_ammo_40x46_m433"] and 4
    or eles["eft_ammo_40x46_m441"] and 5
    or eles["eft_ammo_40x46_m576"] and 6
    or eles["eft_ammo_40x46_m716"] and 7
    or 0

    model:SetBodygroup(1, bg) 
end

ATT.Attachments = {
    {
        PrintName = "eft_cat_ammo",
        Category = "eft_ammo_40x46",
        Pos = Vector(5, 0, 1),
        Ang = Angle(0, 0, 0),
        Integral = "eft_ammo_40x46_m406",
    },
}

ARC9.LoadAttachment(ATT, "eft_m203")


