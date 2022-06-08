AttackStyleName = AttackRun
Data = {
    howToBreakFormation = StraightAndScatter,
    maxBreakDistance = 1300 * 1.25,
    distanceFromTargetToBreak = 500 * 1.35,
    safeDistanceFromTargetToDoActions = 1500 * 1.35,
    coordSysToUse = Target,
    horizontalMin = 0.3,
    horizontalMax = 0.6,
    horizontalFlip = 1,
    verticalMin = 0.65,
    verticalMax = 0.9,
    verticalFlip = 0,
    RandomActions = {
        {
            Type = PickNewTarget,
            Weighting = 1, },
        {
            Type = NoAction,
            Weighting = 9, },
    },
    BeingAttackedActions = {
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
    FiringActions = {
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
