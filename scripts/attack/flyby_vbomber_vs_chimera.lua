-- LuaDC version 0.9.19
-- 5/23/2004 7:23:36 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = AttackRun
Data = 
{ 
    howToBreakFormation = ClimbAndPeelOff, 
    maxBreakDistance = 1900*1.25, 
    distanceFromTargetToBreak = 1100*1.35, 
    safeDistanceFromTargetToDoActions = 3000*1.35, 
    coordSysToUse = Target, 
    horizontalMin = 0.1, 
    horizontalMax = 0.4, 
    horizontalFlip = 1, 
    verticalMin = 0.6, 
    verticalMax = 0.7, 
    verticalFlip = 0, 
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