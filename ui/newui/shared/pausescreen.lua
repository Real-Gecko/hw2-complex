PauseScreen = 
{ 
    onShow = "UI_SetButtonPressed('New1', 'btnTacticPause', 1)",
		onHide = "UI_SetButtonPressed('New1', 'btnTacticPause', 0)",
    size = 
        { 0, 0, 800, 600, }, 
    stylesheet = "HW2StyleSheet", 
    pixelUVCoords = 1, 
    clickThrough = 1, 
    RootElementSettings = {}, 
; 
{ 
    type = "TextLabel", 
    name = "m_lblSPPause", 
    position = 
        { 302, 352, }, 
    size = 
        { 200, 20, }, 
    visible = 1, 
    Text = 
    { 
        text = "PAUSE", 
        textStyle = "IGHeading1", 
        color = 
            { 255, 255, 255, 255, }, 
        vAlign = "Middle", 
        hAlign = "Center", }, }, 
}
