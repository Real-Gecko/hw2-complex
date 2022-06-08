-- LuaDC version 0.9.19
-- 5/23/2004 7:23:36 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = AttackRun
Data = 
{ 
    howToBreakFormation = StraightAndScatter, 
    maxBreakDistance = 1200, 
    distanceFromTargetToBreak = 450, 
    safeDistanceFromTargetToDoActions = 800, 
    useTargetUp = 0, 
    coordSysToUse = Attacker, 
    horizontalMin = 0.6, 
    horizontalMax = 0.9, 
    horizontalFlip = 1, 
    verticalMin = 0.2, 
    verticalMax = 0.6, 
    verticalFlip = 1, 
    RandomActions = 
        { 
        { 
            Type = PickNewTarget, 
            Weighting = 1, }, 
        { 
            Type = NoAction, 
            Weighting = 2, }, 
        }, 
    BeingAttackedActions = {}, 
    FiringActions = {}, }
