AttackStyleName = AttackRun
Data = {
    howToBreakFormation = StraightAndScatter,
    maxBreakDistance = 1300 * 1.25,
    distanceFromTargetToBreak = 500 * 1.35,
    safeDistanceFromTargetToDoActions = 1500 * 1.35,
    coordSysToUse = Target,
    horizontalMin = 0.6,
    horizontalMax = 0.9,
    horizontalFlip = 1,
    verticalMin = 0.5,
    verticalMax = 0.8,
    verticalFlip = 0,
    RandomActions = {
        {
            Type = PickNewTarget,
            Weighting = 1, },
        {
            Type = NoAction,
            Weighting = 2, },
    },
    BeingAttackedActions = {},
    FiringActions = {
        {
            Type = NoAction,
            Weighting = 25, },
        {
            Type = FlightManeuver,
            Weighting = 3,
            FlightManeuverName = "RollCW", },
        {
            Type = FlightManeuver,
            Weighting = 3,
            FlightManeuverName = "RollCCW", },
    }, }
