-- LuaDC version 0.9.19
-- 5/23/2004 7:23:35 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = AttackRun
Data = 
{ 
    howToBreakFormation = StraightAndScatter, 
    maxBreakDistance = 1600*1.25, 
    distanceFromTargetToBreak = 350*1.35, 
    safeDistanceFromTargetToDoActions = 1000*1.35, 
    coordSysToUse = Attacker, 
    horizontalMin = 0.6, 
    horizontalMax = 0.9, 
    horizontalFlip = 1, 
    verticalMin = 0.2, 
    verticalMax = 0.2, 
    verticalFlip = 1, 
    RandomActions = 
        { 
        { 
            Type = PickNewTarget, 
            Weighting = 1, }, 
        { 
            Type = NoAction, 
            Weighting = 30, }, 
        }, 
    BeingAttackedActions = {}, 
    FiringActions = 
        { 
        { 
            Type = NoAction, 
            Weighting = 13, }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "RollCW_slow", }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "RollCCW_slow", }, 
        }, }