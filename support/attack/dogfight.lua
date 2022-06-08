-- LuaDC version 0.9.19
-- 5/23/2004 7:23:35 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = DogFight
Data = 
{ 
    howToBreakFormation = StraightAndScatter, 
    minSpeedFraction = 0.8, 
    RandomActions = 
        { 
        { 
            Type = PickNewTarget, 
            Weighting = 10, }, 
        { 
            Type = NoAction, 
            Weighting = 140, }, 
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
            FlightManeuverName = "JinkLeft", }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "JinkRight", }, 
        }, 
    BeingAttackedActions = 
        { 
        { 
            Type = NoAction, 
            Weighting = 400, }, 
        { 
            Type = PickNewTarget, 
            Weighting = 200, }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "JinkLeft", }, 
        { 
            Type = FlightManeuver, 
            Weighting = 1, 
            FlightManeuverName = "JinkRight", }, 
        }, 
    FiringActions = {}, }
