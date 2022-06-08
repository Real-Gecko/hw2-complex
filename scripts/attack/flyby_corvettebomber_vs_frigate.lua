AttackStyleName = AttackRun
Data = {
    howToBreakFormation = StraightAndScatter,
    maxBreakDistance = 2400 * 1.25,
    distanceFromTargetToBreak = 1850 * 1.35,
    safeDistanceFromTargetToDoActions = 1800 * 1.35,
    useTargetUp = 0,
    coordSysToUse = TargetPoint,
    horizontalMin = 0.9,
    horizontalMax = 0.9,
    horizontalFlip = 1,
    verticalMin = 0.4,
    verticalMax = 0.6,
    verticalFlip = 1,
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
            Weighting = 13, },
        {
            Type = FlightManeuver,
            Weighting = 1,
            FlightManeuverName = "RollCW", },
        {
            Type = FlightManeuver,
            Weighting = 1,
            FlightManeuverName = "RollCCW", },
    }, }
