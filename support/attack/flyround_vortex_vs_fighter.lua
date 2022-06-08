-- LuaDC version 0.9.19
-- 5/23/2004 7:23:38 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = FlyRound
Data = 
{ 
    howToBreakFormation = StraightAndScatter, 
    axisRotation = 16, 
    maxAxisRotation = 45, 
    circleSegmentAngle = 45, 
    angleVariation = 0.25, 
    --circleHeight = -300, 
    distanceFromTarget = 3200, 
    distanceVariation = 0.25, 
    percentChanceOfCutting = 0.5, 
    minSegmentsToCut = 1, 
    maxSegmentsToCut = 2, 
    RandomActions = 
        { 
        { 
            Type = PickNewTarget, 
            Weighting = 1, }, 
        { 
            Type = NoAction, 
            Weighting = 9, }, 
        }, 
    BeingAttackedActions = {}, 
    FiringActions = { 
        
        { 
            Type = NoAction, 
            Weighting = 55, 
          }, 
         {
      Type = FlightManeuver,
      Weighting = 1,
      FlightManeuverName = "JinkLeft",
    },
    {
      Type = FlightManeuver,
      Weighting = 1,
      FlightManeuverName = "JinkRight",
    },
        }, 
       }