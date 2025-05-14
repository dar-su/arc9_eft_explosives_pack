local ATT = {}

///////////////////////////////////////      eft_m32a1_mag_std


ATT = {}

ATT.PrintName = "M32A1 40mm cylinder"
ATT.CompactName = "M32A1 cyl."
ATT.Icon = Material("entities/eft_m32_attachments/cyl.png", "mips smooth")
ATT.Description = [[A standard-issue cylinder for the M32A1 MSGL revolver grenade launcher.]]

ATT.EFTErgoAdd = -10
ATT.CustomCons = { Ergonomics = "-10" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.ClipSize = 6

ATT.HasMag = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m32a1_mag"}

ARC9.LoadAttachment(ATT, "eft_m32a1_mag_std")


///////////////////////////////////////      eft_m32a1_black


ATT = {}

ATT.PrintName = "Black skin"
ATT.CompactName = "Black"
ATT.Icon = Material("entities/eft_m32_attachments/black.png", "mips smooth")
ATT.Description = [[Black color instead of FDE M32 parts.

Not presents in EFT, custom att.]]

ATT.SubMaterial2 = "models/weapons/arc9/darsu_eft/m32/weapon_milkor_m32a1_msgl_40x46_back_BLK"
ATT.SubMaterial0 = "models/weapons/arc9/darsu_eft/m32/weapon_milkor_m32a1_msgl_40x46_front_BLK"
ATT.SubMaterial1 = "models/weapons/arc9/darsu_eft/m32/mag_msgl_milkor_cylinder_mag_std_40x46_6_front_BLK"

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Max = 1

ATT.Category = {"eft_custom_slot_m32a1"}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_slot_m32a1", "eft_custom_slot_revolver"},
    },
}

ARC9.LoadAttachment(ATT, "eft_m32a1_black")


///////////////////////////////////////      eft_optic_m2a1

ATT = {}

ATT.PrintName = "Milkor M2A1 grenade launcher reflex sight (With zeroing, without attachments slots)"
ATT.CompactName = "M2A1"
ATT.Icon = Material("entities/m2a1/m2z.png", "mips smooth")
ATT.Description = [[The M2A1 sight was designed to compensate for the natural drift of the 40mm grenade. The built-in light sensor dims the reticle during daylight hours and allows for a brighter reticle during night time operations. The M2A1 reflex sight enhances the overall capabilities and usage of the MUSA MSGLs.

Splitted into two scopes because of technical issue: it is impossible to make additional attachments slots to follow rotation of bone on scope model on ARC9 base.]]
ATT.SortOrder = 1


ATT.Model = "models/weapons/arc9/darsu_eft/mods/sight_m2a1.mdl"

ATT.Category = {"eft_m2a1"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -6
ATT.CustomCons = { Ergonomics = "-6" }

ATT.FoldSights = true

ATT.HoloSight = true
ATT.HoloSightReticle = Material("entities/m2a1/scope_all_milkor_m2a1_reflex_sight_mark.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$flags", bit.bor(ATT.HoloSightReticle:GetInt("$flags"), 128)) -- additive
-- ATT.HoloSightReticle:SetVector("$color2", Vector(1, 1, 1)) -- bright color
ATT.HoloSightSize = 465
ATT.HoloSightColorable = false

ATT.Sights = {
    {
        Pos = Vector(0, 10, -2.6),
        Ang = Angle(0, -3, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(50) end
        end,
    },
    {
        Pos = Vector(0, 10, -3),
        Ang = Angle(0, -5, 0),
        Magnification = 1.1,
        ViewModelFOV = 50,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(100) end
        end,
    },
    {
        Pos = Vector(0, 10, -3.66),
        Ang = Angle(0, -8.21, 0),
        Magnification = 1.1,
        ViewModelFOV = 50,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(150) end
        end,
    },
    {
        Pos = Vector(0, 10, -4.25),
        Ang = Angle(0, -11.1, 0),
        Magnification = 1.1,
        ViewModelFOV = 50,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(200) end
        end,
    },
    {
        Pos = Vector(0, 10, -4.8),
        Ang = Angle(0, -13.529, 0),
        Magnification = 1.1,
        ViewModelFOV = 50,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(250) end
        end,
    },
    {
        Pos = Vector(0, 10, -5.3),
        Ang = Angle(0, -15.8, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(300) end
        end,
    },
    {
        Pos = Vector(0, 10, -6.1),
        Ang = Angle(0, -19.2596, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(350) end
        end,
    },
    {
        Pos = Vector(0, 10, -6.7),
        Ang = Angle(0, -21.7567, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(400) end
        end,
    },
}

local m2a1zeroingpp = {-3, -5, -8.21, -11.1, -13.529, -15.8, -19.2596, -21.7567}
local m2a1zeroing = {-3, -5, -6.8, -8.9, -11, -13.75, -16, -17} -- negro

local zeroang = Angle(0, 0, 0)

ATT.ShootAngOffsetHook = function(swep, val) 
    if swep:GetInSights() then
        local mulsigh = math.min(swep:GetMultiSight(), 8)
        return Angle(-m2a1zeroing[mulsigh], 0, 0)
    end
    return zeroang
end

ATT.DrawFunc = function(swep, model)
    local mulsigh = math.min(swep:GetMultiSight(), 8)
    model:SetPoseParameter("zeroing", mulsigh-1)
    model.FakeHolosightAngleOffset = Angle(-m2a1zeroingpp[mulsigh], 0, 0)
end


ARC9.LoadAttachment(ATT, "eft_optic_m2a1")






///////////////////////////////////////      eft_optic_m2a1_atts

ATT = {}

ATT.PrintName = "Milkor M2A1 grenade launcher reflex sight (With attachments slots, without zeroing, locked on 50 meters)"
ATT.CompactName = "M2A1"
ATT.Icon = Material("entities/m2a1/m2a.png", "mips smooth")
ATT.Description = [[The M2A1 sight was designed to compensate for the natural drift of the 40mm grenade. The built-in light sensor dims the reticle during daylight hours and allows for a brighter reticle during night time operations. The M2A1 reflex sight enhances the overall capabilities and usage of the MUSA MSGLs.

Splitted into two scopes because of technical issue: it is impossible to make additional attachments slots to follow rotation of bone on scope model on ARC9 base.]]
ATT.SortOrder = 2

ATT.Model = "models/weapons/arc9/darsu_eft/mods/sight_m2a1.mdl"

ATT.Category = {"eft_m2a1"}
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -6
ATT.CustomCons = { Ergonomics = "-6" }

ATT.FoldSights = true

ATT.Attachments = {
    {
        PrintName = "Tactical L",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(0, -1.12, -2.05),
        Ang = Angle(-3, 0, -90),
    },
    {
        PrintName = "Tactical Top",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(0, 0, -3.17),
        Ang = Angle(-3, 0, 0),
    },
    {
        PrintName = "Tactical R",
        Category = {"eft_tactical", "eft_tactical_top"},
        Pos = Vector(0, 1.12, -2.05),
        Ang = Angle(-3, 0, 90),
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("entities/m2a1/scope_all_milkor_m2a1_reflex_sight_mark.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$additive", 1)
ATT.HoloSightSize = 465
ATT.HoloSightColorable = false

ATT.Sights = {
    {
        Pos = Vector(0, 10, -2.6),
        Ang = Angle(0, -3, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(50) end
        end,
    },
}

local funnyang = Angle(3, 0, 0)
local zeroang = Angle(0, 0, 0)

ATT.ShootAngOffsetHook = function(swep, val) 
    if swep:GetInSights() then
        swep.raptarpleaseshutthefuckup = funnyang
        return funnyang
    end
    swep.raptarpleaseshutthefuckup = zeroang
    return zeroang
end

ATT.DrawFunc = function(swep, model)
    -- model:SetPoseParameter("zeroing", 0)
    model.FakeHolosightAngleOffset = funnyang
end


ARC9.LoadAttachment(ATT, "eft_optic_m2a1_atts")

///////////////////////////////////////      eft_fn40_black     NOT MADE BY DARSU

ATT = {}

ATT.PrintName = "BLACK"
ATT.CompactName = "BLACK"
ATT.Icon = Material("entities/arc9_eft_fn40_black.png", "mips smooth")
ATT.Description = [[Black color instead of FDE FN40GL parts.

Not presents in EFT, custom att.]]

ATT.SortOrder = -90
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.SubMaterial0 = "models/weapons/arc9/darsu_eft/fn40gl/weapon_fn_40gl_mk2_40x46_BLK"
ATT.SubMaterial1 = "models/weapons/arc9/darsu_eft/fn40gl/weapon_fn_40gl_mk2_40x46_sa_trigger_BLK"
ATT.SubMaterial2 = "models/weapons/arc9/darsu_eft/fn40gl/weapon_fn_40gl_s_BLK"

ATT.Category = {"eft_custom_fn40gl"}

ATT.Max = 1

ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot", "eft_custom_fn40gl"},
 
    },
}

ARC9.LoadAttachment(ATT, "eft_fn40_black")



///////////////////////////////////////      eft_grenade_tripwire

ATT = {}

ATT.PrintName = "Tripwire installation kit"
ATT.CompactName = "Tripwire"
ATT.Icon = Material("entities/arc9_eft_tripwire.png", "mips smooth")
ATT.Description = [[An improvised booby trap kit made of tent pegs and wire with a carabiner. Allows the user to install tripwires on flat surfaces or to conceal explosives on an object.

Press firemode key to activate.]]
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_tripwire"}

ATT.Firemodes = {
    { Mode = 1, PrintName = ARC9:GetPhrase("eft_fmode_throw") },
    { Mode = 0, PrintName = ARC9:GetPhrase("eft_fmode_tripwire") },
}

ATT.Hook_TranslateAnimation = function(wep, anim)
    if wep:GetFiremode() == 2 then return anim .. "_mine" end
end

ARC9.LoadAttachment(ATT, "eft_grenade_tripwire")