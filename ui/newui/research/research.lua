OUTLINECOLOR = { 200, 200, 200, 225, }
RESEARCHQUEUECOLOR = {64, 129, 249, 255}

-- colors of the ship group frames
RESEARCHGROUPCOLOR = { 125, 125, 125, 225, }

-- upgrade type colors
UGT_ABILITY_DFT = {255,213,0,255}
UGT_ABILITY_OVR = {225,225,225,255}
UGT_ABILITY_PRS = {255,255,255,255}

UGT_TECH_DFT = {239,115,0, 255}
UGT_TECH_OVR = {225,225,225,255}
UGT_TECH_PRS = {255,255,255,255}

UGT_UPGRADE_DFT = {0, 175, 255, 255}
UGT_UPGRADE_OVR = {225,225,225,255}
UGT_UPGRADE_PRS = {255,255,255,255}

dofilepath("data:ui/newui/build/collapsablequeue.lua")

-- returns an upgrade button with the given colors for the button
function GetResearchButton(_name, _defaultColor, _overColor, _pressedColor)

local Button = {
	type = "Button",
	name = _name,
	position = {2, 2},
	size = {180,13},
	visible = 0,
	enabled = 0,
	giveParentMouseInput = 0,
	
	soundOnClicked = "SFX_ResearchItemClick",
	;
	
	{
		type = "Button",
		name = "btnMoreInfo",
		position = {1, 0},
		size = {13, 13},
		DefaultGraphic = {
			texture = "data:ui\\newui\\ingameicons\\research_borders.mres",
			textureUV = {0,0,13,13},
			color = _defaultColor,
		},
		OverGraphic = {
			texture = "data:ui\\newui\\ingameicons\\research_borders.mres",
			textureUV = {0,0,13,13},
			color = _overColor,
		},
		PressedGraphic = {
			texture = "data:ui\\newui\\ingameicons\\research_borders.mres",
			textureUV = {0,0,13,13},
			color = _pressedColor,
		},
		
		helpTip = "$5230", -- SHOW RESEARCH INFO
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		;
	},
	
	{
		type = "Button",
		position = {16, 0},
		size = {164, 13},
		
		DefaultGraphic = {
			texture = "data:ui\\newui\\ingameicons\\research_borders.mres",
			textureUV = {16,0,180,13},
			color = _defaultColor,
		},
		OverGraphic = {
			texture = "data:ui\\newui\\ingameicons\\research_borders.mres",
			textureUV = {16,0,180,13},
			color = _overColor,
		},
		PressedGraphic = {
			texture = "data:ui\\newui\\ingameicons\\research_borders.mres",
			textureUV = {16,0,180,13},
			color = _pressedColor,
		},
		
		
		helpTip = "$5226", -- CLICK ITEM TO RESEARCH
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		;
	
		-- Icon
		{
			type = "Frame",
			name = "frmIcon",
			position = {2,2},
			size = {9,9},
			BackgroundGraphic = {
				texture = "data:ui\\newui\\research\\icons\\speed.mres",
				textureUV = {0,0,9,9},
			},
		},
		
		-- Upgrade label
		{
			type = "TextLabel",
			--backgroundColor = {0,255,0,100},
			
			name = "lblUpgrade",
			position = {13,0},
			size = { 112, 13 },
			
			Text = {
				textStyle = "IGButtonTextStyle",
				color = {255,255,255,255},
				hAlign = "Left",
				vAlign = "Middle",
				offset = {2, 0},
			},
		},
		
		-- Cost label
		{
			type = "TextLabel",
			name = "lblCost",
			
			position = {126,0},
			size = { 37, 13 },
			--backgroundColor = {255,255,255,100},
			
			Text = {
				font = "ButtonFont",
				color = "FEColorHeading3",
				hAlign = "Right",
				vAlign = "Middle",
				offset = {-4, 0},
			},
		},
	},
}
	
return Button

end




-- UI Screen
NewResearchMenu = {
	size = {586, 15, 212, 497},
	resolution = {800, 600},
	stylesheet = "HW2StyleSheet",
	
	RootElementSettings = {
		backgroundColor = "IGColorBackground1",
	},
	
	--
	soundOnShow = "SFX_ResearchMenuONOFF",
	soundOnHide = "SFX_ResearchMenuONOFF",
	
	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords

	fStringCost = "%d", -- Formatted string for the cost label
	
	abilitiesText = "$2861", -- Text string for "ABILITIES"
	techText = "$2862", -- Text string for "TECHNOLOGY"
	
	onHide = "UI_HideScreen(\"ResearchInfo\"); UI_SubtitleWide()",
	onShow = "UI_HideScreen('NewBuildMenu'); UI_HideScreen('NewManageMenu'); UI_HideScreen('NewLaunchMenu'); UI_ShowScreen('ResourceMenu', ePopup); UI_SubtitleNarrow()",
	
	queuesFramePos = 494, -- y position of the bottom of the collapsable queues frame
	
	queueTitle = "$2570",
	
	menuColor = OUTLINECOLOR,
	
	itemIconUV = {0,0,9,9},
	
	-- display priority for ships that have no build data (eg. mship)
	defaultDisplayPriority = 1,
	
	-- family wide upgrade icon hookups
	FamilyIcons = {	  
		{"Vaygr", "Fighter","Vgr_C_Production_Fighter"},
		{"Vaygr", "Corvette","Vgr_C_Production_Corvette"},
		{"Vaygr", "Frigate","Vgr_C_Production_Frigate"},
		{"Vaygr", "CapitalArmed","Vgr_MS_Production_CapShip"},
		{"Vaygr", "SuperCapitalArmed","Vgr_SY_AdvProduction_CapShip"},
		{"Vaygr", "Capital","Vgr_MS_Production_CapShipAdvanced"},		
		{"Vaygr", "Flagship","Vgr_Mothership"},
		{"Vaygr", "Platform","Hgn_MS_Module_PlatformControl"},
		{"Vaygr", "Utility","Icon_Subsystem_Utility_Facility"},
		{"Vaygr", "SubSystemModule","Hgn_Module_SubSystem"},
		{"Vaygr", "SubSystemSensors","Hgn_Module_Sensor"},		
		{"Vaygr", "Weapon","Vgr_Cruse"},				
		
		{"Hiigaran", "Fighter","Hgn_C_Production_Fighter"},
		{"Hiigaran", "Corvette","Hgn_C_Production_Corvette"},
		{"Hiigaran", "Frigate","Hgn_C_Production_Frigate"},
		{"Hiigaran", "CapitalArmed","Hgn_MS_Production_CapShip"},
		{"Hiigaran", "SuperCapitalArmed","Hgn_SY_AdvProduction_CapShip"},
		{"Hiigaran", "Capital","Hgn_MS_Production_CapShipAdvanced"},		
		{"Hiigaran", "Flagship","Hgn_MotherShip"},
		{"Hiigaran", "Platform","Hgn_MS_Module_PlatformControl"},
		{"Hiigaran", "Utility","Icon_Subsystem_Utility_Facility"},	
    {"Hiigaran", "SubSystemModule","Hgn_Module_SubSystem"},		
		{"Hiigaran", "SubSystemSensors","Hgn_Module_Sensor"},		
		{"Hiigaran", "Weapon","Hgn_Viper"},	
	},
	;
		
	-- Title 
	{
		type = "TextLabel",
		position = {0, 2},
		size = {210, 19},
		name = "lblTitle",
		backgroundColor = OUTLINECOLOR,
		Text = {
			textStyle = "IGHeading1",
			text = "$2850",  -- RESEARCH MENU
			offset = {4,0},
			color = {0,0,0,255},
		},
		;
		
		-- Close button
		{
			type = "Button",
			position = {193, 2},
			buttonStyle = "IGCloseButton",
			onMouseClicked = "UI_HideScreen('NewResearchMenu')",
			
			helpTip = "$5221", -- CLOSE WINDOW
			helpTipTextLabel = "commandsHelpTip",
			helpTipScreen = "NewTaskbar",
			hotKeyID = 49,
		},
	},
	
	--
	{
		type = "Line",
		p1 = {210, 19},
		p2 = {210, 63},
		above = 0,
		lineWidth = 2,
		color = OUTLINECOLOR,
	},
	
	-- Facility Buttons
	-- NOTICE: The names of these buttons must match the family names (the strcmp is case insensitive)
	{
		type = "Frame",
		name = "m_frameButtonGroup",
		position = {1, 39-2},
		size = {208, 30},
		autoarrange = 1,
		autoarrangeWidth = 300,
		autoarrangeSpace = -1,
		
		helpTip = "$5228", -- SELECT RESEARCH FACILITY
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		;
		
		{
			type = "RadioButton",
			buttonStyle = "IGButtonVuoto",
			name = "Orders",
			helpTip = "FLEET",
			helpTipTextLabel = "lblCurrentFacility",			
			; 
				{ 
				  type = "Frame", 
				  size = { 14, 16, }, 
				  position = {2,2},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:\\Ship\\Icons\\ships\\rank.tga",
			        textureUV = { 0, 0, 32, 32, },
			    },										
				},
		},					
		
		{
			type = "RadioButton",
			buttonStyle = "IGButtonSubsystemSensors",
			name = "Weapon",
			helpTip = "SPECIAL WEAPON", 
			helpTipTextLabel = "lblCurrentFacility",			
			; 
				{ 
				  type = "Frame", 
				  size = { 11, 11, }, 
				  position = {7,7},	   
				  giveParentMouseInput = 1, 
				  BackgroundGraphic = 
			    { 
			        texture = "DATA:\\Ship\\Icons\\ships\\redpoint.tga",
			        textureUV = { 0, -0, 90, 90, },
			    },										
				},
		},		        			
		
		{
			type = "RadioButton",
			buttonStyle = "IGButtonSubsystemSensors",
			name = "SubSystemSensors",
			helpTip = "SPECIAL SUBSYSTEM", -- "SENSOR RESEARCH",
			helpTipTextLabel = "lblCurrentFacility",
			hotKeyID = 99,
		},				
		
		{
			type = "RadioButton",
			buttonStyle = "IGButtonSubsystemModules",
			name = "SubSystemModule",
			helpTip = "MODULE SUBSYSTEM", -- "SUBSYSTEM RESEARCH",
			helpTipTextLabel = "lblCurrentFacility",
			hotKeyID = 97,
		},				
		
		{
			type = "RadioButton",
			buttonStyle = "IGButtonUtility",
			name = "Utility",
			helpTip = "UTILITY CLASS", -- "UTILITY RESEARCH",
			helpTipTextLabel = "lblCurrentFacility",
			hotKeyID = 94,
		},
		
		{
			type = "RadioButton",
			buttonStyle = "IGButtonCorvette",
			name = "Corvette",
			helpTip = "CORVETTE CLASS", -- "CORVETTE RESEARCH",
			helpTipTextLabel = "lblCurrentFacility",
			hotKeyID = 91,
		},
		{
			type = "RadioButton",
			buttonStyle = "IGButtonCapital",
			name = "CapitalArmed",
			helpTip = "BATTLE CAPITAL CLASS",
			helpTipTextLabel = "lblCurrentFacility",
			--hotKeyID = 92,
		},	
    {
			type = "RadioButton",
			buttonStyle = "IGButtonCapitalNewNew",
			name = "SuperCapitalArmed",
			helpTip = "HEAVY CAPITAL CLASS",
			helpTipTextLabel = "lblCurrentFacility",
			--hotKeyID = 92,
		},				
		{
			type = "RadioButton",
			buttonStyle = "IGButtonCapitalNew",
			name = "Capital",
			helpTip = "PRODUCTION CAPITAL CLASS",
			helpTipTextLabel = "lblCurrentFacility",
			hotKeyID = 93,
		},
		{
			type = "RadioButton",
			buttonStyle = "IGButtonFighter",
			name = "Fighter",
			helpTip = "FIGHTER CLASS", --"FIGHTER RESEARCH",
			helpTipTextLabel = "lblCurrentFacility",
			hotKeyID = 90,
		},
		
		{
			type = "RadioButton",
			buttonStyle = "IGButtonFrigate",
			name = "Frigate",			
			helpTip = "FRIGATE CLASS", -- "FRIGATE RESEARCH",
			helpTipTextLabel = "lblCurrentFacility",
			hotKeyID = 92,
		},
		
		{
			type = "RadioButton",
			buttonStyle = "IGButtonPlatform",
			name = "Platform",
			helpTip = "PLATFORM CLASS", -- "PLATFORM RESEARCH",
			helpTipTextLabel = "lblCurrentFacility",
			hotKeyID = 96,
		},		
	},
	
	-- Show all button
	{
		type = "TextButton",
		buttonStyle = "IGButtonShowAll",
		position = {0,22},
		width = 209,
		name = "btnShowAll",
		Text = {
			text = "$5237", --""SHOW ALL RESEARCH",
		},
		toggleButton = 1,
		
		helpTip = "$5229", -- SHOW ALL RESEARCH FACILITIES
		helpTipTextLabel = "lblCurrentFacility",
		hotKeyID = 98,
		
		PressedGraphic = {
			texture = "data:ui\\newui\\facility\\facilities_icons_showall.mres",
			textureUV = {0,15,206,30},
			color = OUTLINECOLOR,
		},
	},
	
	-- Current Facility Sub Heading
	{
		type = "TextLabel",
		position = {0,63-9},
		size = {210,13},
		name = "lblCurrentFacility",
		Text = {
			textStyle = "IGHeading2",
			color = {0,0,0,255},
			offset = {6,0},
			vAlign = "Middle",
		},
		backgroundColor = OUTLINECOLOR,
	},
	
	-- Research List Box
	{
		type = "ListBox",
		position = {-3, 76-9},
		size = {211, 420},
		name = "m_listResearch",
		
		scrollBarSpace = 2,
		marginWidth = 2,
		marginHeight = 0,
		outerBorderWidth = 2,
		
		borderColor = OUTLINECOLOR,
		
		contentsOuterBorderWidth = 2,
		contentsBorderColor = OUTLINECOLOR,
		
		ScrollBar =	{
			stepSize = 3,
			pageSize = 100,
			marginHeight = 2,
		},
	},
	
	{	-- RESEARCH ITEM TO CLONE
		type = "ListBoxItem",
		size = {188,80},
		
		autosize = 1,
		minSize = {188, 0},
		visible = 0,
		
		name = "shipUpgradeItemToClone",			
		;
		
		-- 
		{
			type = "Frame",
			position = {3,1},
			autoarrange = 1,
			autoarrangeWidth = 186,
			autosize = 1,
			;
			-- header frame
			{
				type = "Frame",
				size = {185, 13},
				BackgroundGraphic = {
					texture = "data:ui\\newui\\InGameIcons\\show_all_borders.mres",
					textureUV = {0,0,185,13},
					color = RESEARCHGROUPCOLOR,
				},
				;
				-- Ship name label
				{
					type = "TextLabel",
					name = "lblShipName",
					position = {0, 0},
					size = {180,13},			
					Text = {				
						font = "ListBoxItemFont",
						hAlign = "Left",
						vAlign = "Middle",
						color = {0, 0, 0, 255}, -- Black
						offset = {4,0},
					},
				},
			},
			-- middle frame
			{
				type = "Frame",
				minSize = {185, 0},
				--size = {185, 45},
				autosize = 1,
				BackgroundGraphic = {
					texture = "data:ui\\newui\\InGameIcons\\show_all_borders.mres",
					textureUV = {0,14,185,25},
					color = RESEARCHGROUPCOLOR,
				},
				;
				
				-- ship icon & info
				{
					type  = "Frame",
					position = {2,2},
					autosize = 1,
					;
					
					-- Ship icon
					{
						type = "Frame",
						
						name = "researchIconFrame",
						
						position = {0,0},
						size = {100, 32},
						--backgroundColor = {100,100,100,150},
					},
				},
				
				-- upgrades tray
				{
					type = "Frame",
					position = {0, 35},
					size = {184, 46},				
					autosize = 1,				
					autoarrange = 1,
					autoarrangeSpace = 2,
					name = "upgradesFrame",
				},
			},
			-- footer frame
			{
				type = "Frame",
				size = {185, 5},
				BackgroundGraphic = {
					size = {185, 4},
					texture = "data:ui\\newui\\InGameIcons\\show_all_borders.mres",
					textureUV = {0,28,185,32},
					color = RESEARCHGROUPCOLOR,
				},
			},
		},
	},
	
	{	-- *EMPTY* RESEARCH ITEM TO CLONE
		type = "ListBoxItem",
		size = {188,80},
		
		autosize = 1,
		minSize = {188, 0},
		visible = 0,
		
		name = "emptyShipUpgradeItemToClone",			
		;
		
		-- 
		{
			type = "Frame",
			position = {3,1},
			autoarrange = 1,
			autoarrangeWidth = 186,
			autosize = 1,
			;
			-- header frame
			{
				type = "Frame",
				size = {185, 13},
				BackgroundGraphic = {
					position = {0, 0},
					texture = "data:ui\\newui\\InGameIcons\\show_all_borders.mres",
					textureUV = {0,0,185,13},
					color = {0,0,0,255},
				},
			},
			-- middle frame
			{
				type = "Frame",
				minSize = {185, 0},
				--size = {185, 45},
				autosize = 1,
				BackgroundGraphic = {
					texture = "data:ui\\newui\\InGameIcons\\show_all_borders.mres",
					textureUV = {0,14,185,25},
					color = {0,0,0,255},
				},
				;
				
				-- Empty upgrade item graphics
				{
					type = "Frame",
					position = {3, 37},
					size = {13, 13},
					BackgroundGraphic = {
						texture = "data:ui\\newui\\ingameicons\\research_borders.mres",
						textureUV = {0,0,13,13},
						color = {0,0,0,255},
					},
					;
				},
		
				{
					type = "Frame",
					position = {18, 37},
					size = {164, 13},
					
					BackgroundGraphic = {
						texture = "data:ui\\newui\\ingameicons\\research_borders.mres",
						textureUV = {16,0,180,13},
						color = {0,0,0,255},
					},
				},
			},
			-- footer frame
			{
				type = "Frame",
				size = {185, 5},
				BackgroundGraphic = {
					size = {185, 4},
					texture = "data:ui\\newui\\InGameIcons\\show_all_borders.mres",
					textureUV = {0,28,185,32},
					color = {0,0,0,255},
				},
			},
		},
	},
	
	-- Upgrade button to clone (FOR UPGRADES THAT APPLY TO A SINGLE SHIP)
	GetResearchButton("btnUpgradeToClone", UGT_UPGRADE_DFT, UGT_UPGRADE_OVR, UGT_UPGRADE_PRS),
	
	-- Upgrade button to clone (FOR UPGRADES THAT APPLY TO ALL SHIPS)	
	GetResearchButton("btnUpgradeToClone2", UGT_TECH_DFT, UGT_TECH_OVR, UGT_TECH_PRS),
	
	-- Upgrade button to clone (FOR ABILITIES)
	GetResearchButton("btnUpgradeToClone3", UGT_ABILITY_DFT, UGT_ABILITY_OVR, UGT_ABILITY_PRS),
		
	GetCollapsableQueue( OUTLINECOLOR, RESEARCHQUEUECOLOR, 92 ), 
	
	-- Frame to hold expandable research queues.
	{
		type = "Frame",
		position = {0,393},
		name = "frameQueues",
		autosize = 1,
		autoarrange = 1,
		autoarrangeSpace = 0,
		autoarrangeWidth = 393,
		customData = 4, --Amount of spacing to put between queue frame and bottom of build list
		outerBorderWidth = 1, 
		borderColor = OUTLINECOLOR,
	},
}
