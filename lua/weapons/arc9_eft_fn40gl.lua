AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_fn40gl")
SWEP.Description = ARC9:GetPhrase("eft_weapon_fn40gl_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_grenadelauncher")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_fnherstal",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_40x46",
    ["eft_trivia_act3"]= "eft_trivia_act_breech",
    ["eft_trivia_country4"] = "eft_trivia_country_belg",
    ["eft_trivia_year5"] = "2004"
}

SWEP.StandardPresets = false 

SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl" -- set to something more valid
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_fn40gl.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-10, 5.5, -6),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-8, 6, -1), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.425, -4, 0.9),
    Ang = Angle(0, 0, 0),
    ViewModelFOV = 60,
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}

SWEP.ActivePos = Vector(-0.5, -2.1, -.45)
SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)
SWEP.CustomizePos = Vector(15, 25, 5)
SWEP.CustomizeSnapshotFOV = 95
-- SWEP.CustomizeRotateAnchor = Vector(21.6, -4.28, -5.23)

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 24.06 * ARC9.MOAToAcc
SWEP.RPM = 666
SWEP.EFTErgo = 51
SWEP.BarrelLength = 35
SWEP.Ammo = "smg1_grenade" -- What ammo type this gun uses.
SWEP.Firemodes = { { Mode = 1 } }

SWEP.Slot = 4

SWEP.ShootEnt = "arc9_eft_40mm_m433_bang"
SWEP.ShootEntForce = 4000
SWEP.ShootEntHook = function(swep, old) return swep:GetValue("ShootEntUBGL") end -- bleh bleh those rounds for ubgl only

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 1.1 -- general multiplier of main recoil

SWEP.RecoilUp   = 5   -- up recoil
SWEP.RecoilSide = 0.1 -- sideways recoil
SWEP.RecoilRandomUp   = 0.65 -- random up/down
SWEP.RecoilRandomSide = 1.5   -- random left/right

SWEP.RecoilAutoControl = 3.75 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1.0 -- general multiplier for it

-- SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 0.5   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.75   --   when fullautoing
-- SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.01   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 0.25 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 2 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.3 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

-- SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 4 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 1.5 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 19, -2)
SWEP.SubtleVisualRecoil = 1.65
SWEP.SubtleVisualRecoilDirection = 0
SWEP.SubtleVisualRecoilSpeed = 0.85

------------------------- |||           Damage            ||| -------------------------
-- default bt gzh
SWEP.DamageMax = 78/1.5
SWEP.DamageMin = 51.5/1.5
SWEP.PhysBulletMuzzleVelocity = 875 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      1 *2.54/100/0.0254
SWEP.PenetrationDelta = 1/100
SWEP.ArmorPiercing =    1/100
SWEP.RicochetChance =   1/100

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.Malfunction = false
SWEP.Overheat = false

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.5
SWEP.MuzzleParticle = "muzzleflash_ak47" -- Used for some muzzle effects.
SWEP.ShellModel = nil
SWEP.ShellCorrectAng = Angle(0, 180, 0)
SWEP.ShellSounds = ARC9EFT.ShellsHeavy

SWEP.NoShellEject = true
SWEP.ShellSmoke = false
SWEP.ShellVelocity = 0.7

-- probably rrrealllyy bad
local aaaaaa = {
    ["eft_ammo_40x46_m381"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m381.mdl",
    ["eft_ammo_40x46_m386"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m386.mdl",
    ["eft_ammo_40x46_m406"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m406.mdl",
    ["eft_ammo_40x46_m441"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m441.mdl",
    ["eft_ammo_40x46_m576"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m576.mdl",
    ["eft_ammo_40x46_m576_nonubgl"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m576.mdl",
    ["eft_ammo_40x46_m716"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m716.mdl",
    ["eft_ammo_40x46_m433"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m433.mdl",
}

SWEP.DropMagazineModelHook = function(swep, old) 
    local elements = swep:GetElements()
    for k, v in pairs(aaaaaa) do
        if elements[k] then return v end 
    end
end

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/fn40/"

SWEP.ShootSound = path .. "fn40gl_fire_close.ogg"
SWEP.ShootSoundIndoor = path .. "fn40gl_fire_indoor_close.ogg"
SWEP.DistantShootSound = path .. "fn40gl_fire_distant.ogg"
SWEP.DistantShootSoundIndoor = path .. "fn40gl_fire_indoor_distant.ogg"

SWEP.DryFireSound = "weapons/darsu_eft/m870/mr133_trigger.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.ShouldDropMag = false  
SWEP.ShouldDropMagEmpty = false  
SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/shells/40x46_m381.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.81
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(90, 180, 90)
SWEP.DropMagazineVelocity = Vector(0, 40, 20)
SWEP.DropMagazineSounds = ARC9EFT.ShellsHeavy

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones  = { -- the bone that represents bullets in gun/mag
    [1] = "patron_in_weapon",
}


SWEP.ReloadHideBonesFirstPerson = true

SWEP.ReloadHideBoneTables = {
    [1] = {
        "shellport",
        "patron_in_weapon",
    },
}

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    local empty = swep:Clip1() == 0

    -- 0 looking
    -- 1 slide checking

    if anim == "reload" then
        if swep.shelldropped then 
            swep.shelldropped = nil
            return "reload_noshell"
        end
        swep.shelldropped = nil
    end

    if anim == "inspect" then
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 2 then swep.EFTInspectnum = 0 rand = 0 end

        -- return anim .. rand .. (empty and "_empty" or "")
        if rand == 1 then
            if empty then
                if swep.shelldropped then 
                    return "check_empty" 
                else
                    swep.shelldropped = true
                    return "check_shell"
                end
            end

            return "check_real"
        end

        return "look"
    end
end


local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

SWEP.Animations = {
    ["idle"] = { Source = "idle" },
    ["draw"] = { Source = "draw", EventTable = { { s = "arc9_eft_shared/weap_in.ogg", t = 0 }, } },
    ["ready"] = { Source = "draw", EventTable = { { s = "arc9_eft_shared/weap_in.ogg", t = 0 }, } },
    ["holster"] = { Source = "holster", EventTable = { { s = "arc9_eft_shared/weap_out.ogg", t = 0 }, } },

    ["fire"] = { Source = "fire", EventTable = { { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 }, } },

    ["reload"] = {
        Source = "reload", 
        MinProgress = 0.95,
        FireASAP = true,
        MagSwapTime = 1.3,
        DropMagAt = 0.81,
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = path .. "fn40gl_tube_button.ogg", t = 0.32 },
            { s = path .. "fn40gl_tube_open.ogg", t = 0.34 - 0.1 },
            { s = pouchout, t = 1.27 },
            { s = path .. "fn40gl_grenade_insert.ogg", t = 1.59 },
            { s = path .. "fn40gl_tube_close.ogg", t = 2.27 - 0.1 },

            {hide = 0, t = 0},
            {hide = 1, t = 0.81},
            {hide = 0, t = 1.3}
        }
    },

    ["reload_noshell"] = {
        Source = "reload", 
        MinProgress = 0.95,
        FireASAP = true,
        MagSwapTime = 1.3,
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = path .. "fn40gl_tube_button.ogg", t = 0.32 },
            { s = path .. "fn40gl_tube_open.ogg", t = 0.34 - 0.1 },
            { s = pouchout, t = 1.27 },
            { s = path .. "fn40gl_grenade_insert.ogg", t = 1.59 },
            { s = path .. "fn40gl_tube_close.ogg", t = 2.27 - 0.1 },

            {hide = 0, t = 0},
            {hide = 1, t = 0.01},
            {hide = 0, t = 1.3}
        }
    },

    ["toggle"] = { Source = "mod_switch", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },
    ["toggle_empty"] = { Source = "mod_switch_empty", EventTable = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } } },

    ["inspect"] = { Source = "idle" },    -- shutup arc9

    ["check_shell"] = { Source = "check_shell", EventTable = {
        { s = randspin, t = 0.12 },
        { s = path .. "fn40gl_tube_button.ogg", t = 0.37 },
        { s = path .. "fn40gl_tube_open.ogg", t = 0.48 - 0.1 },
        { s = path .. "fn40gl_grenade_remove.ogg", t = 1.09 },
        { s = randspin, t = 1.45 },
        { s = randspin, t = 1.77 },
        { s = randspin, t = 2.23 },
        { s = path .. "fn40gl_tube_close.ogg", t = 2.81 - 0.1 },

        {hide = 0, t = 0},
        {hide = 1, t = 2.4},
        {hide = 0, t = 3.3}
    },
    DropMagAt = 2.4
    },

    ["check_empty"] = { Source = "check_empty", EventTable = {
        { s = randspin, t = 0.14 },
        { s = path .. "fn40gl_tube_button.ogg", t = 0.34 },
        { s = path .. "fn40gl_tube_open.ogg", t = 0.5 - 0.1 },
        { s = path .. "fn40gl_tube_close.ogg", t = 1.78 - 0.1 },
        { s = randspin, t = 2.13 },

        {hide = 0, t = 0},
        {hide = 1, t = 0.01},
        {hide = 0, t = 2.46}
    } },

    ["check_real"] = { Source = "check_real", EventTable = {
        { s = randspin, t = 0.12 },
        { s = path .. "fn40gl_tube_button.ogg", t = 0.39 },
        { s = path .. "fn40gl_tube_open.ogg", t = 0.91 - 0.1 },
        { s = path .. "fn40gl_grenade_remove.ogg", t = 1.1 },
        { s = randspin, t = 1.5 },
        { s = randspin, t = 2.28 },
        { s = path .. "fn40gl_grenade_insert.ogg", t = 2.57 },
        { s = path .. "fn40gl_tube_close.ogg", t = 3.23 - 0.1 },
        { s = randspin, t = 3.66 },
    } },

    ["look"] = { Source = "look", EventTable = {
        { s = randspin, t = 0.18 },
        { s = randspin, t = 1.47 },
        { s = randspin, t = 2.78 },
    } },
}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasGrip", "HasGranataAmmo" }

SWEP.AttachmentElements = {
    ["eft_ammo_40x46_m381"]    = { Bodygroups = { {1, 1} } },
    ["eft_ammo_40x46_m386"]    = { Bodygroups = { {1, 2} } },
    ["eft_ammo_40x46_m406"]    = { Bodygroups = { {1, 3} } },
    ["eft_ammo_40x46_m441"]    = { Bodygroups = { {1, 4} } },
    ["eft_ammo_40x46_m576"]    = { Bodygroups = { {1, 5} } },
    ["eft_ammo_40x46_m576_nonubgl"]    = { Bodygroups = { {1, 5} } },
    ["eft_ammo_40x46_m716"]    = { Bodygroups = { {1, 6} } },
    ["eft_ammo_40x46_m433"]    = { Bodygroups = { {1, 7} } },
}

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = {"eft_ammo_40x46", "eft_ammo_40x46_nonubgl"},
        RejectAttachments = { ["eft_ammo_40x46_m576"] = true },
        Bone = "patron_in_weapon",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Integral = "eft_ammo_40x46_m406",
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_rearsight"),
        Bone = "weapon",
        Category = "eft_rearsight",
        Pos = Vector(0, 9.6, 1.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Bone = "mod_scope",
        Category = "eft_m2a1",
        ExcludeElements = {"IronsBlockingSight"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_frontsight"),
        Bone = "weapon",
        Category = "eft_frontsight",
        Pos = Vector(0, 21.9, 1.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_u"),
        Category = {"eft_tactical_top"},
        Bone = "mod_tactical_000",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_r"),
        Category = {"eft_tactical", "eft_tactical_top"},
        -- RejectAttachments = { ["eft_tactical_raptar"] = true },
        Bone = "mod_tactical_002",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_l"),
        Category = {"eft_tactical", "eft_tactical_top"},
        -- RejectAttachments = { ["eft_tactical_raptar"] = true },
        Bone = "mod_tactical_001",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_pgrip"),
        Category = {"eft_ar15_pgrip"},
        Installed = "eft_ar_pgrip_diecsfde",
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_fn40gl"},
        Bone = "weapon",
        Pos = Vector(0, 8, -2),
        Ang = Angle(0, 0, 0),
        -- CosmeticOnly = true,
    },
}