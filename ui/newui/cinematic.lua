cinematic = 
{ 
    size = 
        { 330, 137, 146, 206, }, 
    stylesheet = "HW2StyleSheet", 
    pixelUVCoords = 1,   
    clickThrough = 1,  
    RootElementSettings = 
    { 
        backgroundColor = "FEColorBackground1", }, 
; 

--esc
	{
		type = "Frame",
		position = {0,0},
		size = {120, 20},		
		backgroundColor = "IGColorBackground1",		
		;					
		{
			type = "Frame",
			position = {1, 1},
			size = {20,20},			
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\esc.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},			
		},		
		{		        
			type = "TextLabel",
			position = {24, 1},
			size = {100,  20},
			name = "esc",	      			
			Text = {
			  text = "ESC",
				textStyle = "IGHeading2",
				hAlign = "Left",				
				color = "FEColorHeading3",
			},			
		},		
	},
	--f1
	{
		type = "Frame",
		position = {0,22},
		size = {120, 20},		
		backgroundColor = "IGColorBackground1",		
		;					
		{
			type = "Frame",
			position = {1, 1},
			size = {20,20},			
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\f1.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},			
		},		
		{		        
			type = "TextLabel",
			position = {24, 1},
			size = {120,  20},
			name = "f1",	      			
			Text = {
			  text = "Camera speed",
				textStyle = "IGHeading2",
				hAlign = "Left",				
				color = "FEColorHeading3",
			},			
		},		
	},
	--f2	
	{
		type = "Frame",
		position = {0,44},
		size = {120, 20},		
		backgroundColor = "IGColorBackground1",		
		;					
		{
			type = "Frame",
			position = {1, 1},
			size = {20,20},			
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\f2.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},			
		},		
		{		        
			type = "TextLabel",
			position = {24, 1},
			size = {120,  20},
			name = "f2",	      			
			Text = {
			  text = "Camera mode",
				textStyle = "IGHeading2",
				hAlign = "Left",				
				color = "FEColorHeading3",
			},			
		},		
	},
	--f3	
	{
		type = "Frame",
		position = {0,66},
		size = {120, 20},		
		backgroundColor = "IGColorBackground1",		
		;					
		{
			type = "Frame",
			position = {1, 1},
			size = {20,20},			
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\f2.tga",
				textureUV = {0,0,128,128},
				color = OUTLINECOLOR,
			},			
		},		
		{		        
			type = "TextLabel",
			position = {24, 1},
			size = {120,  20},
			name = "f3",	      			
			Text = {
			  text = "Camera selection",
				textStyle = "IGHeading2",
				hAlign = "Left",				
				color = "FEColorHeading3",
			},			
		},		
	},	
		
}
