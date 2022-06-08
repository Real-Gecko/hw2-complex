AttackStyleName = FlyRound
Data = {
    howToBreakFormation = StraightAndScatter,
    axisRotation = 16,
    maxAxisRotation = 45,
    circleSegmentAngle = 45,
    angleVariation = 0.25,
    --circleHeight = -300,
    distanceFromTarget = 3400 * 1.35,
    distanceVariation = 0.25,
    percentChanceOfCutting = 0.5,
    minSegmentsToCut = 1,
    maxSegmentsToCut = 2,
    RandomActions = {
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
