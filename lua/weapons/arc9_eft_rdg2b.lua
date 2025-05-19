SWEP.Base = "arc9_eft_grenade_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_rdg2b")
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smoke")
SWEP.Description = ARC9:GetPhrase("eft_weapon_rgd2b_desc")

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_rdg2.mdl"
SWEP.WorldModel = "models/weapons/arc9/darsu_eft/w_rdg2_unthrowed.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-8, 3, -11),
    Ang = Angle(20, -10, 195),

    TPIKPos = Vector(10, -1, 0),
    TPIKAng = Angle(0, 90, 90),
    Scale = 1,
}
SWEP.ShootEnt = "arc9_eft_grenade_rdg2b"
SWEP.Ammo = "grenade"

SWEP.ShellModel = nil

SWEP.ReloadHideBoneTables = {
    [1] = {
        "weapon",
        "weapon_cap_top_paper",
        "weapon_cap_top",
    },
    [2] = {
        "weapon_cap_top_paper",
        "weapon_cap_top",
    },
}

local path = "weapons/darsu_eft/grenades/"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RELOAD_MAGIC

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        RareSource = "tooidle",
        RareSourceChance = 0.005
    },
    -- ["idle_primed"] = {
    --     Source = "fire_idle",
    --     EventTable = {
    --         {hide = 2, t = 0},
    --     },
    -- },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = path .. "grenade_smoke_russian_disarm1.ogg", t = 0 },
            { hide = 1, t = 0 },
            { hide = 0, t = 0.5 },
        },
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s = path .. "grenade_smoke_russian_disarm2.ogg", t = 0 },
        },
    },
    -- ["holster_primed"] = {
    --     Source = "fire_abort",
    --     EventTable = {
    --         { s = path .. "rgd_safety.ogg", t = 0.5 },
    --         { s = path .. "rgd_holster.ogg", t = 1 },
    --         {hide = 2, t = 0},
    --         {hide = 0, t = 0.3},
    --     },
    -- },
    ["inspect"] = {
        Source = "look",
        EventTable = {
            { s = path .. "grenade_smoke_russian_disarm2.ogg", t = 0.1 },
        },
    },
    -- ["pullpin"] = {
    --     Source = "fire_start",
    --     -- MinProgress = 0.666,
    --     FireASAP = true,
    --     EventTable = {
    --         { s = path .. "rgd_pin.ogg", t = 12/24 },
    --         {hide = 0, t = 0},
    --         {hide = 2, t = 1},
    --     },
    -- },
    ["throw"] = {
        Source = "fire1",
		-- Mult = 1.2,
        EventTable = {
            { s = path .. "grenade_smoke_russian_firsttorn.ogg", t = 11/24 },
            { s = path .. "grenade_smoke_russian_secondtorn.ogg", t = 27/24 },
            { s = path .. "grenade_smoke_russian_ignition.ogg", t = 41/24 },
            { s = path .. "grenade_smoke_russian_throw.ogg", t = 58/24 },
            {hide = 2, t = 40/24},
            {hide = 1, t = 2.4},
        },
        -- EjectAt = 0.05,
        MinProgress = 0.8
        -- MinProgress = 0.4
    },
    ["toss"] = {
        Source = "fire2",
        EventTable = {
            { s = path .. "grenade_smoke_russian_firsttorn.ogg", t = 11/24 },
            { s = path .. "grenade_smoke_russian_secondtorn.ogg", t = 27/24 },
            { s = path .. "grenade_smoke_russian_ignition.ogg", t = 41/24 },
            { s = path .. "grenade_smoke_russian_throw.ogg", t = 58/24 },
            {hide = 2, t = 40/24},
            {hide = 1, t = 2.4},
        },
        -- EjectAt = 0.05,
        MinProgress = 0.8
    },

    ["quicknade"] = {
        Source = "fire_quick",
		Mult = 1.0,
        EventTable = {
            { s = path .. "grenade_smoke_russian_disarm1.ogg", t = 0 },
            { s = path .. "grenade_smoke_russian_firsttorn.ogg", t = 11/24 },
            { s = path .. "grenade_smoke_russian_secondtorn.ogg", t = 27/24 },
            { s = path .. "grenade_smoke_russian_ignition.ogg", t = 41/24 },
            { s = path .. "grenade_smoke_russian_throw.ogg", t = 58/24 },
            {hide = 2, t = 40/24},
            {hide = 1, t = 2.4},
        },
        EjectAt = 0.4,
        FireASAP = 0.98,
        MinProgress = 0.7
    },
}

SWEP.EFT_Tripwireable = false