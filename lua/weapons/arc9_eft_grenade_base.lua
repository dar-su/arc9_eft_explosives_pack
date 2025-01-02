SWEP.Base = "arc9_base_nade"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")
SWEP.Spawnable = false 
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = true
SWEP.NotForNPCs = true
SWEP.EntitySelectIcon = true

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_rgd5") or "RGD-5"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_grenade") or "Hand grenade"
SWEP.Description = [[RGD-5 (GAU index - 57-G-717) is an antipersonnel fragmentation time-delayed offensive hand grenade. The grenade's UZRGM fuze insures a time delay of 3.2 - 4.2 seconds. Due to the offensive type of the grenade, its fragments are relatively light and have a smaller dispersion radius.]]
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

SWEP.ForceDefaultAmmo = 0

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_rgd5.mdl"
SWEP.WorldModel = "models/weapons/w_eq_fraggrenade.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true

SWEP.TPIKforcelefthand = true
SWEP.TPIKParentToSpine4 = true  
SWEP.WorldModelOffset = {
    Pos = Vector(-6.5, 3, -11),
    Ang = Angle(20, -10, 195),

    TPIKPos = Vector(10, -1, 0),
    TPIKAng = Angle(0, 90, 90),
    Scale = 1,
}

function SWEP:DrawWorldModel() -- custom func to never draw custommodel when on ground and use regular wm
    local owner = self:GetOwner()

    if IsValid(owner) and owner:GetActiveWeapon() == self then
        self:DrawCustomModel(true)
        self:DoBodygroups(true)
        self:DrawLasers(true)
        self:DoTPIK()
        self:DrawFlashlightsWM()
    else
        self:DrawModel()
    end
end

SWEP.BottomlessClip = true
SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 3 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 0 -- Amount of reserve UBGL magazines you can take.
SWEP.Crosshair = false 

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0 -- How much the gun sways.

SWEP.ShootEnt = "arc9_eft_grenade_rgd5"
SWEP.Ammo = "grenade"

SWEP.CaseEffectQCA = 1
SWEP.ShellSmoke  = false
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/rgd5_skoba.mdl"
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

SWEP.SprintAng = Angle(0, -40, -5)
SWEP.SprintPos = Vector(-11.7, -2, -2)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(87, -25, -94.3)
SWEP.CustomizePos = Vector(-7.3, 21, 14)
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

SWEP.CantSafety = true 
-- SWEP.IsQuickGrenade = true


function SWEP:QuicknadeDeploy()
    local owner = self:GetOwner()
    self.ViewModelPos = Vector(0, 0, 0)
    self.ViewModelAng = Angle(0, 0, 0)

    owner.ARC9LastSelectedGrenade = self:GetClass()

    local WasDrawnByBind = owner:KeyDown(IN_GRENADE1) or owner.ARC9QuickthrowPls
    owner.ARC9QuickthrowPls = nil 
    
    local anim = "draw"
    if WasDrawnByBind and self:HasAnimation("quicknade") then anim = "quicknade" end

    if WasDrawnByBind then
        self.WasThrownByBind = true
        local t = self:PlayAnimation(anim, 1, true)
        local mp = self:GetAnimationEntry(anim).MinProgress or 1
        self:SetReady(true)

        self:SetGrenadePrimed(true)
        -- self:SetGrenadePrimedTime(CurTime())
        -- self:SetGrenadeTossing(owner:KeyDown(IN_ATTACK2))

        -- self:ThrowGrenade(ARC9.NADETHROWTYPE_NORMAL, t)
        self:ThrowGrenade(ARC9.NADETHROWTYPE_NORMAL, mp)
        self:SetGrenadeRecovering(true)
    else
        self:PlayAnimation(anim, self:GetProcessedValue("DeployTime", true, 1), true)
        self:SetReady(true)
    end
end