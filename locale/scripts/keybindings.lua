-- LuaDC version 0.9.19
-- 30/04/2005 4.12.39
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
keyFocusModifier = ALTKEY
keyGuardModifier = GKEY
keyHarvestModifier = HKEY
keyAddModifier = SHIFTKEY
keyRepairModifier = YKEY
keySpecialAttackModifier = ZKEY
AggressiveTactics = 0
DefensiveTactics = 1
PassiveTactics = 2
fekeys = 
    { 
        { 1, "FE_ExitToWindows()", INKE_KeyDown, 0, 5300, 
            { ALTKEY, F4KEY, }, 
        }, 
    }
keys = 
    
    { 
        { 2, eExit, INKE_KeyDown, 0, "$5300", 
            { ALTKEY, F4KEY, }, 
        }, 
        { 4, eMenu, INKE_KeyDown, 1, "$5302", 
            { F12KEY, }, 
        }, 
        { 5, eScuttle, INKE_KeyDown, 0, "$5303", 
            { CONTROLKEY, SHIFTKEY, SKEY, }, 
        }, 
        { 6, eScuttle, INKE_KeyDown, 1, "$5304", 
            { CONTROLKEY, SHIFTKEY, QKEY, }, 
        }, 
        { 7, eSpecialAttack, INKE_KeyDown, 0, "$5305", 
            { keySpecialAttackModifier, }, 
        }, 
        { 10, eMove, INKE_KeyDown, 0, "$5308", 
            { MKEY, }, 
        }, 
        { 11, eHyperspace, INKE_KeyDown, 0, "$5309", 
            { JKEY, }, 
        }, 
        { 12, eHarvest, INKE_KeyDown, 0, "$5310", 
            { keyHarvestModifier, }, 
        }, 
        { 13, eHarvest, INKE_KeyUp, 1, "$5311", 
            { keyHarvestModifier, }, 
        }, 
        { 14, eGuard, INKE_KeyDown, 0, "$5312", 
            { keyGuardModifier, }, 
        }, 
        { 15, eDock, INKE_KeyDown, 0, "$5313", 
            { DKEY, }, 
        }, 
        { 16, eParade, INKE_KeyDown, 0, "$5314", 
            { SHIFTKEY, PKEY, }, 
        }, 
        { 17, eCancelOrders, INKE_KeyDown, 0, "$5315", 
            { SKEY, }, 
        }, 
        { 18, eCancel, INKE_KeyDown, 1, "$5316", 
            { ESCKEY, }, 
        }, 
        { 20, eRepair, INKE_KeyDown, 0, "$5318", 
            { keyRepairModifier, }, 
        }, 
        { 21, eRallyPoint, INKE_KeyDown, 0, "$5319", 
            { CONTROLKEY, RKEY, }, 
        }, 
        { 22, eRallyObject, INKE_KeyDown, 0, "$5320", 
            { CONTROLKEY, PKEY, }, 
        }, 
        { 23, eRetire, INKE_KeyDown, 0, "$5321", 
            { CONTROLKEY, SHIFTKEY, XKEY, }, 
        }, 
        { 24, eDropMinesInstant, INKE_KeyDown, 0, "$5322", 
            { NKEY, }, 
        }, 
        { 25, eMoveAttack, INKE_KeyDown, 0, "$5323", 
            { CONTROLKEY, AKEY, }, 
        }, 
        { 26, eMilitary, INKE_KeyDown, 0, "$5324", 
            { AKEY, }, 
        }, 
        { 27, eMilitary, INKE_KeyUp, 1, "$5325", 
            { AKEY, }, 
        }, 
        { 28, "formStrikeGroup(0)", INKE_KeyDown, 0, "$5326", 
            { F5KEY, }, 
        }, 
        { 29, "formStrikeGroup(1)", INKE_KeyDown, 0, "$5327", 
            { F6KEY, }, 
        }, 
        { 30, "formStrikeGroup(2)", INKE_KeyDown, 0, "$5328", 
            { F7KEY, }, 
        }, 
        { 31, "leaveStrikeGroup()", INKE_KeyDown, 0, "$5329", 
            { F8KEY, }, 
        }, 
        { 32, ePreviousTactic, INKE_KeyDown, 0, "$5330", 
            { LBRACK, }, 
        }, 
        { 33, eNextTactic, INKE_KeyDown, 0, "$5331", 
            { RBRACK, }, 
        }, 
        { 34, eTactics, INKE_KeyDown, PassiveTactics, "$5332", 
            { F2KEY, }, 
        }, 
        { 35, eTactics, INKE_KeyDown, DefensiveTactics, "$5333", 
            { F3KEY, }, 
        }, 
        { 36, eTactics, INKE_KeyDown, AggressiveTactics, "$5334", 
            { F4KEY, }, 
        }, 
        { 37, eTurboEnable, INKE_KeyDown, 4, "$5335", 
            { SHIFTKEY, BACKSLASHKEY, }, 
        }, 
        { 38, eTurboEnable, INKE_KeyDown, 1, "$5336", 
            { CONTROLKEY, BACKSLASHKEY, }, 
        }, 
        { 39, eTurboEnable, INKE_KeyDown, 2, "$5337", 
            { BACKSLASHKEY, }, 
        }, 
        { 40, ePause, INKE_KeyDown, 4, "$5338", 
            { PAUSEKEY, }, 
        }, 
        { 41, eFocusHome, INKE_KeyDown, 0, "$5339", 
            { HOMEKEY, }, 
        }, 
        { 42, eFocus, INKE_KeyDown, 0, "$5340", 
            { FKEY, }, 
        }, 
        { 43, eSelectAllVisible, INKE_KeyDown, 0, "$5341", 
            { CAPSLOCKKEY, }, 
        }, 
        { 44, eNextFocus, INKE_KeyDown, 0, "$5342", 
            { PAGEUPKEY, }, 
        }, 
        { 45, ePreviousFocus, INKE_KeyDown, 0, "$5343", 
            { PAGEDOWNKEY, }, 
        }, 
        { 46, eZoom, INKE_KeyDown, 1, "$5344", 
            { FLYWHEEL_UP, }, 
        }, 
        { 47, eZoom, INKE_KeyDown, 0, "$5345", 
            { FLYWHEEL_DOWN, }, 
        }, 
        { 48, eTacticalOverlay, INKE_KeyDown, 0, "$5346", 
            { TABKEY, }, 
        }, 
        { 49, eResearchManager, INKE_KeyDown, 2, "$5347", 
            { RKEY, }, 
        }, 
        { 50, eBuildManager, INKE_KeyDown, 0, "$5348", 
            { BKEY, }, 
        }, 
        { 51, eBuildManager, INKE_KeyDown, 2, "$5349", 
            { CONTROLKEY, BKEY, }, 
        }, 
        { 52, eLaunchManager, INKE_KeyDown, 0, "$5350", 
            { LKEY, }, 
        }, 
        { 53, eLaunchManager, INKE_KeyDown, 2, "$5351", 
            { CONTROLKEY, LKEY, }, 
        }, 
        { 54, eSensorsManager, INKE_KeyDown, 0, "$5352", 
            { SPACEKEY, }, 
        }, 
        { 55, eHUD, INKE_KeyDown, 0, "$5353", 
            { BACKSPACEKEY, }, 
        }, 
        { 56, eTempWaypoint, INKE_KeyDown, 0, "$5354", 
            { WKEY, }, 
        }, 
        { 60, eGroup, INKE_KeyDown, 1, "$5358", 
            { CONTROLKEY, ONEKEY, }, 
        }, 
        { 61, eGroup, INKE_KeyDown, 2, "$5359", 
            { CONTROLKEY, TWOKEY, }, 
        }, 
        { 62, eGroup, INKE_KeyDown, 3, "$5360", 
            { CONTROLKEY, THREEKEY, }, 
        }, 
        { 63, eGroup, INKE_KeyDown, 4, "$5361", 
            { CONTROLKEY, FOURKEY, }, 
        }, 
        { 64, eGroup, INKE_KeyDown, 5, "$5362", 
            { CONTROLKEY, FIVEKEY, }, 
        }, 
        { 65, eGroup, INKE_KeyDown, 6, "$5363", 
            { CONTROLKEY, SIXKEY, }, 
        }, 
        { 66, eGroup, INKE_KeyDown, 7, "$5364", 
            { CONTROLKEY, SEVENKEY, }, 
        }, 
        { 67, eGroup, INKE_KeyDown, 8, "$5365", 
            { CONTROLKEY, EIGHTKEY, }, 
        }, 
        { 68, eGroup, INKE_KeyDown, 9, "$5366", 
            { CONTROLKEY, NINEKEY, }, 
        }, 
        { 69, eGroup, INKE_KeyDown, 10, "$5367", 
            { CONTROLKEY, ZEROKEY, }, 
        }, 
        { 70, eSelectGroup, INKE_KeyDown, 1, "$5368", 
            { ONEKEY, }, 
        }, 
     
        { 71, eSelectGroup, INKE_KeyDown, 2, "$5369", 
            { TWOKEY, }, 
        }, 
        { 72, eSelectGroup, INKE_KeyDown, 3, "$5370", 
            { THREEKEY, }, 
        }, 
        { 73, eSelectGroup, INKE_KeyDown, 4, "$5371", 
            { FOURKEY, }, 
        }, 
        { 74, eSelectGroup, INKE_KeyDown, 5, "$5372", 
            { FIVEKEY, }, 
        }, 
        { 75, eSelectGroup, INKE_KeyDown, 6, "$5373", 
            { SIXKEY, }, 
        }, 
        { 76, eSelectGroup, INKE_KeyDown, 7, "$5374", 
            { SEVENKEY, }, 
        }, 
        { 77, eSelectGroup, INKE_KeyDown, 8, "$5375", 
            { EIGHTKEY, }, 
        }, 
        { 78, eSelectGroup, INKE_KeyDown, 9, "$5376", 
            { NINEKEY, }, 
        }, 
        { 79, eSelectGroup, INKE_KeyDown, 10, "$5377", 
            { ZEROKEY, }, 
        }, 
        { 80, "SendBuildOrder(0)", INKE_KeyDown, 1, "$5378", 
            { ALTKEY, ONEKEY, }, 
        }, 
        { 81, "SendBuildOrder(1)", INKE_KeyDown, 2, "$5379", 
            { ALTKEY, TWOKEY, }, 
        }, 
        { 82, "SendBuildOrder(2)", INKE_KeyDown, 3, "$5380", 
            { ALTKEY, THREEKEY, }, 
        }, 
        { 83, "SendBuildOrder(3)", INKE_KeyDown, 4, "$5381", 
            { ALTKEY, FOURKEY, }, 
        }, 
        { 84, "SendBuildOrder(4)", INKE_KeyDown, 5, "$5382", 
            { ALTKEY, FIVEKEY, }, 
        }, 
        { 85, "SendBuildOrder(5)", INKE_KeyDown, 6, "$5383", 
            { ALTKEY, SIXKEY, }, 
        }, 
        { 86, "SendBuildOrder(6)", INKE_KeyDown, 7, "$5384", 
            { ALTKEY, SEVENKEY, }, 
        }, 
        { 87, "SendBuildOrder(7)", INKE_KeyDown, 8, "$5385", 
            { ALTKEY, EIGHTKEY, }, 
        }, 
        { 88, "SendBuildOrder(8)", INKE_KeyDown, 9, "$5386", 
            { ALTKEY, NINEKEY, }, 
        }, 
        { 89, "SendBuildOrder(9)", INKE_KeyDown, 0, "$5387", 
            { ALTKEY, ZEROKEY, }, 
        }, 
        { 90, "SelectBuildFacility('Fighter')", INKE_KeyDown, 0, "$5388", 
            { ALTKEY, FKEY, }, 
        }, 
        { 91, "SelectBuildFacility('Corvette')", INKE_KeyDown, 0, "$5389", 
            { ALTKEY, CKEY, }, 
        }, 
        { 92, "SelectBuildFacility('Frigate')", INKE_KeyDown, 0, "$5390", 
            { ALTKEY, RKEY, }, 
        }, 
        { 93, "SelectBuildFacility('Capital')", INKE_KeyDown, 0, "$5391", 
            { ALTKEY, AKEY, }, 
        }, 
        { 94, "SelectBuildFacility('Utility')", INKE_KeyDown, 0, "$5392", 
            { ALTKEY, TKEY, }, 
        }, 
        { 95, "SelectBuildFacility('SubSystemModule')", INKE_KeyDown, 0, "$5393", 
            { ALTKEY, DKEY, }, 
        }, 
        { 96, "SelectBuildFacility('Platform')", INKE_KeyDown, 0, "$5394", 
            { ALTKEY, WKEY, }, 
        }, 
        { 97, "SelectBuildFacility('SubSystemSensors')", INKE_KeyDown, 0, "$5395", 
            { ALTKEY, QKEY, }, 
        }, 
        { 98, "SelectBuildFacility('All')", INKE_KeyDown, 0, "$5396", 
            { ALTKEY, LKEY, }, 
        }, 
        { 99, "SendCancelShipOrder()", INKE_KeyDown, 0, "$5397", 
            { ALTKEY, XKEY, }, 
        }, 
        { 100, "SendPauseShipOrder()", INKE_KeyDown, 0, "$5398", 
            { ALTKEY, EKEY, }, 
        }, 
        { 101, "SendCancelSubSystemOrder()", INKE_KeyDown, 0, "$5399", 
            { ALTKEY, VKEY, }, 
        }, 
        { 102, "SendPauseSubSystemOrder()", INKE_KeyDown, 0, "$5400", 
            { ALTKEY, GKEY, }, 
        }, 
        { 113, eShiftModifier, INKE_KeyDown, 0, "$5401", 
            { keyAddModifier, }, 
        }, 
        
        { 115, eControlModifier, INKE_KeyDown, INKE_KeyDown, "$5403", 
            { CONTROLKEY, }, 
        }, 
        { 116, eControlModifier, INKE_KeyUp, INKE_KeyUp, "$5404", 
            { CONTROLKEY, }, 
        }, 
        { 117, eFocusModifier, INKE_KeyDown, INKE_KeyDown, "$5405", 
            { keyFocusModifier, }, 
        }, 
        { 118, eFocusModifier, INKE_KeyUp, INKE_KeyUp, "$5406", 
            { keyFocusModifier, }, 
        }, 
        { 119, eSwitchPlayer, INKE_KeyDown, 0, "$5407", 
            { CONTROLKEY, XKEY, }, 
        }, 
        { 120, eShipScriptReload, INKE_KeyDown, 0, "$5408", 
            { SHIFTKEY, RKEY, }, 
        }, 
        { 121, eScriptReload, INKE_KeyDown, 0, "$5409", 
            { SHIFTKEY, LKEY, }, 
        }, 
        { 122, eFlightManeuverTest, INKE_KeyDown, 0, "$5410", 
            { SHIFTKEY, F1KEY, }, 
        }, 
        { 123, eFlightManeuverTest, INKE_KeyDown, 1, "$5411", 
            { SHIFTKEY, F2KEY, }, 
        }, 
        { 124, eFlightManeuverTest, INKE_KeyDown, 2, "$5412", 
            { SHIFTKEY, F3KEY, }, 
        }, 
        { 125, eQuickSave, INKE_KeyDown, 1, "$5413", 
            { CONTROLKEY, F5KEY, }, 
        }, 
        { 126, eQuickLoad, INKE_KeyDown, 1, "$5414", 
            { CONTROLKEY, F8KEY, }, 
        }, 
        { 129, eRestartLevel, INKE_KeyDown, 1, "$5415", 
            { SHIFTKEY, F8KEY, }, 
        }, 
        { 130, "screenshot()", INKE_KeyDown, 0, "$5416", 
            { SCROLLKEY, }, 
        }, 
        { 131, eChat, INKE_KeyDown, 0, "$5417", 
            { ENTERKEY, }, 
        }, 
        { 133, eRenderToggle, INKE_KeyDown, 0, "$5419", 
            { CONTROLKEY, F9KEY, }, 
        }, 
        { 134, eSuperTurbo, INKE_KeyDown, 0, "$5420", 
            { CONTROLKEY, F10KEY, }, 
        }, 
        { 135, eSuperTurbo, INKE_KeyDown, 1, "$5421", 
            { CONTROLKEY, SHIFTKEY, F10KEY, }, 
        }, 
        { 136, eFiltersToggle, INKE_KeyDown, 0, "$5422", 
            { NUMLOCKKEY, }, 
        }, 
        --{ 137, "UI_ToggleScreenGameRubrick( 'InGameMenu', 'ObjectivesList', 0, gr_campaign)", INKE_KeyDown, 0, "$5423", 
        --    { OKEY, }, 
        --}, 
        { 138, "MainUI_UserEvent( eRallyPoint)", INKE_KeyDown, 0, "$5424", 
            { PKEY, }, 
        }, 
        { 139, "UI_ToggleScreenGameRubrick( 'InGameMenu', 'BuildQueueMenu', 0, gr_all)", INKE_KeyDown, 0, "$5425", 
            { QKEY, }, 
        }, 
        { 137, "UI_ToggleScreenGameRubrick( 'InGameMenu', 'UnitCapInfoPopup1', 0, gr_all)", INKE_KeyDown, 0, "$5423", 
            { OKEY, }, 
        }, 
        { 140, "UI_ToggleScreenGameRubrick( 'InGameMenu', 'EventsScreen', 0, gr_all)", INKE_KeyDown, 0, "$5426", 
            { VKEY, }, 
        }, 
        { 141, "UI_ToggleScreenGameRubrick( 'InGameMenu', 'DiplomacyScreen', 0, gr_multiplayer)", INKE_KeyDown, 0, "$5427", 
            { KKEY, }, 
        }, 
        { 142, "UI_ToggleScreenGameRubrick( 'InGameMenu', 'SpeechRecall', 0, gr_campaign)", INKE_KeyDown, 0, "$5428", 
            { CONTROLKEY, KKEY, }, 
        }, 
        { 143, eDefenseField, INKE_KeyDown, 0, "$5429", 
            { TKEY, }, 
        }, 
        { 144, eCloak, INKE_KeyDown, 0, "$5430", 
            { CKEY, }, 
        }, 
        { 145, eCapture, INKE_KeyDown, 0, "$5431", 
            { UKEY, }, 
        }, 
     
    { 146, "MainUI_UserEventData2( eSpecialAttack, 0, 2)", INKE_KeyDown, 0, "$5434", 
        { EKEY, }, 
    , 
    { 147, eSensorPing, INKE_KeyDown, 0, "$5432", 
        { XKEY, }, 
    , 
    { 149, "UI_ToggleScreenGameRubrick( 'InGameMenu','UnitCapInfoPopup', 0, gr_all)", INKE_KeyDown, 0, "$5433", 
        { IKEY, }, 
    , 
    { 150, "UI_ToggleScreenElement('InGameMenu','NewTaskbar','specialButtons','NewTaskbar','commandButtons')", INKE_KeyDown, 0, "$5435", 
        { APOSTROPHEKEY, }, 
    , 
    { 151, "Camera_PanCmd(INKE_KeyDown,PS_Up)", INKE_KeyDown, 0, "$5436", 
        { ARRUP, }, 
    , 
    { 152, "Camera_PanCmd(INKE_KeyUp,PS_Up)", INKE_KeyUp, 0, "$5436", 
        { ARRUP, }, 
    , 
    { 153, "Camera_PanCmd(INKE_KeyDown,PS_Down)", INKE_KeyDown, 0, "$5437", 
        { ARRDOWN, }, 
    , 
    { 154, "Camera_PanCmd(INKE_KeyUp,PS_Down)", INKE_KeyUp, 0, "$5437", 
        { ARRDOWN, }, 
    , 
    { 155, "Camera_PanCmd(INKE_KeyDown,PS_Left)", INKE_KeyDown, 0, "$5438", 
        { ARRLEFT, }, 
    , 
    { 156, "Camera_PanCmd(INKE_KeyUp,PS_Left)", INKE_KeyUp, 0, "$5438", 
        { ARRLEFT, }, 
    , 
    { 157, "Camera_PanCmd(INKE_KeyDown,PS_Right)", INKE_KeyDown, 0, "$5439", 
        { ARRRIGHT, }, 
    , 
    { 158, "Camera_PanCmd(INKE_KeyUp,PS_Right)", INKE_KeyUp, 0, "$5439", 
        { ARRRIGHT, }, 
    , 
    { 159, "Camera_PanCmd(INKE_KeyDown,PS_ModUp)", INKE_KeyDown, 0, "$5440", 
        { INSERTKEY, }, 
    , 
    { 160, "Camera_PanCmd(INKE_KeyUp,PS_ModUp)", INKE_KeyUp, 0, "$5440", 
        { INSERTKEY, }, 
    , 
    { 161, "Camera_PanCmd(INKE_KeyDown,PS_ModDown)", INKE_KeyDown, 0, "$5441", 
        { DELETEKEY, }, 
    , 
    { 162, "Camera_PanCmd(INKE_KeyUp,PS_ModDown)", INKE_KeyUp, 0, "$5441", 
        { DELETEKEY, }, 
    , 
    { 163, "FE_FocusOnLastEvent()", INKE_KeyDown, 0, "$5442", 
        { NUMPAD0, }, 
    , 
    { 164, "SelectNextIdleHarvester()", INKE_KeyDown, 0, "$5443", 
        { GREATERTHAN, }, 
    , 
    { 165, eCameraDump, INKE_KeyDown, 0, "$5586", 
        { CONTROLKEY, F1KEY, }, 
    , 
    { 166, "ClearSelectedFromControlGroups()", INKE_KeyDown, 0, "$5444", 
        { CONTROLKEY, MINUSKEY, }, 
    , 
    { 167, "ClearAllControlGroups()", INKE_KeyDown, 0, "$5445", 
        { CONTROLKEY, SHIFTKEY, MINUSKEY, }, 
    },     

}