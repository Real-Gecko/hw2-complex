battlearena = {        	
	size = {301, 453, 200, 30},
	stylesheet = "HW2StyleSheet",	
	clickThrough = 1,	
	pixelUVCoords = 1, -- Enter pixel coords for texture coords	
	;	
-- Timeto Frame
	{
		type = "Frame",
		position = {0,0},
		size = {200, 30},		
		backgroundColor = "IGColorBackground1",
		helpTip = "BATTLE ARENA DISPLAY",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		--autosize = 1,
		--marginHeight = 1,
		--autoarrange = 1,
		;				
		
		{		        
			type = "TextLabel",
			position = {0, 13},
			size = {200,  10},
			name = "timeto",			
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Center",				
				color = "FEColorHeading1",
			},			
		},	
		{		        
			type = "TextLabel",
			position = {0, 21},
			size = {200,  10},
			name = "timeto1",			
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Center",				
				color = "FEColorHeading1",
			},			
		},			
		
		{		        
			type = "TextLabel",
			position = {3, -3},
			size = {75,  15},
			name = "p1",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Left",				
				color = "FEColorHeading3",
			},			
		},	
		{		        
			type = "TextLabel",
			position = {3, 7},
			size = {75,  15},
			name = "p1punteggio",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Left",				
				color = "FEColorHeading3",
			},			
		},	
		{		        
			type = "TextLabel",
			position = {3, 17},
			size = {30,  15},
			name = "p1punteggio1",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Left",				
				color = 
            { 222, 37, 19, 255, }, 
			},			
		},	
		{		        
			type = "TextLabel",
			position = {122, -3},
			size = {75,  15},
			name = "p2",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Right",				
				color = "FEColorHeading3",
			},			
		},			
		{		        
			type = "TextLabel",
			position = {122, 7},
			size = {75,  15},
			name = "p2punteggio",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Right",				
				color = "FEColorHeading3",
			},			
		},	
		{		        
			type = "TextLabel",
			position = {167, 17},
			size = {30,  15},
			name = "p2punteggio1",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Right",				
				color = 
            { 222, 37, 19, 255, }, 
			},			
		},			
		{		        
			type = "TextLabel",
			position = {2, 14},
			size = {180,  15},
			name = "win",			
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Center",				
				color = { 0, 128, 255, 255, },
			},			
		},				
	},
	
}	