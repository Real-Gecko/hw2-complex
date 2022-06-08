-- LuaDC version 0.9.19
-- 5/23/2004 7:23:39 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = AttackRun
Data = 
{ 
    howToBreakFormation = ClimbAndPeelOff, 
    maxBreakDistance = 2000, 
    distanceFromTargetToBreak = 500, 
    safeDistanceFromTargetToDoActions = 800, 
    coordSysToUse = Target, 
    horizontalMin = 0.6, 
    horizontalMax = 0.9, 
    horizontalFlip = 1, 
    verticalMin = 0.3, 
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
    BeingAttackedActions = 
        { 
        { 
            Type = PickNewTarget, 
            Weighting = 6, }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "RollCW", }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "RollCCW", }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "BarrelRoll", }, 
        }, 
    FiringActions = {}, }
