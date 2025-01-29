SWEP.Base = "arc9_eft_grenade_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_rgo") or "RGO"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_grenade") or "Hand grenade"
SWEP.Description = [[RGO (Ruchnaya Granata Oboronitel'naya - "Defensive Hand Grenade") is a defensive anti-personnel fragmentation hand grenade of impact action.]]

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_rgn_rgo_2.mdl"
SWEP.DefaultBodygroups = "10000000000000"
SWEP.WorldModel = "models/weapons/arc9/darsu_eft/w_rgo_unthrowed.mdl"

SWEP.ShootEnt = "arc9_eft_grenade_rgo"
SWEP.Ammo = "grenade"

SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/rgo_skoba.mdl"

SWEP.ReloadHideBoneTables = {
    [1] = {
        "weapon_grenade_rgn",
        "weapon_grenade_skoba_rgn",
        "weapon_ring_rgn",
        "weapon_pin_rgn",
        "weapon_pin_r_rgn",
        "weapon_pin_l_rgn",
    },    
    [2] = {
        "weapon_ring_rgn",
        "weapon_pin_rgn",
        "weapon_pin_r_rgn",
        "weapon_pin_l_rgn",
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

    ["idle_mine"] = {
        Source = "mine_idle",
    },
    ["draw_mine"] = {
        Source = "mine_draw",
        EventTable = {
            { s = path .. "rgd_draw.ogg", t = 0 },
            { s = path .. "rgd_safety.ogg", t = 24/24 },
            { hide = 0, t = 0 },
        },
    },
    ["holster_mine"] = {
        Source = "mine_holster",
        EventTable = {
            { s = path .. "rgd_holster.ogg", t = 0 },
        },
    },
    ["inspect_mine"] = {
        Source = "mine_look",
    },
    ["fire_mine"] = {
        Source = "mine_fire",
        EventTable = {
            { s = path .. "tripwire_grenade_planting.ogg", t = 0.1 },
        },
    },
    ["firemode_1"] = {
        Source = "idle_to_mine",
        EventTable = {
            { s = path .. "rgd_draw.ogg", t = 0.2 },
            { s = path .. "tripwire_grenade_planting.ogg", t = 1.4 },
            { s = path .. "tripwire_grenade_planting_wire.ogg", t = 1.9 },
        },
    },
    ["firemode_2"] = {
        Source = "mine_to_idle",
        EventTable = {
            { s = path .. "tripwire_grenade_unplanting_wire.ogg", t = 0.4 },
            { s = path .. "tripwire_grenade_unplanting.ogg", t = 2.1 },
        },
    },
}

SWEP.Attachments = {
    {
        PrintName = "Equipment",
        Category = "eft_tripwire",
        Bone = "weapon_grenade_rgn",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}