SWEP.Base = "arc9_eft_grenade_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_rgd5") or "RGD-5"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_grenade") or "Hand grenade"
SWEP.Description = [[RGD-5 (GAU index - 57-G-717) is an antipersonnel fragmentation time-delayed offensive hand grenade. The grenade's UZRGM fuze insures a time delay of 3.2 - 4.2 seconds. Due to the offensive type of the grenade, its fragments are relatively light and have a smaller dispersion radius.]]

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_rgd5_2.mdl"
SWEP.WorldModel = "models/weapons/arc9/darsu_eft/w_rgd5_unthrowed.mdl"

SWEP.ShootEnt = "arc9_eft_grenade_rgd5"
SWEP.Ammo = "grenade"

SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/rgd5_skoba.mdl"

SWEP.ReloadHideBoneTables = {
    [1] = {
        "weapon_rgd5",
        "weapon_skoba_rgd5",
        "weapon_ring_rgd5",
        "weapon_pin_rgd5",
        "weapon_pin_r_rgd5",
        "weapon_pin_l_rgd5",
    },    
    [2] = {
        "weapon_ring_rgd5",
        "weapon_pin_rgd5",
        "weapon_pin_r_rgd5",
        "weapon_pin_l_rgd5",
    },
}

local path = "weapons/darsu_eft/grenades/"

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
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
        Source = {"look", "look1"},
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
            { s = { path .. "gren_fuze1.ogg", path .. "gren_fuze2.ogg", path .. "gren_fuze3.ogg" }, t = 0.15 },
            -- { s = path .. "rgd_lever.ogg", t = 15/24 },
            {hide = 1, t = 0},
        },
        EjectAt = 0.15,
        MinProgress = 0.47
        -- MinProgress = 0.4
    },
    ["toss"] = {
        Source = "fire2",
        EventTable = {
            { s = path .. "rgd_throw.ogg", t = 0 },
            { s = { path .. "gren_fuze1.ogg", path .. "gren_fuze2.ogg", path .. "gren_fuze3.ogg" }, t = 0.15 },
            -- { s = path .. "rgd_lever.ogg", t = 15/24 },
            {hide = 1, t = 0},
        },
        EjectAt = 0.15,
        MinProgress = 0.37
    },
    -- ["quicknade"] = {
    --     Source = "fire_quick",
	-- 	Mult = 1.0,
    --     EventTable = {
    --         { s = path .. "rgd_draw.ogg", t = 0 },
    --         { s = path .. "rgd_pin.ogg", t = 0.2 },
    --         { s = path .. "rgd_throw.ogg", t = 0.5 },
    --         { s = { path .. "gren_fuze1.ogg", path .. "gren_fuze2.ogg", path .. "gren_fuze3.ogg" }, t = 0.55 },
    --         -- { s = path .. "rgd_lever.ogg", t = 15/24 },
    --         {hide = 1, t = 0},
    --     },
    --     EjectAt = 0.4,
    --     FireASAP = 0.98,
    --     MinProgress = 0.7
    -- },
}