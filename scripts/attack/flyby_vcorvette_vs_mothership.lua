AttackStyleName = AttackRun
Data = {
    howToBreakFormation = StraightAndScatter,
    maxBreakDistance = 1900 * 1.25,
    distanceFromTargetToBreak = 850 * 1.35,
    safeDistanceFromTargetToDoActions = 1200 * 1.35,
    useTargetUp = 0,
    coordSysToUse = Target,
    horizontalMin = 0.6,
    horizontalMax = 0.9,
    horizontalFlip = 1,
    verticalMin = 0.2,
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
