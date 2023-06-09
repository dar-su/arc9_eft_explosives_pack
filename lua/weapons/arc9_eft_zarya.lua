-- SWEP.CustomSelectIcon = Material("vgui/hud/arc9_go_nade_frag")

SWEP.Base = "arc9_base_nade"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")
SWEP.SubCategory = "_Not for your eyes"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = true
SWEP.NotForNPCs = true

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_zarya") or "Zarya"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_stun") or "Stun grenade"
SWEP.Description = [[Intended to suppress the mental stability by creating a sudden sound effect and a bright flash. Used in special operations for apprehension of criminals and in riot suppression.]]
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}
SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "Throw"
    },
}

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_zarya.mdl"
SWEP.WorldModel = "models/weapons/w_eq_fraggrenade.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true

SWEP.TPIKforcelefthand = true
SWEP.TPIKParentToSpine4 = true  
SWEP.WorldModelOffset = {
    Pos = Vector(-6, 3, -11),
    Ang = Angle(20, -10, 195),
    -- TPIKPos = Vector(-3, 2, -24), -- slam
    -- TPIKAng = Angle(20, 0, 210),

    TPIKPos = Vector(10, -5, 0),
    TPIKAng = Angle(0, 90, 90),
    Scale = 1,
}

SWEP.BottomlessClip = true
SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 0 -- Amount of reserve UBGL magazines you can take.
SWEP.Crosshair = false 

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "arc9_eft_grenade_zarya"
SWEP.Ammo = "grenade"

SWEP.CaseEffectQCA = 1
SWEP.ShellSmoke  = false
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/zarya_skoba.mdl"
SWEP.ShellScale = 1
SWEP.ShellPitch = 100
SWEP.ShellSounds = {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""} -- fuck you gmod
SWEP.CamQCA = 2
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.5

SWEP.Throwable = true -- Set to true to give this weapon throwing capabilities.
SWEP.Tossable = true -- When grenade is enabled, right click will toss. Set to false to disable, allowing you to aim down sights.
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = -1 -- Length of time that the grenade will take to explode in your hands. -1 = Won't explode.

SWEP.ThrowForceMin = 900 -- Minimum force that the grenade will be thrown with.
SWEP.ThrowForceMax = 1200 -- Maximum force that the grenade will be thrown with.
SWEP.TossForce = 500 -- Force that the grenade will be thrown with when right clicked.

SWEP.ThrowChargeTime = 0 -- How long it takes to charge the grenade to its maximum throw force.

SWEP.ThrowTumble = true -- Grenade tumbles when thrown.
SWEP.Disposable = true 

-------------------------- HANDLING
SWEP.SprintToFireTime = 0.2 -- How long it takes to go from sprinting to being able to fire.
-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.ActivePos = Vector(-0.7, -4.1, -0.1)
-- SWEP.ActivePos = Vector(-0.7, 2.1, -0.27)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(0, -40, -30)
SWEP.SprintPos = Vector(-11.7, -2, -2)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(87, -25, -94.3)
SWEP.CustomizePos = Vector(-7.3, 21, 11)
SWEP.CustomizeSnapshotFOV = 65
SWEP.CustomizeRotateAnchor = Vector(19, -4.28, -5.23)

-------------------------- HoldTypes

SWEP.HoldType = "slam"
SWEP.HoldTypeSprint = "slam"
SWEP.HoldTypeHolstered = "slam"
SWEP.HoldTypeSights = "slam"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = false

SWEP.ReloadHideBonesFirstPerson = true

SWEP.ShootPosOffset = Vector(2, 2, -2)

SWEP.ReloadHideBoneTables = {
    [1] = {
        "weapon",
        "skoba",
        "ring",
        "pin",
        "pin_r",
        "pin_l",
    },    
    [2] = {
        "ring",
        "pin",
        "pin_r",
        "pin_l",
    },
}

local path = "weapons/darsu_eft/grenades/"

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        RareSource = "tooidle",
        RareSourceChance = 0.0005
    },
    ["idle_primed"] = {
        Source = "fire_idle",
        EventTable = {
            {hide = 2, t = 0},
        },
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = path .. "rgd_draw.ogg", t = 0 },
            { s = path .. "rgd_safety.ogg", t = 24/24 },
            { hide = 0, t = 0 },
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s = path .. "rgd_holster.ogg", t = 0 },
        },
    },
    ["holster_primed"] = {
        Source = "fire_abort",
        EventTable = {
            { s = path .. "rgd_safety.ogg", t = 0.5 },
            { s = path .. "rgd_holster.ogg", t = 1 },
            {hide = 2, t = 0},
            {hide = 0, t = 0.3},
        },
    },
    ["inspect"] = {
        Source = "look",
    },
    ["pullpin"] = {
        Source = "fire_start",
        -- MinProgress = 0.666,
        FireASAP = true,
        EventTable = {
            { s = path .. "rgd_pin.ogg", t = 12/24 },
            {hide = 0, t = 0},
            {hide = 2, t = 1},
        },
    },
    ["throw"] = {
        Source = "fire1",
		-- Mult = 1.2,
        EventTable = {
            { s = path .. "rgd_throw.ogg", t = 0 },
            { s = { path .. "gren_fuze1.ogg", path .. "gren_fuze2.ogg", path .. "gren_fuze3.ogg" }, t = 0.05 },
            -- { s = path .. "rgd_lever.ogg", t = 15/24 },
            {hide = 1, t = 0},
        },
        EjectAt = 0.05,
        MinProgress = 0.22
        -- MinProgress = 0.4
    },
    ["toss"] = {
        Source = "fire2",
        EventTable = {
            { s = path .. "rgd_throw.ogg", t = 0 },
            { s = { path .. "gren_fuze1.ogg", path .. "gren_fuze2.ogg", path .. "gren_fuze3.ogg" }, t = 0.05 },
            -- { s = path .. "rgd_lever.ogg", t = 15/24 },
            {hide = 1, t = 0},
        },
        EjectAt = 0.05,
        MinProgress = 0.32
    },
}