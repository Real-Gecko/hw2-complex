-- LuaDC version 0.9.19
-- 5/23/2004 7:23:36 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = AttackRun
Data = 
{ 
    howToBreakFormation = StraightAndScatter, 
    maxBreakDistance = 1600, 
    distanceFromTargetToBreak = 250, 
    safeDistanceFromTargetToDoActions = 600, 
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
    BeingAttackedActions = 
        { 
        { 
            Type = PickNewTarget, 
            Weighting = 9, }, 
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
    FiringActions = 
        { 
        { 
            Type = NoAction, 
            Weighting = 10, }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "JinkLeft", }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "JinkRight", }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "RollCW", }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "RollCCW", }, 
        }, }
