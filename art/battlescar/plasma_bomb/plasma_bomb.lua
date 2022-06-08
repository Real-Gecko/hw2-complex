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
radius = 10
scarProbability = 0.5
shallowAngleDeg = 60
minScarDist = 5
textureOrient = TO_ShipAligned
textures = 
    { 
        { "Plasma_Bomb/plasma_bomb_01.tga", 5, }, 
        { "Plasma_Bomb/plasma_bomb_02.tga", 3, }, 
        { "Plasma_Bomb/plasma_bomb_03.tga", 15, }, 
    }
heavyDamageTextures = 
    { 
        { "Bullet/Explosion.tga", 100, }, 
    }
fxProbability = 0.3
fxs = 
    { 
        { "dmg_sml_missle_combo", 20, TT_HeavyDamage, }, 
    }
