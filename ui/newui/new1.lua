New1 = {    	
	size = {231, 483, 341, 14},
	stylesheet = "HW2StyleSheet",		
	onShow = "UI_HideScreen( 'New2')",
	--onHide = "UI_ShowScreen( 'New1', 1)",			
	pixelUVCoords = 1, 
	;		
---left	
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {0,1},
		size = {12, 12},
		name = "btnPrevFocus",
		onMouseClicked = "MainUI_UserEvent(ePreviousFocus)",		
		helpTip = "PREVIOUS FOCUS (PAG DOWN)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\PrevFocus.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},		
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {14,1},
		size = {12, 12},
		name = "btnMilitary",
		onMouseClicked = "MainUI_UserEvent(eFocusHome)", 		
		helpTip = "FOCUS CAPITAL SHIPS (HOME)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\Home.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {28,1},
		size = {12, 12},
		name = "btnNextFocus",
		onMouseClicked = "MainUI_UserEvent(eNextFocus)", 		
		helpTip = "NEXT FOCUS (PAG UP)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\NextFocus.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},		
---centre		
  {
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {129-7,1},
		size = {12, 12},
		name = "btnPlanet",
		onMouseClicked = "UI_ToggleScreen( 'planetbar', 0)", 		
		helpTip = "PLANET BAR",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 		
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\Planetbar.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},		 	
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {143-7,1},
		size = {12, 12},
		name = "btnTacticPause",
		onMouseClicked = "MainUI_UserEvent( ePause)", 		
		helpTip = "TACTIC PAUSE (PAUSE)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\TacticPause.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},			
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {157-7,1},
		size = {12, 12},
		name = "btnDisableSlowMotion",
		onMouseClicked = "UI_SetScreenVisible( 'disablemotion', 1)", 		
		helpTip = "SLOW MOTION OFF",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\slowmotion.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},		
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {157-7,1},
		size = {12, 12},
		name = "btnEnableSlowMotion",
		onMouseClicked = "UI_SetScreenVisible( 'enablemotion', 1)", 		
		helpTip = "SLOW MOTION",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\slowmotion.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},		
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {171-7,1},
		size = {12, 12},
		name = "btnScreenshot",
		onMouseClicked = "MainUI_UserEvent( eTacticalOverlay)", 		
		helpTip = "CYCLE TACTICAL OVERLAYS (TAB)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\Screenshot.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {185-7,1},
		size = {12, 12},
		name = "btnHUD",		
		onMouseClicked = "UI_SetScreenVisible( 'NewTaskbar', 0); UI_SetScreenVisible( 'ResourceMenu', 0); UI_SetScreenVisible( 'UnitCapInfoPopup', 0); UI_SetScreenVisible( 'UnitCapInfoPopup1', 0); UI_SetScreenVisible( 'BuildQueueMenu', 0); UI_SetScreenVisible( 'NewBuildMenu', 0); UI_SetScreenVisible( 'NewManageMenu', 0); UI_SetScreenVisible( 'NewResearchMenu', 0); UI_SetScreenVisible( 'NewLaunchMenu', 0); UI_SetScreenVisible( 'EventsScreen', 0); UI_SetScreenVisible( 'New2', 1); UI_SetScreenVisible( 'New1', 0); UI_SetScreenVisible( 'YearMenu', 0); UI_SetScreenVisible( 'EnergyMenu', 0); UI_SetScreenVisible( 'MusicMenu', 0); UI_SetScreenVisible( 'FleetMenu', 0)",				
		helpTip = "DISABLE HUD (BACKSPACE)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\HUD.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},
	{
		type = "Button",		
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {199-7,1},
		size = {12, 12},
		name = "btnMusicPlayer",
		onMouseClicked = "UI_ToggleScreen( 'MusicMenu', 1)",
		helpTip = "MUSIC PLAYER",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\mp.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {213-7,1},
		size = {12, 12},
		name = "btnCinematic",
		onMouseClicked = "UI_SetScreenVisible( 'New3', 1)",	
		helpTip = "ENABLE CINEMATIC (ON SELECTION)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\Cinematic.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},
---right	
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {301,1},
		size = {12, 12},
		name = "btnSelectVisible",
		onMouseClicked = "MainUI_UserEvent(eSelectAllVisible)", 		
		helpTip = "SELECT VISIBLE UNITS (CAPS LOCK)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\AllVisible.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},	
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {315,1},
		size = {12, 12},
		name = "btnIdleCollector",
		onMouseClicked = "SelectNextIdleHarvester()", 		
		helpTip = "SELECT IDLE COLLECTORS (.)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\IdleCollector.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    		
	},	
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {329,1},
		size = {12, 12},
		name = "btnHome",
		onMouseClicked = "MainUI_UserEvent(eMilitary)", 		
		helpTip = "SELECT MILITARY UNITS (A)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 		
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\Military.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},
---tubes		
	{
		type = "Button",
		position = {243-4,1},
		size = {12, 12},
		name = "tube1",
		onMouseClicked = "UI_SetScreenVisible( 'tube1', 1)",	
		helpTip = "CICLE FOCUS ON BOMB",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		DefaultGraphic = 
		{ 
			position = {0, 0},
			size = {12,12},
		        texture = "DATA:UI\\NewUI\\Taskbar\\tube.tga", 
			textureUV = {0,0,32,32},
			color = OUTLINECOLOR,
		}, 	
		OverGraphic = 
	        { 
	        texture = "DATA:UI\\NewUI\\Taskbar\\tubeC.tga", 
	        textureUV = { 0, 0, 32, 32, }, }, 
	        PressedGraphic = 
	        { 	        
	        texture = "DATA:UI\\NewUI\\Taskbar\\tubeC.tga", 
	        textureUV = { 0, 0, 32, 32, }, }, 			
	},	
	{
		type = "Button",
		position = {257-4,1},
		size = {12, 12},
		name = "tube2",
		onMouseClicked = "UI_SetScreenVisible( 'tube2', 1)",	
		helpTip = "CICLE FOCUS ON MISSILE",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		DefaultGraphic = 
		{ 
			position = {0, 0},
			size = {12,12},
		        texture = "DATA:UI\\NewUI\\Taskbar\\tube.tga", 
			textureUV = {0,0,32,32},
			color = OUTLINECOLOR,
		}, 	
		OverGraphic = 
	        { 
	        texture = "DATA:UI\\NewUI\\Taskbar\\tubeC.tga", 
	        textureUV = { 0, 0, 32, 32, }, }, 
	        PressedGraphic = 
	        { 	        
	        texture = "DATA:UI\\NewUI\\Taskbar\\tubeC.tga", 
	        textureUV = { 0, 0, 32, 32, }, }, 			
	},	
	{
		type = "Button",
		position = {271-4,1},
		size = {12, 12},
		name = "tube3",
		onMouseClicked = "UI_SetScreenVisible( 'tube3', 1)",	
		helpTip = "CICLE FOCUS ON MINE",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		soundOnClicked = "SFX_ButtonClick", 
		DefaultGraphic = 
		{ 
			position = {0, 0},
			size = {12,12},
		        texture = "DATA:UI\\NewUI\\Taskbar\\tube.tga", 
			textureUV = {0,0,32,32},
			color = OUTLINECOLOR,
		}, 	
		OverGraphic = 
	        { 
	        texture = "DATA:UI\\NewUI\\Taskbar\\tubeC.tga", 
	        textureUV = { 0, 0, 32, 32, }, }, 
	        PressedGraphic = 
	        { 	        
	        texture = "DATA:UI\\NewUI\\Taskbar\\tubeC.tga", 
	        textureUV = { 0, 0, 32, 32, }, }, 			
	},		
}

New2 = {    	
	size = {780, 580, 18, 18},
	stylesheet = "HW2StyleSheet",	
	onShow = "UI_HideScreen( 'New1')",
	--onHide = "UI_ShowScreen( 'New1', 1)",			
	pixelUVCoords = 1, 
	;		
	{
		type = "Button",
		buttonStyle = "Taskbar_CommandButtonStyleSmall",
		position = {0,0},
		size = {12, 12},
		name = "btnHUD1",		
		onMouseClicked = "UI_SetScreenVisible( 'NewTaskbar', 1); UI_SetScreenVisible( 'ResourceMenu', 1); UI_SetScreenVisible( 'New1', 1); UI_SetScreenVisible( 'New2', 0)",				
		helpTip = "ENABLE HUD (BACKSPACE)",
		helpTipTextLabel = "commandsHelpTip",	
		helpTipScreen = "NewTaskbar",
		; 
				{ 
				  type = "Frame", 
				  size = { 12, 12, }, 
				  position = {0,0},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:UI\\NewUI\\Taskbar\\HUD1.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},    	
	},
}

New3 =  {    	
	size = {0, 0, 0, 0},
	stylesheet = "HW2StyleSheet",		
	pixelUVCoords = 1,}	
	
intro =  {    	
	size = {0, 0, 800, 600},
	stylesheet = "HW2StyleSheet",		
	pixelUVCoords = 1,
	clickThrough = 1,
	;
	{
			type = "Frame",
			position = {272, 44},
			size = {256,256},
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\intro.mres",				
			},						
		},		 				
	}

tube1 =  {    	
	size = {0, 0, 0, 0},
	stylesheet = "HW2StyleSheet",		
	pixelUVCoords = 1,}	
tube2 =  {    	
	size = {0, 0, 0, 0},
	stylesheet = "HW2StyleSheet",		
	pixelUVCoords = 1,}	
tube3 =  {    	
	size = {0, 0, 0, 0},
	stylesheet = "HW2StyleSheet",		
	pixelUVCoords = 1,}		

KeepPosition =  {   
	size = {0, 0, 0, 0},
	stylesheet = "HW2StyleSheet",		
	pixelUVCoords = 1,}	

Free =  {   
	size = {0, 0, 0, 0},
	stylesheet = "HW2StyleSheet",		
	pixelUVCoords = 1,}	
	
enablemotion =  {    	
	size = {0, 0, 0, 0},
	stylesheet = "HW2StyleSheet",		
	pixelUVCoords = 1,}	
disablemotion =  {    	  
	size = {0, 0, 0, 0},
	stylesheet = "HW2StyleSheet",		
	pixelUVCoords = 1,}		

planetbar =  {    	
  onShow = "UI_SetButtonPressed('New1', 'btnPlanet', 1)",
	onHide = "UI_SetButtonPressed('New1', 'btnPlanet', 0)",
	size = {0, 0, 0, 0},
	stylesheet = "HW2StyleSheet",		
	pixelUVCoords = 1,}			
	