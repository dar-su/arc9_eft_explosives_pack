AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true
SWEP.NotForNPCs = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_rshg2")
SWEP.Description = "eft_weapon_rshg2_desc"

SWEP.Class = "eft_class_weapon_grenadelauncher"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")

SWEP.Trivia = {
    ["eft_trivia_manuf1"] = "eft_trivia_manuf_npo",
    ["eft_trivia_cal2"] = "eft_trivia_calibr_725heat",
    ["eft_trivia_act3"] = "eft_trivia_act_singleuse",
    ["eft_trivia_country4"] = "eft_trivia_country_rus",
    ["eft_trivia_year5"] = "2000"
}

-- SWEP.StandardPresets = {
-- "",
-- }

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_rshg.mdl"
SWEP.WorldModel = "models/weapons/w_rocket_launcher.mdl"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-8.3, 5.5, -2),
    Ang = Angle(-30, 0, 180),
    TPIKPos = Vector(-11, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.615, -3.5, -4.03),
    Ang = Angle(0, -0.4, 0),
    Midpoint = { Pos = Vector(2, 4, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54,
    -- OnSwitchToSight = function(self, slottbl)
    --     if CLIENT then ARC9EFTdrawnumber(100) end
    -- end,
}

SWEP.NoTPIKVMPos = true
SWEP.ActivePos = Vector(-0.7, -3.1, 0.35)

SWEP.SprintAng = Angle(36, 15, -20)
SWEP.SprintPos = Vector(2, -2, -5.0)
SWEP.NearWallAng = Angle(36, 15, -20)
SWEP.NearWallPos = Vector(2, -2, -5.0)

SWEP.CustomizeAng = Angle(90, 0, 22)
SWEP.CustomizePos = Vector(10, 26, 0)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(18.2, -4.25, -3.7)

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 3.0 * ARC9.MOAToAcc
SWEP.RPM = 666
SWEP.EFTErgo = 0
SWEP.AimDownSightsTime = 1.0
SWEP.AimDownSightsTimeHook = false
SWEP.BarrelLength = 75
SWEP.Ammo = "RPG_Round"
SWEP.Firemodes = {
    { Mode = 1 }
}

SWEP.Slot = 4


SWEP.ShootEnt = "arc9_eft_grenade_725"
SWEP.ShootEntForce = 4000
SWEP.Disposable = true
SWEP.BottomlessClip = true
SWEP.ReloadInSights = false

SWEP.SupplyLimit = 1
SWEP.ForceDefaultAmmo = 0

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 0.8 -- general multiplier of main recoil

SWEP.RecoilUp   = 3.25  -- up recoil
SWEP.RecoilSide = 0.8 -- sideways recoil
SWEP.RecoilRandomUp   = 0.55 -- random up/down
SWEP.RecoilRandomSide = 0.65   -- random left/right

SWEP.RecoilAutoControl = 3.1 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.69 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 0.05   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.5   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.08   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 0.3 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 5 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.15 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.3 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 19, -3)
SWEP.SubtleVisualRecoil = 0.75
SWEP.SubtleVisualRecoilDirection = 2.75
SWEP.SubtleVisualRecoilSpeed = 1

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

SWEP.MuzzleParticle = "muzzleflash_M82"
SWEP.NoShellEject = true
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellSounds = ARC9EFT.Shells556


------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/rpg26/"

SWEP.ShootSound = { path .. "rpg26_fire_outdoor_close1.ogg", path .. "rpg26_fire_outdoor_close2.ogg", path .. "rpg26_fire_outdoor_close3.ogg", path .. "rpg26_fire_outdoor_close4.ogg", path .. "rpg26_fire_outdoor_close5.ogg" }
SWEP.ShootSoundIndoor = { path .. "rpg26_indoor_fire_close1.ogg", path .. "rpg26_indoor_fire_close2.ogg", path .. "rpg26_indoor_fire_close3.ogg", path .. "rpg26_indoor_fire_close4.ogg", path .. "rpg26_indoor_fire_close5.ogg" }

SWEP.DistantShootSound = { path .. "rpg26_fire_outdoor_distant1.ogg", path .. "rpg26_fire_outdoor_distant2.ogg", path .. "rpg26_fire_outdoor_distant3.ogg", path .. "rpg26_fire_outdoor_distant4.ogg", path .. "rpg26_fire_outdoor_distant5.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "rpg26_indoor_fire_distant1.ogg", path .. "rpg26_indoor_fire_distant2.ogg", path .. "rpg26_indoor_fire_distant3.ogg", path .. "rpg26_indoor_fire_distant4.ogg", path .. "rpg26_indoor_fire_distant5.ogg" }

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 1.63
SWEP.DropMagazineSounds = { path .. "riffle_drop_concrete_01.ogg", path .. "riffle_drop_concrete_02.ogg", path .. "riffle_drop_concrete_03.ogg", path .. "riffle_drop_concrete_04.ogg", path .. "riffle_drop_concrete_05.ogg" }
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 90, 0)
SWEP.DropMagazineVelocity = Vector(0, 33, 0)
SWEP.DropMagazineModel = "models/weapons/arc9/darsu_eft/w_rshg2_dropped.mdl"

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = { 
    [1] = "patron_in_weapon",
}

SWEP.Hook_TranslateAnimation = function(swep, anim)
    -- local elements = swep:GetElements()
    -- if !IsFirstTimePredicted() then return end

    -- if anim == "reload" or anim == "reload_empty" then
    --     if nomag then return "reload_single" end
    --     if empty then return "reload_empty" .. mag end
    --     return anim .. mag
    -- end
end


SWEP.ReloadHideBoneTables = {
    [1] = {
        "weapon",
        "weapon_trigger_spring",
        "weapon_trigger",
        "weapon_sight_rear",
        "weapon_sight_front",
        "shellport",
        "weapon_ring",
        "weapon_ring_base",
        "weapon_cap_rear",
    },
}

local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}


SWEP.Animations = {
    ["idle"] = { 
        Source = "idle", 

        -- Time = 100,       -- REMOVE TIME !!!!!!!!
    },

    ["idle_sights"] = { Source = "idle_sights" },


    ["draw"] = { 
        Source = "draw", 
        EventTable = { 
            { s = "arc9_eft_shared/weap_in.ogg", t = 0.0 },
            { s =  path .. "rpg26_gunflip_1.ogg", t = 0.05 },
            { s =  path .. "rpg26_sight_up_rear.ogg", t = 0.88 },
            -- { s =  path .. "rpg26_sight_up_rear.ogg", t = 1.05 },
            { s =  path .. "rpg26_pin_out.ogg", t = 1.65 },
            { s =  path .. "rpg26_sight_up_rear.ogg", t = 2.4 },
            { s =  path .. "rpg26_gunflip_5.ogg", t = 3 },
        } 
    },

    ["holster"] = { 
        Source = "holster", 
        EventTable = { 
            -- { s =  path .. "rpg26_gunflip_1.ogg", t = 0.05 },
            { s =  path .. "rpg26_sight_down_rear.ogg", t = 0.36 },
            { s =  path .. "rpg26_sight_down_front.ogg", t = 0.96 },
            { s =  path .. "rpg26_gunflip_2.ogg", t = 1.42 },
            { s =  path .. "rpg26_pin_in.ogg", t = 2.02 },
            { s =  path .. "rpg26_gunflip_6.ogg", t = 2.8 },
            { s = "arc9_eft_shared/weap_out.ogg", t = 2.8 },
        } 
    },


    ["enter_sights"] = {
        Source = "sights_in",
        NoStatAffectors = true,
        FireASAP = true,
        MinProgress = 1,
        -- EventTable = {
        --     { s =  path .. "rpg26_gunflip_5.ogg", t = 0.0 },
        -- },
        Time = 0.4
    },

    ["exit_sights"] = {
        Source = "sights_out",
        NoStatAffectors = true,
        FireASAP = true,
        MinProgress = 1,
        -- EventTable = {
        --     { s =  path .. "rpg26_gunflip_6.ogg", t = 0.0 },
        -- },
        Time = 0.4
    },

    ["fire"] = { 
        Source = "fire_combined",
        EventTable = { 
            { s =  path .. "rpg26_fire_button.ogg", t = 0 },
            { s =  path .. "rpg26_gunflip_3.ogg", t = 0.35 },
            -- { s = "arc9_eft_shared/weap_out.ogg", t = 0.4 },
            {hide = 1, t = 1},
        },
        MinProgress = 1,
        NoStatAffectors = true,
        DropMagAt = 1
    },
    ["fire_sights"] = { 
        Source = "fire_combined",
        EventTable = { 
            { s =  path .. "rpg26_fire_button.ogg", t = 0 },
            { s =  path .. "rpg26_gunflip_3.ogg", t = 0.35 },
            -- { s = "arc9_eft_shared/weap_out.ogg", t = 0.4 },
            {hide = 1, t = 1},
        },
        MinProgress = 1,
        NoStatAffectors = true,
        DropMagAt = 1
    },
    
    ["inspect"] = {
        Source = "inspect",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = {
            { s =  path .. "rpg26_gunflip_2.ogg", t = 0.1 },
            { s =  path .. "rpg26_finger.ogg", t = 1.43 },
            { s =  path .. "rpg26_gunflip_5.ogg", t = 4.09 },
        } 
    },
}


------------------------- |||           Attachments            ||| -------------------------

-- SWEP.Attachments = {
--     {
--         PrintName = "Custom slot",
--         Category = {"eft_custom_slot", "eft_custom_rpg"},
--         Bone = "weapon",
--         Pos = Vector(0, 4, -2),
--         Ang = Angle(0, -90, 0),
--         -- CosmeticOnly = true,
--     },
-- }

SWEP.DoFireAnimation = false -- own correct anim later
SWEP.Throwable = true -- throwable but overriding throwable stuff
SWEP.NoFireDuringSighting = true

local singleusebehaviour = GetConVar("arc9_eft_singleuse_behaviour")

function SWEP:ThinkGrenade()
    local owner = self:GetOwner()

	if self:GetSafe() and owner:KeyPressed(IN_ATTACK) then self:ToggleSafety(false) return end

	if self:GetSightAmount() == 0 and owner:KeyPressed(IN_ATTACK) then self:EnterSights() return end
    
    if self:GetAnimLockTime() > CurTime() then return end

    if !self:GetGrenadePrimed() then
        if self:GetGrenadeRecovering() then
            if (singleusebehaviour:GetBool() or (self:GetProcessedValue("Disposable", true) and !self:HasAmmoInClip())) and SERVER then
                self:Remove()
                owner:ConCommand("lastinv") -- switch to prev weapon
            else
                self:PlayAnimation("draw", 1, true)
                self:SetGrenadeRecovering(false)
            end
        elseif owner:KeyDown(IN_ATTACK) and self:HasAmmoInClip() and (!owner:KeyDown(IN_USE) or !self:GetProcessedValue("PrimaryBash", true)) then
            self:SetGrenadePrimed(true)
            self:SetGrenadePrimedTime(CurTime())
        end
    else
        if self:GetSightAmount() > 0.9 and owner:KeyDown(IN_ATTACK) and self:HasAmmoInClip() and (!owner:KeyDown(IN_USE) or !self:GetProcessedValue("PrimaryBash", true)) and !self:StillWaiting() then
            self:DoPrimaryAttack()
            
        end

        self:SetGrenadeRecovering(true)
    end
end

SWEP.Hook_PrimaryAttack = function(self)
    self:PlayAnimation("fire", 1, true, true)
    
    self:SetGrenadePrimed(false)

    -- self:ExitSights() -- sights out anim too bad
    self:SetInSights(false)
    self:SetShouldHoldType()


    -- backblast
    local owner = self:GetOwner()

    if IsValid(owner) and owner:IsPlayer() then
        local tr = util.TraceLine( {
            start = owner:EyePos(),
            endpos = owner:EyePos() + owner:EyeAngles():Forward() * -64,
            filter = owner
        } )

        -- debugoverlay.Line(owner:EyePos(), tr.HitPos)
        if tr.Hit then
            timer.Simple(0, function() 
                local d = DamageInfo()
                d:SetDamage( 105 )
                d:SetAttacker( owner )
                d:SetDamageType( DMG_SLOWBURN ) 

                owner:TakeDamageInfo( d )

                if IsValid(tr.Entity) and (tr.Entity:IsNPC() or tr.Entity:IsPlayer() or tr.Entity:IsNextBot()) then
                    tr.Entity:TakeDamageInfo( d )
                end
            end)

            ParticleEffect( "m79_smoke_e", tr.HitPos, Angle( 0, 0, 0 ) )
        end
    end



    -- second muzzleflash
    local data = EffectData()
    data:SetEntity(self)
    data:SetAttachment(2)
    data:SetSurfaceProp(1)

    local muzzle = "arc9_muzzleeffect"

    util.Effect(muzzle, data, true)
end

SWEP.BuildMultiSight = function() end

SWEP.MultiSightTable = {
    {
        Pos = Vector(-4.615, -3.5, -4.03),
        Ang = Angle(0, -0.4, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(50) end
        end,
    },
    {
        Pos = Vector(-4.615, -3.5, -4.03 - 0.15),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(100) end
        end,
    },
    {
        Pos = Vector(-4.615, -3.5, -4.03 - 0.25),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(150) end
        end,
    },
    {
        Pos = Vector(-4.615, -3.5, -4.03 - 0.4),
        Ang = Angle(0, 0.2, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(200) end
        end,
    },
    {
        Pos = Vector(-4.615, -3.5, -4.03 - 0.45),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(250) end
        end,
    },
    {
        Pos = Vector(-4.615 + 0.05, -3.5, -4.03 - 0.55),
        Ang = Angle(0, 0.15, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(300) end
        end,
    },
    {
        Pos = Vector(-4.615 + 0.05, -3.5, -4.03 - 0.87),
        Ang = Angle(0, 2.05, 0),
        Magnification = 1.1,
        ViewModelFOV = 54,
        CrosshairInSights = false,
        OnSwitchToSight = function(self, slottbl)
            if CLIENT then ARC9EFTdrawnumber(350) end
        end,
    },
}

local gp25zeroing = {1.5, 4.5, 7.25, 9.4, 11.3, 14.1, 15.6} -- negro

local zeroang = Angle(1.5, 0, 0)
SWEP.ShootAngOffsetHook = function(swep, val) 
    if swep:GetInSights() then
        -- print(gp25zeroing[swep:GetMultiSight()], swep:GetMultiSight())
        return Angle(gp25zeroing[swep:GetMultiSight()], 0, 0)
    end

    return zeroang
end
SWEP.ShootAngOffset = Angle(1.5, 0, 0) -- default 50m

SWEP.DynamicConditions = {
    ["Recoil"] = true,
    ["ShootAngOffset"] = true,
}

SWEP.CustomPoseParamsHandler = function(swep, ent, iswm)
    local vall = swep:GetInSights() and swep:GetMultiSight() - 1 or 0
    swep.smoothvall = Lerp(FrameTime()*5, swep.smoothvall or 0, vall)

    ent:SetPoseParameter("zeroing", swep.smoothvall)
end