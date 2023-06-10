-- SWEP.CustomSelectIcon = Material("vgui/hud/arc9_go_nade_frag")

SWEP.Base = "arc9_eft_grenade_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")
SWEP.SubCategory = "_Not for your eyes"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.PrintName = "M18"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smoke") or "Smoke grenade"
SWEP.Description = [[The M18 smoke grenade made in the USA. Used in the US Army since the Second World War. The smoke is green-colored.]]

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_m18.mdl"
SWEP.WorldModel = "models/weapons/w_eq_fraggrenade.mdl"

SWEP.ShootEnt = "arc9_eft_grenade_m18"
SWEP.Ammo = "grenade"

SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/m18_skoba.mdl"

SWEP.ReloadHideBoneTables = {
    [1] = {
        "weapon",
        "weapon_skoba",
        "weapon_ring",
        "weapon_pin",
        "weapon_pin_r",
        "weapon_pin_l",
    },    
    [2] = {
        "weapon_ring",
        "weapon_pin",
        "weapon_pin_r",
        "weapon_pin_l",
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