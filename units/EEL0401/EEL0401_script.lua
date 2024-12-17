----------------------------------------------------------------------------
-- Author(s):  Exavier Macbeth
-- Summary  :  UEF Disruptor
----------------------------------------------------------------------------

local TMobileFactoryUnit = import('/lua/terranunits.lua').TMobileFactoryUnit
local WeaponsFile = import('/mods/BlackOpsFAF-EXUnits/lua/EXBlackOpsweapons.lua')
local SonicDisruptorWave = WeaponsFile.SonicDisruptorWave
local TSAMLauncher = import('/lua/terranweapons.lua').TSAMLauncher

---@class EEL0401 : TMobileFactoryUnit
EEL0401 = Class(TMobileFactoryUnit) {
    Weapons = {
        EXDisruptorWave = Class(SonicDisruptorWave) {
            OnCreate = function(self)
                SonicDisruptorWave.OnCreate(self)
                self.Chargeupeffects = {}
            end,
            PlayFxRackSalvoChargeSequence = function(self)
                if self.Chargeupeffects then
                    for k, v in self.Chargeupeffects do
                        v:Destroy()
                    end
                    self.Chargeupeffects = {}
                end
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Emitter_Muzzle_01', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_01_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Emitter_Muzzle_02', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_01_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Emitter_Muzzle_01', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_04_emit.bp'):ScaleEmitter(0.25))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Emitter_Muzzle_02', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_04_emit.bp'):ScaleEmitter(0.25))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Emitter_Muzzle_01', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_hit_01_emit.bp'):ScaleEmitter(0.25))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Emitter_Muzzle_02', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_hit_01_emit.bp'):ScaleEmitter(0.25))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_01', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_02', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_03', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_04', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_05', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_06', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_07', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_08', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_09', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_10', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_11', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_12', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_13', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_14', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))
                table.insert(self.Chargeupeffects, CreateAttachedEmitter(self.unit, 'Wave_Muzzle_15', self.unit:GetArmy(), '/mods/BlackOpsFAF-EXUnits/effects/emitters/exsonicdisruptor_muzzle_03_emit.bp'):ScaleEmitter(0.5))

                SonicDisruptorWave.PlayFxRackSalvoChargeSequence(self)
            end,
            PlayFxRackSalvoReloadSequence = function(self)
                if self.Chargeupeffects then
                    for k, v in self.Chargeupeffects do
                        v:Destroy()
                    end
                    self.Chargeupeffects = {}
                end
                SonicDisruptorWave.PlayFxRackSalvoChargeSequence(self)
            end,
            PlayFxWeaponPackSequence = function(self)
                if self.Chargeupeffects then
                    for k, v in self.Chargeupeffects do
                        v:Destroy()
                    end
                    self.Chargeupeffects = {}
                end
                SonicDisruptorWave.PlayFxWeaponPackSequence(self)
            end,
        },
        HVMTurret = Class(TSAMLauncher) {},
    },

    ---@param self EEL0401
    ---@param builder Unit
    ---@param layer Layer
    OnStopBeingBuilt = function(self,builder,layer)
        TMobileFactoryUnit.OnStopBeingBuilt(self,builder,layer)
        -- If created with F2 on Water, then play the transform anim.
        if(self:GetCurrentLayer() == 'Water') then
            self.AT1 = self:ForkThread(self.TransformThread, true)
        end
    end,

    ---@param self EEL0401
    ---@param new string
    ---@param old string
    OnLayerChange = function(self, new, old)
        TMobileFactoryUnit.OnLayerChange(self, new, old)
        if(old ~= 'None') then
            if(self.AT1) then
                self.AT1:Destroy()
                self.AT1 = nil
            end
            if(new == 'Water') then
                self.AT1 = self:ForkThread(self.TransformThread, true)
            elseif(new == 'Land') then
                self.AT1 = self:ForkThread(self.TransformThread, false)
            end
        end
    end,

    ---@param self EEL0401
    ---@param Water boolean
    TransformThread = function(self, Water)
        if(not self.AnimManip) then
            self.AnimManip = CreateAnimator(self)
        end
        local bp = self.Blueprint

        if(Water) then
            -- Change movement speed to the multiplier in blueprint
            self:SetImmobile(true)
            self.AnimManip:PlayAnim(bp.Display.AnimationTransform)
            self.AnimManip:SetRate(0.5)
            self.IsWaiting = true
            WaitFor(self.AnimManip)
            self.IsWaiting = false
            self:SetImmobile(false)
            self.Trash:Add(self.AnimManip)
        else
            self:SetImmobile(true)
            -- Revert speed to maximum speed
            self.AnimManip:PlayAnim(bp.Display.AnimationTransform)
            self.AnimManip:SetAnimationFraction(1)
            self.AnimManip:SetRate(-0.5)
            self.IsWaiting = true
            WaitFor(self.AnimManip)
            self.IsWaiting = false
            self.AnimManip:Destroy()
            self.AnimManip = nil
            self:SetImmobile(false)
        end
    end,
}

TypeClass = EEL0401