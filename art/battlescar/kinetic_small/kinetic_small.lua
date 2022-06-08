-- LuaDC version 0.9.19
-- 5/23/2004 11:08:09 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
TO_Random = 0
TO_ShipAligned = 1
TT_HeavyDamage = 1
type = "POINT"
version = 3
radius = 5
scarProbability = 0.75
shallowAngleDeg = 10
minScarDist = 5
textureOrient = TO_Random
textures = 
    { 
        { "Kinetic_Large/Kinetic.tga", 10, }, 
        { "Kinetic_Large/Kinetic01.tga", 15, }, 
    }
heavyDamageTextures = 
    { 
        { "Bullet/Explosion.tga", 50, }, 
    }
fxProbability = 0.75
fxs = 
    { 
        { "dmg_battlescar_explosion_combo", 1, TT_HeavyDamage, }, 
    }
