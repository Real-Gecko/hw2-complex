-- LuaDC version 0.9.19
-- 5/23/2004 7:23:39 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
AttackStyleName = JustShoot
Data = 
{ 
    howToBreakFormation = BreakImmediately, 
    faceTargetHorizontal = 1, 
    faceTargetVertical = 0, 
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
    FiringActions = {}, }
