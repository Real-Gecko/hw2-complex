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
textures = {
    { "Kinetic_Large/Kinetic.tga", 10, },
    { "Kinetic_Large/Kinetic01.tga", 15, },
}
heavyDamageTextures = {
    { "Bullet/Explosion.tga", 50, },
}
fxProbability = 0.75
fxs = {
    { "dmg_battlescar_explosion_combo", 1, TT_HeavyDamage, },
}
