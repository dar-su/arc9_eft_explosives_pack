AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_m32a1_alt")
SWEP.Description = ARC9:GetPhrase("eft_weapon_m32a1_desc")

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_grenadelauncher")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_milkor",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_40x46",
    ["eft_trivia_act3"]= "eft_trivia_act_revolver",
    ["eft_trivia_country4"] = "South Africa",
    ["eft_trivia_year5"] = "1983"
}

SWEP.StandardPresets = false 

SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl" -- set to something more valid
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_m32a1.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-8, 5.5, -6.2),
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
SWEP.CustomizePos = Vector(16.5, 23, 4)
SWEP.CustomizeSnapshotFOV = 95
-- SWEP.CustomizeRotateAnchor = Vector(21.6, -4.28, -5.23)

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 24.06 * ARC9.MOAToAcc
SWEP.RPM = 134
SWEP.EFTErgo = 30
SWEP.BarrelLength = 35
SWEP.Ammo = "smg1_grenade" -- What ammo type this gun uses.
SWEP.Firemodes = { { Mode = 1 } }

SWEP.Slot = 4

SWEP.ReloadInSights = false

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

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 3 -- same but in sights only

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

SWEP.CamQCA_Mult = 1
SWEP.MuzzleParticle = "muzzleflash_ak47" -- Used for some muzzle effects.
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellSounds = ARC9EFT.ShellsHeavy

SWEP.NoShellEject = true
SWEP.ShellSmoke = false 
SWEP.EjectDelay = 1111111111

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

SWEP.ShellModelHook = function(swep, old) 
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

path = "weapons/darsu_eft/m32/"
SWEP.DryFireSound = path .. "mgl_hammer_release.ogg"

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineAmount = 0 -- Amount of mags to drop.

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = {
    [1] = "patron_in_weapon_000",
    [2] = "patron_in_weapon_001",
    [3] = "patron_in_weapon_002",
    [4] = "patron_in_weapon_003",
    [5] = "patron_in_weapon_004",
    [6] = "patron_in_weapon_005",
}


SWEP.ShotgunReload = true
SWEP.ShellVelocity = 0
SWEP.NoForceSetLoadedRoundsOnReload = true 

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "bullet1",
        "bullet2",
        "bullet3",
        "bullet4",
    },
}

local delayedspin
local function spindelay(swep) -- setting nwint not in start of anim but while one before already started
    if delayedspin then return end
    delayedspin = true
    -- if true then return end
    timer.Simple(0.1, function() -- wah wah
        if IsValid(swep) then
            local getcr = swep:GetNWInt("EFTRevolverCylRot", 0) + 1
            -- if getcr==6 then getcr = 0 end
            delayedspin = nil
            if getcr==6 then return end -- no spins after full cycle
            swep:SetNWInt("EFTRevolverCylRot", getcr)
            
        end
    end)
end

SWEP.EFT_HasTacReloads = true 
SWEP.EFT_HasTacReloadsAlways = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    local clip = swep:Clip1()
    
    local cylrot = swep:GetNWInt("EFTRevolverCylRot", 0)
    
    if anim == "inspect" then        
        swep.EFTInspectBool = swep.EFTInspectBool or false
        if IsFirstTimePredicted() then
            swep.EFTInspectBool = !swep.EFTInspectBool
        end
        local inspect = swep.EFTInspectBool

        if !inspect then
            if SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(true) -- accurate or not based on mag type
                net.WriteUInt(math.min(clip , swep:GetMaxClip1())+1, 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
            return "mag_check__" .. cylrot
        else
            return "look__" .. cylrot
        end
    end
    
    
    if anim == "idle" then   
        if swep.nocylrot then swep.nocylrot = nil end
        if swep.fistful then swep.fistful = nil end
    elseif anim == "ready" or anim == "draw" then   
        anim = "draw"
        timer.Simple(0.1, function() if IsValid(swep) then swep:SetLoadedRounds(swep:Clip1()) end end) -- wah wah
    elseif anim == "fire" then
        anim = "fire"
        spindelay(swep)
    elseif anim == "dryfire" then
        anim = "fire"
        spindelay(swep)
    elseif anim == "reload_start" then  
        swep.roundcount = swep.roundcount or 6
        if clip == 0 or swep:GetValue("EFTForceFastReload") or swep.EFT_StartedTacReload then 
            anim = "sg_reload_start_empty" .. swep.roundcount

            swep:SetClip1(0) -- animation.DumpAmmo unloads LoadedRounds too

            timer.Simple(2.5, function() -- wah wah
                if IsValid(swep) then
                    swep.roundcount = 0
                    swep:SetNWInt("EFTRevolverRoundCount", 0)
                end
            end)
        else
            local cunt = (6 - (swep.roundcount - clip)) -- crazy fuck
            if clip > 0 and swep.roundcount > 0 and swep.roundcount < 6 and clip != swep.roundcount then -- crazy fuck
                cunt = (6 - clip) .. "_offset" .. (6 - swep.roundcount) -- crazy fuck
            end

            anim = "sg_reload_start" .. cunt
        end

        swep.afterreloadstart = true
    elseif anim == "reload_insert" then
        if swep.afterreloadstart then
            swep.roundcount = clip
            swep:SetNWInt("EFTRevolverRoundCount", swep.roundcount)
            swep.afterreloadstart = nil
        end

        anim = "sg_reload_insert" .. clip
        
        swep:SetNWInt("EFTRevolverCylRot", 0)
        swep.nocylrot = true

        swep.roundcount = clip + 1
        swep:SetNWInt("EFTRevolverRoundCount", clip + 1)
        swep:SetLoadedRounds(6)
    elseif anim == "reload_finish" then
        anim = clip == 6 and "sg_reload_end_last" or "sg_reload_end"
        swep:SetNWInt("EFTRevolverCylRot", 0)
        swep.nocylrot = true
        swep.roundcount = clip
        swep:SetNWInt("EFTRevolverRoundCount", clip)
    end
    
    if !swep.nocylrot then
        return anim .. "__" .. swep:GetNWInt("EFTRevolverCylRot", 0)
    else
        return anim
    end
end


local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
local switchi = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } }

local shellinsert = { path .. "mgl_grenade_insert1.ogg", path .. "mgl_grenade_insert2.ogg", path .. "mgl_grenade_insert3.ogg" }
local shellremove = { path .. "mgl_grenade_shell_remove1.ogg", path .. "mgl_grenade_shell_remove2.ogg", path .. "mgl_grenade_shell_remove3.ogg" }

local magcheck = {
    { s = randspin, t = 0 },
    { s = path .. "mgl_drum_button.ogg", t = 30/60 },
    { s = path .. "mgl_drum_open.ogg", t = 67/60 - 0.1 },
    { s = randspin, t = 75/60 },
    { s = randspin, t = 136/60 },
    { s = path .. "mgl_drum_close.ogg", t = 152/60 },
    { s = randspin, t = 184/60 },
}
local look = {
    { s = randspin, t = 0.05 },
    { s = randspin, t = 77/60 },
    { s = randspin, t = 148/60 },
}

local sg_start0 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 63/60 - 0.1 },
    { s = randspin, t = 97/60 },
    { s = shellremove, t = 145/60 },  
    { s = shellremove, t = 198/60 },  
    { s = shellremove, t = 251/60 },  
    { s = shellremove, t = 303/60 },  
    { s = shellremove, t = 348/60 },  
    { s = randspin, t = 373/60 },

    {shelleject = true, att = 2, t = 145/60 + 0.25 },  
    {shelleject = true, att = 2, t = 198/60 + 0.25 },  
    {shelleject = true, att = 2, t = 251/60 + 0.25 },  
    {shelleject = true, att = 2, t = 303/60 + 0.25 },  
    {shelleject = true, att = 2, t = 348/60 + 0.25 },  
}
local sg_start1 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 63/60 - 0.1 },

    { s = randspin, t = 97/60 },
    { s = path .. "mgl_drum_rotate3.ogg", t = 138/60 },

    { s = shellremove, t = 145/60 + 0.7333 },  
    { s = shellremove, t = 198/60 + 0.7333 },  
    { s = shellremove, t = 251/60 + 0.7333 },  
    { s = shellremove, t = 303/60 + 0.7333 },  
    { s = shellremove, t = 348/60 + 0.7333 },  
    { s = randspin, t = 373/60 + 0.7333 },

    {shelleject = true, att = 2, t = 145/60 + 0.25 + 0.7333 },  
    {shelleject = true, att = 2, t = 198/60 + 0.25 + 0.7333 },  
    {shelleject = true, att = 2, t = 251/60 + 0.25 + 0.7333 },  
    {shelleject = true, att = 2, t = 303/60 + 0.25 + 0.7333 },  
    {shelleject = true, att = 2, t = 348/60 + 0.25 + 0.7333 },  
}
local sg_start2 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 63/60 - 0.1 },

    { s = randspin, t = 97/60 },
    { s = path .. "mgl_drum_rotate2.ogg", t = 139/60 },

    { s = shellremove, t = 145/60 + 0.8167 },  
    { s = shellremove, t = 198/60 + 0.8167 },  
    { s = shellremove, t = 251/60 + 0.8167 },  
    { s = shellremove, t = 303/60 + 0.8167 },  
    { s = shellremove, t = 348/60 + 0.8167 },  
    { s = randspin, t = 373/60 + 0.8167 },

    {shelleject = true, att = 2, t = 145/60 + 0.25 + 0.8167 },  
    {shelleject = true, att = 2, t = 198/60 + 0.25 + 0.8167 },  
    {shelleject = true, att = 2, t = 251/60 + 0.25 + 0.8167 },  
    {shelleject = true, att = 2, t = 303/60 + 0.25 + 0.8167 },  
    {shelleject = true, att = 2, t = 348/60 + 0.25 + 0.8167 },  
}
local sg_start3 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 63/60 - 0.1 },

    { s = randspin, t = 97/60 },
    { s = path .. "mgl_drum_rotate1.ogg", t = 139/60 },

    { s = shellremove, t = 145/60 + 0.8167 },  
    { s = shellremove, t = 198/60 + 0.8167 },  
    { s = shellremove, t = 251/60 + 0.8167 },  
    { s = shellremove, t = 303/60 + 0.8167 },  
    { s = shellremove, t = 348/60 + 0.8167 },  
    { s = randspin, t = 373/60 + 0.8167 },

    {shelleject = true, att = 2, t = 145/60 + 0.25 + 0.8167 },  
    {shelleject = true, att = 2, t = 198/60 + 0.25 + 0.8167 },  
    {shelleject = true, att = 2, t = 251/60 + 0.25 + 0.8167 },  
    {shelleject = true, att = 2, t = 303/60 + 0.25 + 0.8167 },  
    {shelleject = true, att = 2, t = 348/60 + 0.25 + 0.8167 },  
}
local sg_start4 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 63/60 - 0.1 },

    { s = randspin, t = 97/60 },
    { s = path .. "mgl_drum_rotate1.ogg", t = 140/60 },
    { s = path .. "mgl_drum_rotate3.ogg", t = 177/60 },

    { s = shellremove, t = 145/60 + 1.35 },  
    { s = shellremove, t = 198/60 + 1.35 },  
    { s = shellremove, t = 251/60 + 1.35 },  
    { s = shellremove, t = 303/60 + 1.35 },  
    { s = shellremove, t = 348/60 + 1.35 },  
    { s = randspin, t = 373/60 + 1.35 },

    {shelleject = true, att = 2, t = 145/60 + 0.25 + 1.35 },  
    {shelleject = true, att = 2, t = 198/60 + 0.25 + 1.35 },  
    {shelleject = true, att = 2, t = 251/60 + 0.25 + 1.35 },  
    {shelleject = true, att = 2, t = 303/60 + 0.25 + 1.35 },  
    {shelleject = true, att = 2, t = 348/60 + 0.25 + 1.35 },  
}
local sg_start5 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 63/60 - 0.1 },

    { s = randspin, t = 97/60 },
    { s = path .. "mgl_drum_rotate1.ogg", t = 141/60 },
    { s = path .. "mgl_drum_rotate2.ogg", t = 179/60 },

    { s = shellremove, t = 230/60  },  
    { s = shellremove, t = 285/60   },  
    { s = shellremove, t = 337/60  },  
    { s = shellremove, t = 391/60  },  
    { s = shellremove, t = 436/60  },  
    { s = randspin, t = 373/60 + 1.4167 },

    {shelleject = true, att = 2, t = 145/60 + 0.25+ 1.4167 },  
    {shelleject = true, att = 2, t = 198/60 + 0.25+ 1.4167 },  
    {shelleject = true, att = 2, t = 251/60 + 0.25+ 1.4167 },  
    {shelleject = true, att = 2, t = 303/60 + 0.25+ 1.4167 },  
    {shelleject = true, att = 2, t = 348/60 + 0.25+ 1.4167 },  
}


local sg_estart0_6 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 65/60 - 0.1 },
    { s = randspin, t = 87/60 },

    { s = path .. "mgl_grenade_shell_purge_all.ogg", t = 114/60 },
    { s = randspin, t = 136/60 },

    {shelleject = true, att = 4, t = 114/60 + 0.25 },  
    {shelleject = true, att = 5, t = 114/60 + 0.3 },  
    {shelleject = true, att = 6, t = 114/60 + 0.32 },  
    {shelleject = true, att = 7, t = 114/60 + 0.22 },  
    {shelleject = true, att = 8, t = 114/60 + 0.27 },  
    {shelleject = true, att = 9, t = 114/60 + 0.28 },  
}

local sg_estart0_5 = table.Copy(sg_estart0_6) sg_estart0_5[12] = nil
local sg_estart0_4 = table.Copy(sg_estart0_6) sg_estart0_4[12] = nil sg_estart0_4[11] = nil
local sg_estart0_3 = table.Copy(sg_estart0_6) sg_estart0_3[12] = nil sg_estart0_3[11] = nil sg_estart0_3[10] = nil
local sg_estart0_2 = table.Copy(sg_estart0_6) sg_estart0_2[12] = nil sg_estart0_2[11] = nil sg_estart0_2[10] = nil sg_estart0_2[9] = nil
local sg_estart0_1 = table.Copy(sg_estart0_6) sg_estart0_1[12] = nil sg_estart0_1[11] = nil sg_estart0_1[10] = nil sg_estart0_1[9] = nil sg_estart0_1[8] = nil

local sg_estart1_6 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 65/60 - 0.1 },
    { s = randspin, t = 87/60 },

    { s = path .. "mgl_grenade_shell_purge_all.ogg", t = 114/60 },
    { s = randspin, t = 136/60 },

    {shelleject = true, att = 4, t = 114/60 + 0.25 },  
    {shelleject = true, att = 5, t = 114/60 + 0.3 },  
    {shelleject = true, att = 6, t = 114/60 + 0.32 },  
    {shelleject = true, att = 7, t = 114/60 + 0.22 },  
    {shelleject = true, att = 8, t = 114/60 + 0.27 },
    {shelleject = true, att = 9, t = 114/60 + 0.28 },  

    { s = path .. "mgl_drum_rotate3.ogg", t = 193/60 },
}

local sg_estart1_5 = table.Copy(sg_estart1_6) sg_estart1_5[12] = nil
local sg_estart1_4 = table.Copy(sg_estart1_6) sg_estart1_4[12] = nil sg_estart1_4[11] = nil
local sg_estart1_3 = table.Copy(sg_estart1_6) sg_estart1_3[12] = nil sg_estart1_3[11] = nil sg_estart1_3[10] = nil
local sg_estart1_2 = table.Copy(sg_estart1_6) sg_estart1_2[12] = nil sg_estart1_2[11] = nil sg_estart1_2[10] = nil sg_estart1_2[9] = nil
local sg_estart1_1 = table.Copy(sg_estart1_6) sg_estart1_1[12] = nil sg_estart1_1[11] = nil sg_estart1_1[10] = nil sg_estart1_1[9] = nil sg_estart1_1[8] = nil 

local sg_estart2_6 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 65/60 - 0.1 },
    { s = randspin, t = 87/60 },

    { s = path .. "mgl_grenade_shell_purge_all.ogg", t = 114/60 },
    { s = randspin, t = 136/60 },

    {shelleject = true, att = 4, t = 114/60 + 0.25 },  
    {shelleject = true, att = 5, t = 114/60 + 0.3 },  
    {shelleject = true, att = 6, t = 114/60 + 0.32 },  
    {shelleject = true, att = 7, t = 114/60 + 0.22 },  
    {shelleject = true, att = 8, t = 114/60 + 0.27 },
    {shelleject = true, att = 9, t = 114/60 + 0.28 },  

    { s = path .. "mgl_drum_rotate2.ogg", t = 194/60 },
}
local sg_estart2_5 = table.Copy(sg_estart2_6) sg_estart2_5[12] = nil
local sg_estart2_4 = table.Copy(sg_estart2_6) sg_estart2_4[12] = nil sg_estart2_4[11] = nil
local sg_estart2_3 = table.Copy(sg_estart2_6) sg_estart2_3[12] = nil sg_estart2_3[11] = nil sg_estart2_3[10] = nil
local sg_estart2_2 = table.Copy(sg_estart2_6) sg_estart2_2[12] = nil sg_estart2_2[11] = nil sg_estart2_2[10] = nil sg_estart2_2[9] = nil
local sg_estart2_1 = table.Copy(sg_estart2_6) sg_estart2_1[12] = nil sg_estart2_1[11] = nil sg_estart2_1[10] = nil sg_estart2_1[9] = nil sg_estart2_1[8] = nil 

local sg_estart3_6 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 65/60 - 0.1 },
    { s = randspin, t = 87/60 },

    { s = path .. "mgl_grenade_shell_purge_all.ogg", t = 114/60 },
    { s = randspin, t = 136/60 },

    {shelleject = true, att = 4, t = 114/60 + 0.25 },  
    {shelleject = true, att = 5, t = 114/60 + 0.3 },  
    {shelleject = true, att = 6, t = 114/60 + 0.32 },  
    {shelleject = true, att = 7, t = 114/60 + 0.22 },  
    {shelleject = true, att = 8, t = 114/60 + 0.27 },
    {shelleject = true, att = 9, t = 114/60 + 0.28 },  

    { s = path .. "mgl_drum_rotate1.ogg", t = 194/60 },
}
local sg_estart3_5 = table.Copy(sg_estart3_6) sg_estart3_5[12] = nil
local sg_estart3_4 = table.Copy(sg_estart3_6) sg_estart3_4[12] = nil sg_estart3_4[11] = nil
local sg_estart3_3 = table.Copy(sg_estart3_6) sg_estart3_3[12] = nil sg_estart3_3[11] = nil sg_estart3_3[10] = nil
local sg_estart3_2 = table.Copy(sg_estart3_6) sg_estart3_2[12] = nil sg_estart3_2[11] = nil sg_estart3_2[10] = nil sg_estart3_2[9] = nil
local sg_estart3_1 = table.Copy(sg_estart3_6) sg_estart3_1[12] = nil sg_estart3_1[11] = nil sg_estart3_1[10] = nil sg_estart3_1[9] = nil sg_estart3_1[8] = nil 

local sg_estart4_6 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 65/60 - 0.1 },
    { s = randspin, t = 87/60 },

    { s = path .. "mgl_grenade_shell_purge_all.ogg", t = 114/60 },
    { s = randspin, t = 136/60 },

    {shelleject = true, att = 4, t = 114/60 + 0.25 },  
    {shelleject = true, att = 5, t = 114/60 + 0.3 },  
    {shelleject = true, att = 6, t = 114/60 + 0.32 },  
    {shelleject = true, att = 7, t = 114/60 + 0.22 },  
    {shelleject = true, att = 8, t = 114/60 + 0.27 },
    {shelleject = true, att = 9, t = 114/60 + 0.28 },  

    { s = path .. "mgl_drum_rotate1.ogg", t = 194/60 },
    { s = path .. "mgl_drum_rotate3.ogg", t = 233/60 },
}
local sg_estart4_5 = table.Copy(sg_estart4_6) sg_estart4_5[12] = nil
local sg_estart4_4 = table.Copy(sg_estart4_6) sg_estart4_4[12] = nil sg_estart4_4[11] = nil
local sg_estart4_3 = table.Copy(sg_estart4_6) sg_estart4_3[12] = nil sg_estart4_3[11] = nil sg_estart4_3[10] = nil
local sg_estart4_2 = table.Copy(sg_estart4_6) sg_estart4_2[12] = nil sg_estart4_2[11] = nil sg_estart4_2[10] = nil sg_estart4_2[9] = nil
local sg_estart4_1 = table.Copy(sg_estart4_6) sg_estart4_1[12] = nil sg_estart4_1[11] = nil sg_estart4_1[10] = nil sg_estart4_1[9] = nil sg_estart4_1[8] = nil 


local sg_estart5_6 = {
    { s = randspin, t = 0 },  
    { s = path .. "mgl_drum_button.ogg", t = 28/60 },
    { s = path .. "mgl_drum_open.ogg", t = 65/60 - 0.1 },
    { s = randspin, t = 87/60 },

    { s = path .. "mgl_grenade_shell_purge_all.ogg", t = 114/60 },
    { s = randspin, t = 136/60 },

    {shelleject = true, att = 4, t = 114/60 + 0.25 },  
    {shelleject = true, att = 5, t = 114/60 + 0.3 },  
    {shelleject = true, att = 6, t = 114/60 + 0.32 },  
    {shelleject = true, att = 7, t = 114/60 + 0.22 },  
    {shelleject = true, att = 8, t = 114/60 + 0.27 },
    {shelleject = true, att = 9, t = 114/60 + 0.28 },   

    { s = path .. "mgl_drum_rotate1.ogg", t = 192/60 },
    { s = path .. "mgl_drum_rotate2.ogg", t = 230/60 },
}
local sg_estart5_5 = table.Copy(sg_estart5_6) sg_estart5_5[12] = nil
local sg_estart5_4 = table.Copy(sg_estart5_6) sg_estart5_4[12] = nil sg_estart5_4[11] = nil
local sg_estart5_3 = table.Copy(sg_estart5_6) sg_estart5_3[12] = nil sg_estart5_3[11] = nil sg_estart5_3[10] = nil
local sg_estart5_2 = table.Copy(sg_estart5_6) sg_estart5_2[12] = nil sg_estart5_2[11] = nil sg_estart5_2[10] = nil sg_estart5_2[9] = nil
local sg_estart5_1 = table.Copy(sg_estart5_6) sg_estart5_1[12] = nil sg_estart5_1[11] = nil sg_estart5_1[10] = nil sg_estart5_1[9] = nil sg_estart5_1[8] = nil 


local sg_insert1 = {
    { s = pouchout, t = 0, v = 0.75 },
    { s = shellinsert, t = 23/60 },
    { s = randspin, t = 58/60, v = 0.5 },
}
local sg_end = {
    { s = path .. "mgl_drum_close.ogg", t = 18/60 },
    { s = randspin, t = 46/60 },
}

local drawa = { { s = "arc9_eft_shared/weap_in.ogg", t = 0 } }
local holstera = { { s = "arc9_eft_shared/weap_out.ogg", t = 0 } }
local fireda = { { s = path .. "mgl_trigger_press.ogg", t = 0.0 }, { s = path .. "mgl_hammer_release.ogg", t = 0.02 }, { s = {path .. "mgl_drum_fire_rotate1.ogg", path .. "mgl_drum_fire_rotate2.ogg"}, t = 0.05 } }
local firedry = { { s = path .. "mgl_trigger_press.ogg", t = 0.0 } }

local alwayslhik = {
    { t = 0, lhik = 1 },
    { t = 1, lhik = 1 },
} 
local neverlhik = {
    { t = 0, lhik = 0 },
    { t = 1, lhik = 0 },
} 
local startlhik = {
    { t = 0, lhik = 1 },
    { t = 0.001, lhik = 0 },
    { t = 0.8, lhik = 1 },
    { t = 1, lhik = 1 },
} 
local endlhik = {
    { t = 0, lhik = 1 },
    { t = 0.5, lhik = 0 },
    { t = 1, lhik = 0 },
} 
local rstartlhik = {
    { t = 0, lhik = 1 },
    { t = 0.2, lhik = 0 },
    { t = 1, lhik = 0 },
} 
local rendlhik = {
    { t = 0, lhik = 0 },
    { t = 0.1, lhik = 0 },
    { t = 0.8, lhik = 1 },
    { t = 1, lhik = 1 },
} 
local looklhik = {
    { t = 0, lhik = 1 },
    { t = 0.4, lhik = 1 },
    { t = 0.57, lhik = 0 },
    { t = 0.75, lhik = 0 },
    { t = 0.92, lhik = 1 },
    { t = 1, lhik = 1 },
} 
local checklhik = {
    { t = 0, lhik = 1 },
    { t = 0.1, lhik = 0 },
    { t = 0.76, lhik = 0 },
    { t = 0.84, lhik = 1 },
    { t = 1, lhik = 1 },
} 

SWEP.Animations = {
    ["idle"] = { Source = "idle__0", IKTimeLine = alwayslhik },
    ["idle__0"] = { Source = "idle__0", IKTimeLine = alwayslhik },
    ["idle__1"] = { Source = "idle__1", IKTimeLine = alwayslhik },
    ["idle__2"] = { Source = "idle__2", IKTimeLine = alwayslhik },
    ["idle__3"] = { Source = "idle__3", IKTimeLine = alwayslhik },
    ["idle__4"] = { Source = "idle__4", IKTimeLine = alwayslhik },
    ["idle__5"] = { Source = "idle__5", IKTimeLine = alwayslhik },

    ["draw"] = { Source = "draw__0", EventTable = drawa, IKTimeLine = startlhik },
    ["holster"] = { Source = "holster__0", EventTable = holstera, IKTimeLine = endlhik },

    ["draw__0"] = { Source = "draw__0", EventTable = drawa, IKTimeLine = startlhik },
    ["draw__1"] = { Source = "draw__1", EventTable = drawa, IKTimeLine = startlhik },
    ["draw__2"] = { Source = "draw__2", EventTable = drawa, IKTimeLine = startlhik },
    ["draw__3"] = { Source = "draw__3", EventTable = drawa, IKTimeLine = startlhik },
    ["draw__4"] = { Source = "draw__4", EventTable = drawa, IKTimeLine = startlhik },
    ["draw__5"] = { Source = "draw__5", EventTable = drawa, IKTimeLine = startlhik },

    ["holster__0"] = { Source = "holster__0", EventTable = holstera, IKTimeLine = endlhik },
    ["holster__1"] = { Source = "holster__1", EventTable = holstera, IKTimeLine = endlhik },
    ["holster__2"] = { Source = "holster__2", EventTable = holstera, IKTimeLine = endlhik },
    ["holster__3"] = { Source = "holster__3", EventTable = holstera, IKTimeLine = endlhik },
    ["holster__4"] = { Source = "holster__4", EventTable = holstera, IKTimeLine = endlhik },
    ["holster__5"] = { Source = "holster__5", EventTable = holstera, IKTimeLine = endlhik },


    ["fire__0"] = { Source = "fire__0", EventTable = fireda, IKTimeLine = alwayslhik },
    ["fire__1"] = { Source = "fire__1", EventTable = fireda, IKTimeLine = alwayslhik },
    ["fire__2"] = { Source = "fire__2", EventTable = fireda, IKTimeLine = alwayslhik },
    ["fire__3"] = { Source = "fire__3", EventTable = fireda, IKTimeLine = alwayslhik },
    ["fire__4"] = { Source = "fire__4", EventTable = fireda, IKTimeLine = alwayslhik },
    ["fire__5"] = { Source = "fire__5", EventTable = firedry, IKTimeLine = alwayslhik },

    ["sg_reload_start1__0"] = { Source = "sg_reload_start1__0", EventTable = sg_start0, IKTimeLine = rstartlhik },
    ["sg_reload_start1__1"] = { Source = "sg_reload_start1__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start1__2"] = { Source = "sg_reload_start1__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start1__3"] = { Source = "sg_reload_start1__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start1__4"] = { Source = "sg_reload_start1__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start1__5"] = { Source = "sg_reload_start1__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start2__0"] = { Source = "sg_reload_start2__0", EventTable = sg_start0, IKTimeLine = rstartlhik },
    ["sg_reload_start2__1"] = { Source = "sg_reload_start2__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start2__2"] = { Source = "sg_reload_start2__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start2__3"] = { Source = "sg_reload_start2__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start2__4"] = { Source = "sg_reload_start2__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start2__5"] = { Source = "sg_reload_start2__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start3__0"] = { Source = "sg_reload_start3__0", EventTable = sg_start0, IKTimeLine = rstartlhik },
    ["sg_reload_start3__1"] = { Source = "sg_reload_start3__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start3__2"] = { Source = "sg_reload_start3__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start3__3"] = { Source = "sg_reload_start3__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start3__4"] = { Source = "sg_reload_start3__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start3__5"] = { Source = "sg_reload_start3__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start4__0"] = { Source = "sg_reload_start4__0", EventTable = sg_start0, IKTimeLine = rstartlhik },
    ["sg_reload_start4__1"] = { Source = "sg_reload_start4__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start4__2"] = { Source = "sg_reload_start4__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start4__3"] = { Source = "sg_reload_start4__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start4__4"] = { Source = "sg_reload_start4__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start4__5"] = { Source = "sg_reload_start4__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start5__0"] = { Source = "sg_reload_start5__0", EventTable = sg_start0, IKTimeLine = rstartlhik },
    ["sg_reload_start5__1"] = { Source = "sg_reload_start5__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start5__2"] = { Source = "sg_reload_start5__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start5__3"] = { Source = "sg_reload_start5__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start5__4"] = { Source = "sg_reload_start5__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start5__5"] = { Source = "sg_reload_start5__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start6__0"] = { Source = "sg_reload_start6__0", EventTable = sg_start0, IKTimeLine = rstartlhik },
    ["sg_reload_start6__1"] = { Source = "sg_reload_start6__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start6__2"] = { Source = "sg_reload_start6__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start6__3"] = { Source = "sg_reload_start6__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start6__4"] = { Source = "sg_reload_start6__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start6__5"] = { Source = "sg_reload_start6__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    -- 1/6 fine
    ["sg_reload_start5_offset1__0"] = { Source = "sg_reload_start4_offset1__0", EventTable = sg_start0, IKTimeLine = rstartlhik }, -- good
    ["sg_reload_start5_offset1__1"] = { Source = "sg_reload_start4_offset1__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset1__2"] = { Source = "sg_reload_start4_offset1__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset1__3"] = { Source = "sg_reload_start4_offset1__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset1__4"] = { Source = "sg_reload_start4_offset1__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset1__5"] = { Source = "sg_reload_start4_offset1__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start5_offset2__0"] = { Source = "sg_reload_start4_offset2__0", EventTable = sg_start0, IKTimeLine = rstartlhik }, -- good
    ["sg_reload_start5_offset2__1"] = { Source = "sg_reload_start4_offset2__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset2__2"] = { Source = "sg_reload_start4_offset2__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset2__3"] = { Source = "sg_reload_start4_offset2__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset2__4"] = { Source = "sg_reload_start4_offset2__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset2__5"] = { Source = "sg_reload_start4_offset2__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start5_offset3__0"] = { Source = "sg_reload_start4_offset3__0", EventTable = sg_start0, IKTimeLine = rstartlhik }, -- good
    ["sg_reload_start5_offset3__1"] = { Source = "sg_reload_start4_offset3__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset3__2"] = { Source = "sg_reload_start4_offset3__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset3__3"] = { Source = "sg_reload_start4_offset3__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset3__4"] = { Source = "sg_reload_start4_offset3__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset3__5"] = { Source = "sg_reload_start4_offset3__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start5_offset4__0"] = { Source = "sg_reload_start4_offset4__0", EventTable = sg_start0, IKTimeLine = rstartlhik }, -- good
    ["sg_reload_start5_offset4__1"] = { Source = "sg_reload_start4_offset4__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset4__2"] = { Source = "sg_reload_start4_offset4__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset4__3"] = { Source = "sg_reload_start4_offset4__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset4__4"] = { Source = "sg_reload_start4_offset4__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start5_offset4__5"] = { Source = "sg_reload_start4_offset4__5", EventTable = sg_start5, IKTimeLine = rstartlhik },
    

    -- 2/6 good
    ["sg_reload_start4_offset1__0"] = { Source = "sg_reload_start3_offset1__0", EventTable = sg_start0, IKTimeLine = rstartlhik }, -- good
    ["sg_reload_start4_offset1__1"] = { Source = "sg_reload_start3_offset1__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset1__2"] = { Source = "sg_reload_start3_offset1__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset1__3"] = { Source = "sg_reload_start3_offset1__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset1__4"] = { Source = "sg_reload_start3_offset1__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset1__5"] = { Source = "sg_reload_start3_offset1__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start4_offset2__0"] = { Source = "sg_reload_start3_offset2__0", EventTable = sg_start0, IKTimeLine = rstartlhik }, -- good
    ["sg_reload_start4_offset2__1"] = { Source = "sg_reload_start3_offset2__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset2__2"] = { Source = "sg_reload_start3_offset2__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset2__3"] = { Source = "sg_reload_start3_offset2__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset2__4"] = { Source = "sg_reload_start3_offset2__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset2__5"] = { Source = "sg_reload_start3_offset2__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start4_offset3__0"] = { Source = "sg_reload_start3_offset3__0", EventTable = sg_start0, IKTimeLine = rstartlhik }, -- good
    ["sg_reload_start4_offset3__1"] = { Source = "sg_reload_start3_offset3__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset3__2"] = { Source = "sg_reload_start3_offset3__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset3__3"] = { Source = "sg_reload_start3_offset3__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset3__4"] = { Source = "sg_reload_start3_offset3__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start4_offset3__5"] = { Source = "sg_reload_start3_offset3__5", EventTable = sg_start5, IKTimeLine = rstartlhik },


    -- 3/6 hoo
    ["sg_reload_start3_offset1__0"] = { Source = "sg_reload_start2_offset1__0", EventTable = sg_start0, IKTimeLine = rstartlhik }, -- good
    ["sg_reload_start3_offset1__1"] = { Source = "sg_reload_start2_offset1__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start3_offset1__2"] = { Source = "sg_reload_start2_offset1__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start3_offset1__3"] = { Source = "sg_reload_start2_offset1__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start3_offset1__4"] = { Source = "sg_reload_start2_offset1__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start3_offset1__5"] = { Source = "sg_reload_start2_offset1__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    ["sg_reload_start3_offset2__0"] = { Source = "sg_reload_start2_offset2__0", EventTable = sg_start0, IKTimeLine = rstartlhik }, -- good
    ["sg_reload_start3_offset2__1"] = { Source = "sg_reload_start2_offset2__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start3_offset2__2"] = { Source = "sg_reload_start2_offset2__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start3_offset2__3"] = { Source = "sg_reload_start2_offset2__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start3_offset2__4"] = { Source = "sg_reload_start2_offset2__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start3_offset2__5"] = { Source = "sg_reload_start2_offset2__5", EventTable = sg_start5, IKTimeLine = rstartlhik },

    -- 4/6
    ["sg_reload_start2_offset1__0"] = { Source = "sg_reload_start1_offset2__0", EventTable = sg_start0, IKTimeLine = rstartlhik }, -- good
    ["sg_reload_start2_offset1__1"] = { Source = "sg_reload_start1_offset2__1", EventTable = sg_start1, IKTimeLine = rstartlhik },
    ["sg_reload_start2_offset1__2"] = { Source = "sg_reload_start1_offset2__2", EventTable = sg_start2, IKTimeLine = rstartlhik },
    ["sg_reload_start2_offset1__3"] = { Source = "sg_reload_start1_offset2__3", EventTable = sg_start3, IKTimeLine = rstartlhik },
    ["sg_reload_start2_offset1__4"] = { Source = "sg_reload_start1_offset2__4", EventTable = sg_start4, IKTimeLine = rstartlhik },
    ["sg_reload_start2_offset1__5"] = { Source = "sg_reload_start1_offset2__5", EventTable = sg_start5, IKTimeLine = rstartlhik },


    ["sg_reload_insert0"] = { Source = "sg_reload_insert1", EventTable = sg_insert1, IKTimeLine = neverlhik },
    ["sg_reload_insert1"] = { Source = "sg_reload_insert2", EventTable = sg_insert1, IKTimeLine = neverlhik },
    ["sg_reload_insert2"] = { Source = "sg_reload_insert3", EventTable = sg_insert1, IKTimeLine = neverlhik },
    ["sg_reload_insert3"] = { Source = "sg_reload_insert4", EventTable = sg_insert1, IKTimeLine = neverlhik },
    ["sg_reload_insert4"] = { Source = "sg_reload_insert5", EventTable = sg_insert1, IKTimeLine = neverlhik },
    ["sg_reload_insert5"] = { Source = "sg_reload_insert6", EventTable = sg_insert1, IKTimeLine = neverlhik },


    ["sg_reload_end"] = { Source = "sg_reload_end", EventTable = sg_end, IKTimeLine = rendlhik },
    ["sg_reload_end_last"] = { Source = "sg_reload_end_last", EventTable = sg_end, IKTimeLine = rendlhik },

    ["sg_reload_start_empty6__0"] = { Source = "sg_reload_start_empty__0", EventTable = sg_estart0_6, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty6__1"] = { Source = "sg_reload_start_empty__1", EventTable = sg_estart1_6, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty6__2"] = { Source = "sg_reload_start_empty__2", EventTable = sg_estart2_6, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty6__3"] = { Source = "sg_reload_start_empty__3", EventTable = sg_estart3_6, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty6__4"] = { Source = "sg_reload_start_empty__4", EventTable = sg_estart4_6, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty6__5"] = { Source = "sg_reload_start_empty__5", EventTable = sg_estart5_6, NoMagSwap = true, IKTimeLine = rstartlhik},

    ["sg_reload_start_empty5__0"] = { Source = "sg_reload_start_empty__0", EventTable = sg_estart0_5, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty5__1"] = { Source = "sg_reload_start_empty__1", EventTable = sg_estart1_5, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty5__2"] = { Source = "sg_reload_start_empty__2", EventTable = sg_estart2_5, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty5__3"] = { Source = "sg_reload_start_empty__3", EventTable = sg_estart3_5, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty5__4"] = { Source = "sg_reload_start_empty__4", EventTable = sg_estart4_5, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty5__5"] = { Source = "sg_reload_start_empty__5", EventTable = sg_estart5_5, NoMagSwap = true, IKTimeLine = rstartlhik},

    ["sg_reload_start_empty4__0"] = { Source = "sg_reload_start_empty__0", EventTable = sg_estart0_4, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty4__1"] = { Source = "sg_reload_start_empty__1", EventTable = sg_estart1_4, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty4__2"] = { Source = "sg_reload_start_empty__2", EventTable = sg_estart2_4, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty4__3"] = { Source = "sg_reload_start_empty__3", EventTable = sg_estart3_4, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty4__4"] = { Source = "sg_reload_start_empty__4", EventTable = sg_estart4_4, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty4__5"] = { Source = "sg_reload_start_empty__5", EventTable = sg_estart5_4, NoMagSwap = true, IKTimeLine = rstartlhik},

    ["sg_reload_start_empty3__0"] = { Source = "sg_reload_start_empty__0", EventTable = sg_estart0_3, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty3__1"] = { Source = "sg_reload_start_empty__1", EventTable = sg_estart1_3, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty3__2"] = { Source = "sg_reload_start_empty__2", EventTable = sg_estart2_3, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty3__3"] = { Source = "sg_reload_start_empty__3", EventTable = sg_estart3_3, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty3__4"] = { Source = "sg_reload_start_empty__4", EventTable = sg_estart4_3, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty3__5"] = { Source = "sg_reload_start_empty__5", EventTable = sg_estart5_3, NoMagSwap = true, IKTimeLine = rstartlhik},

    ["sg_reload_start_empty2__0"] = { Source = "sg_reload_start_empty__0", EventTable = sg_estart0_2, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty2__1"] = { Source = "sg_reload_start_empty__1", EventTable = sg_estart1_2, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty2__2"] = { Source = "sg_reload_start_empty__2", EventTable = sg_estart2_2, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty2__3"] = { Source = "sg_reload_start_empty__3", EventTable = sg_estart3_2, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty2__4"] = { Source = "sg_reload_start_empty__4", EventTable = sg_estart4_2, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty2__5"] = { Source = "sg_reload_start_empty__5", EventTable = sg_estart5_2, NoMagSwap = true, IKTimeLine = rstartlhik},

    ["sg_reload_start_empty1__0"] = { Source = "sg_reload_start_empty__0", EventTable = sg_estart0_1, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty1__1"] = { Source = "sg_reload_start_empty__1", EventTable = sg_estart1_1, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty1__2"] = { Source = "sg_reload_start_empty__2", EventTable = sg_estart2_1, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty1__3"] = { Source = "sg_reload_start_empty__3", EventTable = sg_estart3_1, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty1__4"] = { Source = "sg_reload_start_empty__4", EventTable = sg_estart4_1, NoMagSwap = true, IKTimeLine = rstartlhik},
    ["sg_reload_start_empty1__5"] = { Source = "sg_reload_start_empty__5", EventTable = sg_estart5_1, NoMagSwap = true, IKTimeLine = rstartlhik},


    ["inspect"] = { -- shutup arc9 we have inspect
        Source = "idle",
        Time = 0.05,
    },
    
    ["look__0"] = { Source = "look__0", MinProgress = 0.95, FireASAP = true, EventTable = look, IKTimeLine = looklhik },
    ["look__1"] = { Source = "look__1", MinProgress = 0.95, FireASAP = true, EventTable = look, IKTimeLine = looklhik },
    ["look__2"] = { Source = "look__2", MinProgress = 0.95, FireASAP = true, EventTable = look, IKTimeLine = looklhik },
    ["look__3"] = { Source = "look__3", MinProgress = 0.95, FireASAP = true, EventTable = look, IKTimeLine = looklhik },
    ["look__4"] = { Source = "look__4", MinProgress = 0.95, FireASAP = true, EventTable = look, IKTimeLine = looklhik },
    ["look__5"] = { Source = "look__5", MinProgress = 0.95, FireASAP = true, EventTable = look, IKTimeLine = looklhik },

    ["mag_check__0"] = { Source = "mag_check__0", MinProgress = 0.95, FireASAP = true, EventTable = magcheck, IKTimeLine = checklhik },
    ["mag_check__1"] = { Source = "mag_check__1", MinProgress = 0.95, FireASAP = true, EventTable = magcheck, IKTimeLine = checklhik },
    ["mag_check__2"] = { Source = "mag_check__2", MinProgress = 0.95, FireASAP = true, EventTable = magcheck, IKTimeLine = checklhik },
    ["mag_check__3"] = { Source = "mag_check__3", MinProgress = 0.95, FireASAP = true, EventTable = magcheck, IKTimeLine = checklhik },
    ["mag_check__4"] = { Source = "mag_check__4", MinProgress = 0.95, FireASAP = true, EventTable = magcheck, IKTimeLine = checklhik },
    ["mag_check__5"] = { Source = "mag_check__5", MinProgress = 0.95, FireASAP = true, EventTable = magcheck, IKTimeLine = checklhik },

    ["toggle__0"] = {        Source = "mod_switch__0", EventTable = switchi, IKTimeLine = alwayslhik },
    ["switchsights__0"] = {  Source = "mod_switch__0", EventTable = switchi, IKTimeLine = alwayslhik },
    ["toggle__1"] = {        Source = "mod_switch__1", EventTable = switchi, IKTimeLine = alwayslhik },
    ["switchsights__1"] = {  Source = "mod_switch__1", EventTable = switchi, IKTimeLine = alwayslhik },
    ["toggle__2"] = {        Source = "mod_switch__2", EventTable = switchi, IKTimeLine = alwayslhik },
    ["switchsights__2"] = {  Source = "mod_switch__2", EventTable = switchi, IKTimeLine = alwayslhik },
    ["toggle__3"] = {        Source = "mod_switch__3", EventTable = switchi, IKTimeLine = alwayslhik },
    ["switchsights__3"] = {  Source = "mod_switch__3", EventTable = switchi, IKTimeLine = alwayslhik },
    ["toggle__4"] = {        Source = "mod_switch__4", EventTable = switchi, IKTimeLine = alwayslhik },
    ["switchsights__4"] = {  Source = "mod_switch__4", EventTable = switchi, IKTimeLine = alwayslhik },
    ["toggle__5"] = {        Source = "mod_switch__5", EventTable = switchi, IKTimeLine = alwayslhik },
    ["switchsights__5"] = {  Source = "mod_switch__5", EventTable = switchi, IKTimeLine = alwayslhik },

}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasMag", "HasGranataAmmo" }

SWEP.AttachmentElements = {
    ["eft_m32a1_mag_std"] = { Bodygroups = { {1, 1} } },
}

local roundbgs = {
    ["eft_ammo_40x46_m381"]    = 1,
    ["eft_ammo_40x46_m386"]    = 2,
    ["eft_ammo_40x46_m406"]    = 3,
    ["eft_ammo_40x46_m441"]    = 4,
    ["eft_ammo_40x46_m576"]    = 5,
    ["eft_ammo_40x46_m576_nonubgl"]    = 5,
    ["eft_ammo_40x46_m716"]    = 6,
    ["eft_ammo_40x46_m433"]    = 7,
}

SWEP.Hook_ModifyBodygroups = function(swep, data)
    local eles = data.elements
    local mdl = data.model
    
    local hasmag = eles["eft_m32a1_mag_std"]
    local rc = (swep:GetNWInt("EFTRevolverRoundCount", 6) or 6)

    local ammotype = 0
    for k, v in pairs(roundbgs) do
        if eles[k] then ammotype = v break end 
    end

    if rc > 0 and hasmag then mdl:SetBodygroup(2, ammotype) else mdl:SetBodygroup(2, 0) end -- prob could be better but h
    if rc > 1 and hasmag then mdl:SetBodygroup(3, ammotype) else mdl:SetBodygroup(3, 0) end
    if rc > 2 and hasmag then mdl:SetBodygroup(4, ammotype) else mdl:SetBodygroup(4, 0) end
    if rc > 3 and hasmag then mdl:SetBodygroup(5, ammotype) else mdl:SetBodygroup(5, 0) end
    if rc > 4 and hasmag then mdl:SetBodygroup(6, ammotype) else mdl:SetBodygroup(6, 0) end
    if rc > 5 and hasmag then mdl:SetBodygroup(7, ammotype) else mdl:SetBodygroup(7, 0) end
end

SWEP.Attachments = {
    {
        PrintName = ARC9:GetPhrase("eft_cat_ammo"),
        Category = {"eft_ammo_40x46", "eft_ammo_40x46_nonubgl"},
        RejectAttachments = { ["eft_ammo_40x46_m576"] = true },
        Bone = "patron_in_weapon_001",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Integral = "eft_ammo_40x46_m381",
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_scope"),
        Bone = "mod_scope",
        Category = {"eft_m2a1", "eft_optic_medium"},
        ExcludeElements = {"IronsBlockingSight"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_optic_m2a1",
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_magazine"),
        Category = "eft_m32a1_mag",
        Bone = "mod_magazine",
        Installed = "eft_m32a1_mag_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = ARC9:GetPhrase("eft_cat_foregrip"),
        Category = {"eft_foregrip_small", "eft_foregrip_medium"},
        Bone = "weapon_mag_axis",    
        Pos = Vector(0, 10.5, -3.2),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },   
    {
        PrintName = ARC9:GetPhrase("eft_cat_tactical_u"),
        Category = {"eft_tactical", "eft_tactical_top"},
        -- RejectAttachments = { ["eft_tactical_raptar"] = true },
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
        PrintName = ARC9:GetPhrase("eft_cat_stock"),
        Category = "eft_ar_stock",
        Bone = "mod_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Installed = "eft_ar_stock_m4ss",
    },
    
    {
        PrintName = ARC9:GetPhrase("eft_cat_custom"),
        Category = {"eft_custom_slot", "eft_custom_slot_m32a1", "eft_custom_slot_revolver"},
        Bone = "mod_stock",
        Pos = Vector(0, 0, -3),
        Ang = Angle(0, -90, 0),
        -- CosmeticOnly = true,
    },
}