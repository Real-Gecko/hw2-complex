-- LuaDC version 0.9.19
-- 5/23/2004 11:08:09 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
TO_Random = 0
TO_ShipAligned = 1
type = "POINT"
version = 3
radius = 100
scarProbability = 1
shallowAngleDeg = 60
minScarDist = 5
textureOrient = TO_ShipAligned
textures = 
    { 
        { "Hgn_Torpedo/Torpedo_01.tga", 100, }, 
        { "Hgn_Torpedo/Torpedo_02.tga", 100, }, 
        { "Hgn_Torpedo/Torpedo_03.tga", 100, }, 
    }
fxProbability = 0.3
fxs = 
    { 
        { "dmg_sml_missle_combo", 20, TT_HeavyDamage, }, 
    }
