local CybranHailfire01Projectile = import('/mods/BlackOpsFAF-EXUnits/lua/EXBlackOpsprojectiles.lua').CybranHailfire01ChildProjectile

-- UEF Small Yield Nuclear Bomb
---@class CybranHailfire01child : CybranHailfire01Projectile
CybranHailfire01child = Class(CybranHailfire01Projectile) {

   OnCreate = function(self)
        CybranHailfire01Projectile.OnCreate(self)
        for _, v in self.FxTrails do
            CreateEmitterOnEntity(self,self.Army,v)
        end
   end,
}

TypeClass = CybranHailfire01child