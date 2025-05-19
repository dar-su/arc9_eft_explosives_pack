SWEP.Base = "arc9_base_nade"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")
SWEP.Spawnable = false 
SWEP.AdminOnly = false
SWEP.NoDynamicKillIcon = true
SWEP.NotForNPCs = true
SWEP.EntitySelectIcon = true

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_rgd5")
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_grenade")
SWEP.Description = ARC9:GetPhrase("eft_weapon_rgd5_desc")
SWEP.Credits = { 
    ["eft_trivia_author1"] = "Darsu", 
    ["eft_trivia_assets2"] = "Battlestate Games LTD", 
}

SWEP.Slot = 4

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = ARC9:GetPhrase("eft_fmode_throw")
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

SWEP.MirrorVMWMHeldOnly = true

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

SWEP.HolsterPos = Vector(0, 0, 0)
SWEP.HolsterAng = Angle(0, 0, 0)

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
SWEP.IsQuickGrenade = true


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


SWEP.EFT_Tripwireable = true

SWEP.FiremodeSound = false
SWEP.FiremodeAnimLock = true
SWEP.Hook_ModifyBodygroups = function(swep, data)
    local eles = data.elements
    local mdl = data.model

    mdl:SetBodygroup(1, (swep:GetFinishFiremodeAnimTime() > 0 or swep:GetFiremode() == 2) and 1 or 0)
end


if SERVER then
    util.AddNetworkString("arc9eftdefusegrenade")
    util.AddNetworkString("arc9eftdefuseprogress")
end

-- EFT_ghostcsent = EFT_ghostcsent or nil
-- EFT_ghostcsent2 = EFT_ghostcsent2 or nil
-- EFT_ghostcsent3 = EFT_ghostcsent3 or nil
-- if EFT_ghostcsent then EFT_ghostcsent:Remove() end -- remove this later
-- if EFT_ghostcsent2 then EFT_ghostcsent2:Remove() end
-- if EFT_ghostcsent3 then EFT_ghostcsent3:Remove() end

local EFT_ghostcsent, EFT_ghostcsent2, EFT_ghostcsent3 = nil, nil, nil

local ghostmdl, ghostmdl2 = "models/weapons/arc9/darsu_eft/mining_kit_peg1.mdl", "models/weapons/arc9/darsu_eft/mining_kit_peg2.mdl"
local cred, cgreen, cred2, cgreen2 = Color(255, 0, 0, 160), Color(0, 255, 0, 160), Color(96, 0, 0, 110), Color(0, 96, 0, 110)
local wmat = Material("models/debug/debugwhite")

local vup = Vector(0, 0, 1)
local v2 = Vector(2, 2, 3)
local v3 = Vector(-2, -2, 0)
local v4 = Vector(1, 1, 1)
local v5 = Vector(-1, -1, -1)

local soilmats = {
    [MAT_DIRT] = true,
    [MAT_FLESH] = true,
    [MAT_SAND] = true,
    [MAT_GRASS] = true,
    [MAT_FOLIAGE] = true,
    [MAT_SLOSH] = true,
    [MAT_SNOW] = true
}

function SWEP:EFT_TraceCheckTripwire()
    local owner = self:GetOwner()

    local tr = util.TraceHull({
        maxs = v2,
        mins = v3,
        start = owner:EyePos(),
        endpos = owner:EyePos() + owner:EyeAngles():Forward() * 3 / 0.024,
        filter = owner
    })

    local valid = tr.Hit and tr.HitWorld and tr.HitNormal:Length() > 0.9 and math.abs(tr.HitNormal:Dot(vup)) > 0.98

    if (self:GetEFTTripwireState() or 0) == 1 then
        local pos2 = self:GetEFTTripwireFirstPos()
        local dist = pos2:Distance(tr.HitPos)

        valid = valid and dist > 0.8 / 0.024 and dist < 3 / 0.024 and math.abs(tr.HitPos.z - pos2.z) < 0.3 / 0.024

        if valid then
            local tr2 = util.TraceHull({
                start = tr.HitPos + vup * 6.76,
                endpos = pos2 + vup * 5.5,
                maxs = v4,
                mins = v5,
                -- filter = owner
            })
            if tr2.Hit then valid = false end
        end
    end
    
    if SERVER then self.EFT_TripwireLastIsSoil = valid and soilmats[tr.MatType] end

    return valid, tr.HitPos
end

local v1 = Vector(0, 0, 2.5)
local function ahhawire( self )
    if IsValid(EFT_ghostcsent) then
        local p1 = self:GetPos() + self:GetForward() * 2.4 - self:GetRight() * 0.74 + self:GetUp() * 5.5
        local p2 = EFT_ghostcsent:GetPos() + EFT_ghostcsent:GetUp() * 6.76
        render.SetColorMaterial()
        render.DrawBeam(p1, p2, 0.25, 0, 1, self.Valid and cgreen2 or cred2)
    end
	self:DrawModel()
end

SWEP.Hook_Think = function(self)
    if CLIENT and self:GetOwner() == LocalPlayer() then
        if self:GetFiremode() == 2 and self:GetFinishFiremodeAnimTime() == 0 then
            local owner = self:GetOwner()
            local state = self:GetEFTTripwireState() or 0
            if !IsValid(EFT_ghostcsent) then
                EFT_ghostcsent = ClientsideModel(ghostmdl2)
                EFT_ghostcsent:Spawn()
                EFT_ghostcsent:SetMaterial("models/debug/debugwhite")
                EFT_ghostcsent:SetRenderMode( RENDERMODE_TRANSALPHA )
            end

            if state == 0 then
                local valid, pos = self:EFT_TraceCheckTripwire()
                EFT_ghostcsent:SetPos(pos)
                EFT_ghostcsent:SetAngles(Angle(0, owner:EyeAngles().y - 90, 0))
                EFT_ghostcsent:SetColor(valid and cgreen or cred)
                
                if IsValid(EFT_ghostcsent2) then EFT_ghostcsent2:Remove() end
                if IsValid(EFT_ghostcsent3) then EFT_ghostcsent3:Remove() end
            end

            
            if state == 1 then
                if !IsValid(EFT_ghostcsent2) then
                    EFT_ghostcsent2 = ClientsideModel(ghostmdl)
                    EFT_ghostcsent2:Spawn()
                    EFT_ghostcsent2:SetMaterial("models/debug/debugwhite")
                    EFT_ghostcsent2:SetRenderMode( RENDERMODE_TRANSALPHA )
                    EFT_ghostcsent2.RenderOverride = ahhawire
                end

                if !IsValid(EFT_ghostcsent3) then
                    EFT_ghostcsent3 = ClientsideModel(self.WorldModel)
                    EFT_ghostcsent3:Spawn()
                    EFT_ghostcsent3:SetMaterial("models/debug/debugwhite")
                    EFT_ghostcsent3:SetRenderMode( RENDERMODE_TRANSALPHA )
                end

                local valid, pos = self:EFT_TraceCheckTripwire()
                EFT_ghostcsent2:SetPos(pos)

                local ang1 = Angle(0, (EFT_ghostcsent:GetPos() - EFT_ghostcsent2:GetPos()):Angle().y, 0)
                EFT_ghostcsent2:SetAngles(ang1)
                EFT_ghostcsent:SetAngles(ang1)
                EFT_ghostcsent3:SetPos(EFT_ghostcsent2:GetPos() + EFT_ghostcsent2:GetForward() * 1.5 + v1)
                EFT_ghostcsent3:SetAngles(ang1)
                EFT_ghostcsent3:SetColor(valid and cgreen or cred)

                EFT_ghostcsent2:SetColor(valid and cgreen or cred)
                EFT_ghostcsent2.Valid = valid
            end
        end
    end
end

if CLIENT then
    local nextcheckk = 0
    hook.Add("Think", "EFTTripwire", function()
        if nextcheckk < CurTime() and (IsValid(EFT_ghostcsent) or IsValid(EFT_ghostcsent2) or IsValid(EFT_ghostcsent3)) then
            local lp = LocalPlayer()
            local wep = IsValid(lp) and lp:GetActiveWeapon()

            if !IsValid(lp) or !IsValid(wep) or !wep.EFT_Tripwireable or wep:GetFiremode() != 2 then
                if IsValid(EFT_ghostcsent) then EFT_ghostcsent:Remove() end
                if IsValid(EFT_ghostcsent2) then EFT_ghostcsent2:Remove() end
                if IsValid(EFT_ghostcsent3) then EFT_ghostcsent3:Remove() end
            end

            nextcheckk = CurTime() + 0.15
        end
    end)

    net.Receive("arc9eftdefusegrenade", function() -- silly unnetworked vars
        local ent = net.ReadEntity()
        if IsValid(ent) then
            ent.Defused = !ent.Defused
            if !ent.Defused then 
                ent.SpawnTime = CurTime()
                ent:SetModel(ent.TrueModel or ent.Model)
            end
        end
    end)
end

SWEP.HookP_BlockFire = function(self)
    if SERVER and self:GetFiremode() == 2 then
        local owner = self:GetOwner()
        if owner:KeyPressed(IN_ATTACK) and self:GetNextPrimaryFire() <= CurTime() then
            self:EFT_PlaceTripwire()
            self:SetNextPrimaryFire(CurTime() + 0.5)
        end
        return true 
    end
end

function SWEP:EFT_PlaceTripwire()
    local valid, pos = self:EFT_TraceCheckTripwire()
    if !valid then 
        self:SetEFTTripwireState(0)
        net.Start("arc9eftbadtripwire")
        net.Send(self:GetOwner())
        return 
    end
    local state = ((self:GetEFTTripwireState() or 0) + 1) % 3

    if state == 1 then self:SetEFTTripwireFirstPos(pos) 
    elseif state == 2 then
        self:TakeAmmo()
        self:PlayAnimation("fire_mine", 1, true)

        timer.Simple(0.5, function()
            if IsValid(self) then
                local pos2 = self:GetEFTTripwireFirstPos()
                local peg1, peg2, grenade = ents.Create("sent_eft_tripwire_peg"), ents.Create("sent_eft_tripwire_peg"), ents.Create(self.ShootEnt)
                
                peg1:SetPos(pos)
                peg2:SetPos(pos2)

                local ang1 = Angle(0, (pos2 - pos):Angle().y, 0)
                peg1:SetAngles(ang1)
                peg2:SetAngles(ang1)
                grenade:SetAngles(ang1)
                grenade:SetPos(pos + peg1:GetForward() * 1.5 + Vector(0, 0, 2.5))

                peg1:SetModel(ghostmdl)
                peg2:SetModel(ghostmdl2)
                
                peg1.ImMain = true
                peg1.Grenade = grenade
                peg1.Link = peg2
                peg2.Link = peg1
                grenade.Defused = true

                net.Start("arc9eftdefusegrenade")
                net.WriteEntity(grenade)
                net.Broadcast()

                grenade.Model = self.WorldModel

                peg1:Spawn()
                peg2:Spawn()

                grenade:SetOwner(self:GetOwner())
                grenade:Spawn()
                grenade:SetMoveType( MOVETYPE_NONE )
                grenade:SetCollisionGroup( COLLISION_GROUP_WORLD )

                peg1.Rope = constraint.Rope(peg1, peg2, 0, 0, Vector(2.4, 0.74, 5.5), Vector(0, 0, 6.76), 64, 0, 0, 0.05, "cable/cable2", false)
                peg2.Rope = peg1.Rope

                self:SetEFTTripwireState(0)

                self:SetGrenadeRecovering(true)
                self:SetFiremode(1)

                local snd = self.EFT_TripwireLastIsSoil and ")weapons/darsu_eft/grenades/tripwire_grenade_planting_soil.ogg" or ")weapons/darsu_eft/grenades/tripwire_grenade_planting_concrete.ogg"
		        self:EmitSound(snd, 120)
            end
        end)
    end

    self:SetEFTTripwireState(state)
end


DEFINE_BASECLASS(SWEP.Base)
function SWEP:SetupDataTables(...)
    BaseClass.SetupDataTables(self, ...)
    self:NetworkVar("Int", "EFTTripwireState")
    self:NetworkVar("Vector", "EFTTripwireFirstPos")
    self:SetEFTTripwireState(0)
    self:SetEFTTripwireFirstPos(Vector(0, 0, 0))
end