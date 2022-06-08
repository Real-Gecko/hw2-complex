-- LuaDC version 0.9.19
-- 5/23/2004 7:32:07 PM
-- LuaDC by Age2uN
-- on error send source file (compiled lua) and this outputfile to Age2uN@gmx.net
--
StrikeGroupsMenu = 
{ 
    size = 
        { 588, 94, 204, 348, }, 
    stylesheet = "HW2StyleSheet", 
    claimMousePress = 1, 
    RootElementSettings = 
    { 
    onMouseClicked = "UI_ToggleScreen( 'StrikeGroupsMenu', 0)", }, 
    pixelUVCoords = 1, 
    onShow = "UI_SetButtonTextHotkey('StrikeGroupsMenu', 'btnForm1', '$2735', 28); UI_SetButtonTextHotkey('StrikeGroupsMenu', 'btnForm2', '$2736', 29); UI_SetButtonTextHotkey('StrikeGroupsMenu', 'btnForm3', '$2737', 30); UI_SetButtonTextHotkey('StrikeGroupsMenu', 'btnLeave', '$3135', 31); UI_HideScreen('TacticsMenu')", 
    
; 
{ 
    type = "Frame", 
    name = "rootFrame", 
    position = 
        { 0, 0, }, 
    size = 
        { 204, 348, }, 
    giveParentMouseInput = 1, 
; 
{
			type = "Frame",
			name = "sgs1",
			position = {0, 0},
			size = {204,204},
			visible = 0,
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\sgs1.tga",		
				textureUV = {-88,-88,600,600},		
				color = OUTLINECOLOR,
			},		
;
{ 
    type = "Frame", 
    outerBorderWidth = 1,   
    position = {3, 3},  
    size = {198,198},
    borderColor = "FEColorPopupOutline",     
; 
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 5, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "CAPITAL PHALANX", }, 
		}, 		
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 14, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Type: heavy assault formation", }, 
		}, 	
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 23, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Target: multi ship class/type", }, 
		}, 																
},	
},
{
			type = "Frame",
			name = "sgs2",
			position = {0, 0},
			size = {204,204},
			visible = 0,
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\sgs2.tga",	
				textureUV = {-88,-88,600,600},			
				color = OUTLINECOLOR,
			},	
;
{ 
    type = "Frame", 
    outerBorderWidth = 1,   
    position = {3, 3},  
    size = {198,198},
    borderColor = "FEColorPopupOutline",     
; 
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 5, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "FRIGATE LINE", }, 
		}, 		
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 14, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Type: assault formation", }, 
		}, 	
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 23, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Target: multi ship class/type", }, 
		}, 																				
		},
		},		
{
			type = "Frame",
			name = "sgs3",
			position = {0, 0},
			size = {204,204},
			visible = 0,
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\sgs3.tga",	
				textureUV = {-88,-88,600,600},			
				color = OUTLINECOLOR,
			},
;
{ 
    type = "Frame", 
    outerBorderWidth = 1,   
    position = {3, 3},  
    size = {198,198},
    borderColor = "FEColorPopupOutline",     
; 
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 5, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "FIGHTER SCREEN", }, 
		}, 		
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 14, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Type: light assault formation", }, 
		}, 	
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 23, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Target: multi ship class/type", }, 
		}, 																					
		},	
		},				
{
			type = "Frame",
			name = "sgs4",
			position = {0, 0},
			size = {204,204},
			visible = 0,
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\sgs4.tga",	
				textureUV = {-88,-88,600,600},			
				color = OUTLINECOLOR,
			},		
;
{ 
    type = "Frame", 
    outerBorderWidth = 1,   
    position = {3, 3},  
    size = {198,198},
    borderColor = "FEColorPopupOutline",     
; 
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 5, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "POWER LINES", }, 
		}, 		
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 14, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Type: defensive formation", }, 
		}, 	
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 23, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Target: multi ship class/type", }, 
		}, 																			
		},	
		},				
{
			type = "Frame",
			name = "sgs5",
			position = {0, 0},
			size = {204,204},
			visible = 0,
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\sgs5.tga",	
				textureUV = {-88,-88,600,600},			
				color = OUTLINECOLOR,
			},	
;
{ 
    type = "Frame", 
    outerBorderWidth = 1,   
    position = {3, 3},  
    size = {198,198},
    borderColor = "FEColorPopupOutline",     
; 
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 5, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "DESTROYER/CRUISER SHIELD", }, 
		}, 		
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 14, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Type: defensive formation", }, 
		}, 	
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 23, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Target: multi ship class/type", }, 
		}, 																				
		},		
		},			
{
			type = "Frame",
			name = "sgs6",
			position = {0, 0},
			size = {204,204},
			visible = 0,
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\sgs6.tga",	
				textureUV = {-88,-88,600,600},			
				color = OUTLINECOLOR,
			},	
;
{ 
    type = "Frame", 
    outerBorderWidth = 1,   
    position = {3, 3},  
    size = {198,198},
    borderColor = "FEColorPopupOutline",     
; 
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 5, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "TORTOISE", }, 
		}, 		
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 14, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Type: light assault formation", }, 
		}, 	
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 23, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Target: single ship class/type", }, 
		}, 																				
		},	
		},				
{
			type = "Frame",
			name = "sgs7",
			position = {0, 0},
			size = {204,204},
			visible = 0,
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\sgs7.tga",	
				textureUV = {-88,-88,600,600},			
				color = OUTLINECOLOR,
			},
;
{ 
    type = "Frame", 
    outerBorderWidth = 1,   
    position = {3, 3},  
    size = {198,198},
    borderColor = "FEColorPopupOutline",     
; 
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 5, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "CLAW", }, 
		}, 		
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 14, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Type: light assault formation", }, 
		}, 	
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 23, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Target: single ship class/type", }, 
		}, 																					
		},	
		},				
{
			type = "Frame",
			name = "sgs8",
			position = {0, 0},
			size = {204,204},
			visible = 0,
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\sgs8.tga",	
				textureUV = {-88,-88,600,600},			
				color = OUTLINECOLOR,
			},	
;
{ 
    type = "Frame", 
    outerBorderWidth = 1,   
    position = {3, 3},  
    size = {198,198},
    borderColor = "FEColorPopupOutline",     
; 
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 5, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "ARROW", }, 
		}, 		
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 14, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Type: light assault formation", }, 
		}, 	
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 23, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Target: single ship class/type", }, 
		}, 																				
		},	
		},				
{
			type = "Frame",
			name = "sgs9",
			position = {0, 0},
			size = {204,204},
			visible = 0,
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\sgs9.tga",	
				textureUV = {-88,-88,600,600},			
				color = OUTLINECOLOR,
			},	
;
{ 
    type = "Frame", 
    outerBorderWidth = 1,   
    position = {3, 3},  
    size = {198,198},
    borderColor = "FEColorPopupOutline",     
; 
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 5, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "WALL", }, 
		}, 		
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 14, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Type: heavy defensive formation", }, 
		}, 	
		
--label
    { 
    type = "TextLabel",     
    position = 
        { 5, 23, }, 
    size = 
        { 150, 9, }, 
    Text = 
    { 
        textStyle = "IGHeading2", 
        vAlign = "Center", 
        hAlign = "Left",	
        text = "Target: single ship class/type", }, 
		}, 																				
		},		
		},																				
{ 
    type = "Frame", 
    name = "menu", 
    position = 
        { 0, 204, }, 
    size = 
        { 204, 142, }, 
    backgroundColor = "IGColorBackground1", 
; 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnForm1", 
    toggleButton = 0, 
    position = 
        { 2, 2, }, 
    size = 
        { 180, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "$2735", }, 
    --onMouseReleased = "UI_ToggleScreen( 'StrikeGroupsMenu', 0)",     
    hotKeyID = 28, 
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "sgs1", 
    toggleButton = 0, 
    position = 
        { 183, 2, }, 
    size = 
        { 19, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Info", },     
    onMouseClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 1);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]], 
    onMouseDoubleClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],       
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnForm2", 
    toggleButton = 0, 
    position = 
        { 2, 16, }, 
    size = 
        { 180, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "$2736", }, 
    --onMouseReleased = "UI_ToggleScreen( 'StrikeGroupsMenu', 0)",      
    hotKeyID = 29, 
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "sgs2", 
    toggleButton = 0, 
    position = 
        { 183, 16, }, 
    size = 
        { 19, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Info", },     
    onMouseClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 1);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],
    onMouseDoubleClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],       
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnForm3", 
    toggleButton = 0, 
    position = 
        { 2, 30, }, 
    size = 
        { 180, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "$2737", }, 
    --onMouseReleased = "UI_ToggleScreen( 'StrikeGroupsMenu', 0)",   
    hotKeyID = 30, 
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "sgs3", 
    toggleButton = 0, 
    position = 
        { 183, 30, }, 
    size = 
        { 19, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Info", },     
    onMouseClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 1);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],
    onMouseDoubleClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],       
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnForm4", 
    toggleButton = 0, 
    position = 
        { 2, 44, }, 
    size = 
        { 180, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Power Lines", }, 
    onMouseReleased = "formStrikeGroup(7)",        
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "sgs4", 
    toggleButton = 0, 
    position = 
        { 183, 44, }, 
    size = 
        { 19, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Info", },     
    onMouseClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 1);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],
    onMouseDoubleClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],       
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnForm5", 
    toggleButton = 0, 
    position = 
        { 2, 58, }, 
    size = 
        { 180, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Destroyer/Cruiser Shield", }, 
    onMouseReleased = "formStrikeGroup(8)",        
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "sgs5", 
    toggleButton = 0, 
    position = 
        { 183, 58, }, 
    size = 
        { 19, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Info", },     
    onMouseClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 1);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],
    onMouseDoubleClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],       
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnForm6", 
    toggleButton = 0, 
    position = 
        { 2, 72, }, 
    size = 
        { 180, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Tortoise", }, 
    onMouseReleased = "formStrikeGroup(4)",        
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "sgs6", 
    toggleButton = 0, 
    position = 
        { 183, 72, }, 
    size = 
        { 19, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Info", },     
    onMouseClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 1);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],
    onMouseDoubleClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],       
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnForm7", 
    toggleButton = 0, 
    position = 
        { 2, 86, }, 
    size = 
        { 180, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Claw", }, 
    onMouseReleased = "formStrikeGroup(5)",        
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "sgs7", 
    toggleButton = 0, 
    position = 
        { 183, 86, }, 
    size = 
        { 19, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Info", },     
    onMouseClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 1);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],
    onMouseDoubleClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],       
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnForm8", 
    toggleButton = 0, 
    position = 
        { 2, 100, }, 
    size = 
        { 180, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Arrow", }, 
    onMouseReleased = "formStrikeGroup(6)",        
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "sgs8", 
    toggleButton = 0, 
    position = 
        { 183, 100, }, 
    size = 
        { 19, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Info", },     
    onMouseClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 1);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],
    onMouseDoubleClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],       
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnForm9", 
    toggleButton = 0, 
    position = 
        { 2, 114, }, 
    size = 
        { 180, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Wall", }, 
    onMouseReleased = "formStrikeGroup(3)",        
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "sgs9", 
    toggleButton = 0, 
    position = 
        { 183, 114, }, 
    size = 
        { 19, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "Info", },     
    onMouseClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 1)]],
    onMouseDoubleClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],       
}, 
{ 
    type = "TextButton", 
    buttonStyle = "RightClickMenu_ButtonStyle", 
    name = "btnLeave", 
    toggleButton = 0, 
    position = 
        { 2, 128, }, 
    size = 
        { 200, 12, }, 
    Text = 
    { 
        font = "ButtonFont", 
        hAlign = "Left", 
        offset = 
            { 4, 0, }, 
        text = "$3165", }, 
    --onMouseReleased = "UI_ToggleScreen( 'StrikeGroupsMenu', 0)",   
    --onMouseClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],   
    --onMouseDoubleClicked = [[UI_SetElementVisible("StrikeGroupsMenu", "sgs1", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs2", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs3", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs4", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs5", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs6", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs7", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs8", 0);UI_SetElementVisible("StrikeGroupsMenu", "sgs9", 0)]],       
    hotKeyID = 31, }, 
}, 
}, 
}

