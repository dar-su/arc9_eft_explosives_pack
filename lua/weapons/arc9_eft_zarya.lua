SWEP.Base = "arc9_eft_grenade_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_zarya") or "Zarya"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_stun") or "Stun grenade"
SWEP.Description = [[Intended to suppress the mental stability by creating a sudden sound effect and a bright flash. Used in special operations for apprehension of criminals and in riot suppression.]]

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_zarya.mdl"
SWEP.WorldModel = "models/weapons/w_eq_fraggrenade.mdl"

SWEP.ShootEnt = "arc9_eft_grenade_zarya"
SWEP.Ammo = "grenade"

SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/zarya_skoba.mdl"

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