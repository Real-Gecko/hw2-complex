-- LuaDC version 0.9.19
-- 5/23/2004 7:23:38 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = FaceTarget
Data = 
{ 
    howToBreakFormation = StraightAndScatter, 
    inRangeFactor = 0.85, 
    slideDistanceMultiplier = 1.5, 
    tooSlowSpeed = 3, 
    tooFastMultiplier = 1.4, 
    facingAngle = 0, 
    moveAttackMaxDistanceMultiplier = 1.2, 
    tryToMatchHeight = 0, 
    tryToGetAboveTarget = 1, 
    angleFromUp = 45, 
    maxTimeToSpendFlyingToAbove = 4, 
    flyToTargetBecauseItsFarOutOfRangeDelay = 0, 
    flyToTargetBecauseItsMovingAwayDelay = 1, 
    stopAndFaceTheTargetDelay = 1, 
    flyToAboveTheTargetDelay = 2, 
    RandomActions = 
        { 
        { 
            Type = PickNewTarget, 
            Weighting = 1, }, 
        { 
            Type = NoAction, 
            Weighting = 2, }, 
        { 
            Type = MoveRoundTarget, 
            minParam = DegToRad(0), 
            maxParam = DegToRad(45), 
            Weighting = 1, }, 
        }, 
    BeingAttackedActions = {}, 
    FiringActions = 
        { 
        { 
            Type = InterpolateTarget, 
            Weighting = 1, 
            minParam = 3, 
            maxParam = 3, }, 
        { 
            Type = NoAction, 
            Weighting = 2, }, 
        }, }
function DegToRad(angle)
    return angle * 2 * 3.141592653589 / 360
end
