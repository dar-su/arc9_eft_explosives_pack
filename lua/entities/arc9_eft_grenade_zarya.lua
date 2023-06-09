AddCSLuaFile()

ENT.Type 				= "anim"
ENT.Base 				= "arc9_nade_base"
ENT.Spawnable 			= false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE

ENT.PrintName  = "Zarya stun grenade"

ENT.Model = "models/weapons/arc9/darsu_eft/w_zarya.mdl"
ENT.SphereSize = 2
ENT.PhysMat = "grenade"

ENT.LifeTime = 2
ENT.ExplodeOnImpact = false

local shakeradiusM = 12 * 2 -- contusion range will be divided by 2, flash range is not

local contusionLength = 30


ENT.SmokeTrail = false

local path = "weapons/darsu_eft/grenades/"

ENT.BounceSounds = { path .. "grenade_collision_flash_russian1.ogg", path .. "grenade_collision_flash_russian2.ogg", path .. "grenade_collision_flash_russian3.ogg", path .. "grenade_collision_flash_russian4.ogg" }

ENT.ExplosionSounds = ""

local dirs = {
    Angle(-90, 90, 0), -- Up            angled by 15 degrees
    Angle(-75, 135, 0), -- Up right
    Angle(-105, 135, 0), -- Up left
    Angle(-105, 45, 0), -- Up front
    Angle(-105, 225, 0), -- Up back
}

local traceResultTable = {}

local traceTable = {
    start = 0,
    endpos = 0,
    mask = 16513,
    output = traceResultTable
}

local function checkindoor(ent)
    local hits = 0
    local endmult = 0

    local eyePos = ent:GetPos()
    local eyePos2 = Vector(eyePos)

    traceTable.start = ent:GetPos()
    traceTable.endpos = eyePos2

    for i, dir in ipairs(dirs) do
        local dirForward = dir:Forward()
        dirForward:Mul(500 * (i == 1 and 2 or 1))
        eyePos2:Set(eyePos)
        eyePos2:Add(dirForward)

        util.TraceLine(traceTable)

        local tr = traceResultTable

        if tr.Hit and !tr.HitSky then
            hits = hits + 1

            -- endmult = endmult + math.exp(math.min(math.ease.InExpo(1-tr.Fraction), 0.4)) / 10
        end

        -- if ARC9.Dev(2) then
            -- debugoverlay.Line(traceTable.start, traceTable.endpos, 3, (tr.Hit and !tr.HitSky) and Color(255,0,0) or color_white, true)
            -- if i == 8 then
                -- print(hits.."/8 indoor trace hits, fraction "..endmult)
            -- end
        -- end
    end

    return hits >= #dirs * 0.5
end

function ENT:Detonate()
    if not self:IsValid() then return end
    if self.Defused then return end
    local selfpos = self:GetPos()

    if self:WaterLevel() > 0 then
        local tr = util.TraceLine({
            start = selfpos,
            endpos = selfpos + Vector(0, 0, 1) * 1024,
            filter = self,
        })
        local tr2 = util.TraceLine({
            start = tr.HitPos,
            endpos = selfpos,
            filter = self,
            mask = MASK_WATER
        })
        ParticleEffect("grenade_flash", tr2.HitPos + Vector(0, 0, 8), Angle(0, 0, 0), nil)

        // Overpressure radius
        -- util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, selfpos, 512, 300)

        -- self:EmitSound("weapons/underwater_explode3.wav", 100)
        self:EmitSound(path .. "grenade_flash_start_outdoor_close.ogg", 140, 100, 10, nil, nil, 0)
    else
        ParticleEffect("grenade_flash", selfpos, Angle(0, 0, 0), nil)

        -- local radius = math.Rand(dmgradiusminM, dmgradiusmaxM) / 0.0254

        -- util.BlastDamage(self, IsValid(self:GetOwner()) and self:GetOwner() or self, selfpos, radius, dmg)
        
        -- util.ScreenShake(selfpos, 32, 0.76, 2, shakeradiusM / 0.0254)

        if checkindoor(self) then
            self:EmitSound(path .. "grenade_flash_start_indoor_close.ogg", 140, 100, 10, nil, nil, 0)
            self:EmitSound(path .. "grenade_flash_start_indoor_close.ogg", 140, 100, 10, nil, nil, 0) -- Louder!!!!!
            self:EmitSound(path .. "grenade_flash_start_indoor_close.ogg", 140, 100, 10, nil, nil, 0) -- Louder!!!!!

            self:EmitSound(path .. "grenade_flash_start_indoor_distant.ogg", 0, 100, 0.5, nil, nil, 0)

        else
            self:EmitSound(path .. "grenade_flash_start_outdoor_close.ogg", 140, 100, 10, nil, nil, 0)
            self:EmitSound(path .. "grenade_flash_start_outdoor_close.ogg", 140, 100, 10, nil, nil, 0) -- Louder!!!!!
            self:EmitSound(path .. "grenade_flash_start_outdoor_close.ogg", 140, 100, 10, nil, nil, 0) -- Louder!!!!!
            
            -- self:EmitSound(path .. "gren_expl1_distant.ogg", 250, nil, nil, nil, nil, 0)
            self:EmitSound(path .. "grenade_flash_start_outdoor_distant.ogg", 0, 100, 0.5, nil, nil, 0)
        end 

        -- contusion

        local potentionalcontusioned = ents.FindInSphere(selfpos, shakeradiusM / 0.0254)
        for i = 1, #potentionalcontusioned do
            if potentionalcontusioned[i]:IsPlayer() then
                local ply = potentionalcontusioned[i]

                local contmult = (shakeradiusM - selfpos:Distance(ply:GetPos()) * 0.0254) / shakeradiusM * 2 -- how close we are

                net.Start("arc9eftexplosion")
                net.WriteFloat(contmult)
                net.WriteUInt(contusionLength, 9)
                net.WriteBool(true) -- flashbanga
                net.WriteEntity(self) -- flashbanga
                net.Send(ply)


                ply:ViewPunch(Angle(1, 0, -5) * contmult)
            end
        end
    end

    if SERVER then
        local dir = self.HitVelocity or self:GetVelocity()

        if self.Boost <= 0 then
            dir = Vector(0, 0, -1)
        end

        self:FireBullets({
            Attacker = self,
            Damage = 0,
            Tracer = 0,
            Distance = 256,
            Dir = dir,
            Src = self:GetPos(),
            Callback = function(att, tr, dmg)
                if self.Scorch then
                    util.Decal("Scorch", tr.StartPos, tr.HitPos - (tr.HitNormal * 16), self)
                end
            end
        })
    end
    self.Defused = true

    SafeRemoveEntityDelayed(self, self.SmokeTrailTime)
    self:SetRenderMode(RENDERMODE_NONE)
    self:SetMoveType(MOVETYPE_NONE)
    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
end

-- fucker for light
if CLIENT then
    function ENT:Initialize()
        self.SpawnTime = CurTime()
    end

    function ENT:Think()
        if self.Defused then return end

        if self.LifeTime > 0 and self.SpawnTime + self.LifeTime < CurTime() and !self.LightPlayed then
            local light = DynamicLight(self:EntIndex())

            if light then
                light.Pos = self:GetPos() + Vector(0, 0, 4)
                light.r = 255
                light.g = 255
                light.b = 255
                light.Brightness = 5
                light.Decay = 2500
                light.Size = 2048*2
                light.DieTime = CurTime() + 0.2
            end
            
            self.LightPlayed = true 

            return
        end
    end
end


-- if CLIENT then    
--     function ENT:Draw()
--         self:DrawModel()
--     end
-- else
--     function ENT:Initialize()
--         self:SetModel(modela)

--         self:PhysicsInit(SOLID_VPHYSICS)
--         self:SetMoveType(MOVETYPE_VPHYSICS)
--         self:SetSolid(SOLID_VPHYSICS)

--         local phys = self:GetPhysicsObject()
--         -- self:NextThink(CurTime() + 0.1)

--         if phys:IsValid() then
--             phys:Wake()
--             phys:SetMass(1)
--             phys:SetDamping(-0.06, 10)
--         end

--         self.radius = radius
--         self.damage = damgae
--         self.FuseTime = CurTime() + fusetime

--         self.DestroyTime = CurTime() + 20
--     end

--     function ENT:Think()
--         self:NextThink(CurTime() + 0.1)
--         if CurTime() > self.DestroyTime then
--             self:Remove()
--         end
--     end


--     function ENT:PhysicsCollide(data, phys)
--         timer.Simple(0,function()
--             if IsValid(self) then
--                 if CurTime() > self.FuseTime then
--                     self:Explode()
--                 else
--                     self:FireBullets({Attacker = self:GetOwner(), Damage = self.damage, Force = 16, HullSize = 16, Tracer = false, Dir = self:GetAngles():Forward(), Src = self:GetPos(), IgnoreEntity = self, AmmoType = 9})
--                     self:Remove()
--                     -- self.DUD = true 
--                 end
--             end
--         end)
--     end

--     function ENT:Explode()
--         -- if self.DUD then return end
        
--         if !IsValid(self:GetOwner()) then
--             self:Remove()
--             return
--         end
        
--         util.ScreenShake(self:GetPos(), 10, 1, 2, 1000)
--         util.BlastDamage(self, self:GetOwner(), self:GetPos(), self.radius/0.0254, self.damage)

--         -- local effectdata = EffectData() -- hl2
--         -- effectdata:SetOrigin(self:GetPos())
--         -- effectdata:SetFlags(4)
--         -- util.Effect("Explosion", effectdata)

--         ParticleEffect("explosion_m79", self:GetPos(), Angle(-90, 0, 0)) -- uc common

--         self:EmitSound("weapons/darsu_eft/ak/gp34/gren_expl2_close.ogg", 70, nil, nil, nil, nil, 1)
--         self:EmitSound("weapons/darsu_eft/ak/gp34/gren_expl2_dist1.ogg", 90, nil, nil, nil, nil, 1)
--         self:EmitSound("weapons/darsu_eft/ak/gp34/gren_expl2_dist2.ogg", 999, nil, nil, nil, nil, 1)
--         self:Remove()
--     end

--     function ENT:Use(ply, caller)
--     end
-- end