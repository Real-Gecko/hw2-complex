-- LuaDC version 0.9.19
-- 5/23/2004 7:32:17 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
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
