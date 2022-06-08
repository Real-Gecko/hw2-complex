TacticsMenu = 
{ 
    size = 
        { 588, 396, 204, 44, }, 
    stylesheet = "HW2StyleSheet", 
		--clickThrough = 1,
    claimMousePress = 1, 
    RootElementSettings = 
    { 
        onMouseClicked = "UI_ToggleScreen( 'TacticsMenu', 0)", }, 
    pixelUVCoords = 1, 
    onShow = "UI_SetButtonTextHotkey('TacticsMenu', 'btnPassive', '$3132', 34); UI_SetButtonTextHotkey('TacticsMenu', 'btnDefensive', '$3131', 35); UI_SetButtonTextHotkey('TacticsMenu', 'btnAggressive', '$3130', 36); UI_HideScreen('StrikeGroupsMenu')", 
; 
{ 
    type = "Frame", 
    name = "rootFrame", 
    position = 
        { 0, 0, }, 
    size = 
        { 204, 44, }, 
    giveParentMouseInput = 1, 
; 
{ 
    type = "Frame", 
    name = "menu", 
    position = 
        { 0, 0, }, 
    size = 
        { 204, 44, }, 
    backgroundColor = "IGColorBackground1", 
; 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnPassive", 
    toggleButton = 0, 
    position = 
        { 2, 2, }, 
    size = 
        { 200, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, }, 
    --onMouseReleased = "UI_ToggleScreen( 'TacticsMenu', 0)", 
    hotKeyID = 34, 
}, 

{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnDefensive", 
    toggleButton = 0, 
    position = 
        { 2, 16, }, 
    size = 
        { 200, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, }, 
    --onMouseReleased = "UI_ToggleScreen( 'TacticsMenu', 0)", 
    hotKeyID = 35, 
}, 

{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnAggressive", 
    toggleButton = 0, 
    position = 
        { 2, 30, }, 
    size = 
        { 200, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, }, 
    --onMouseReleased = "UI_ToggleScreen( 'TacticsMenu', 0)", 
    hotKeyID = 36, 
},  

}, 

}, 
}
