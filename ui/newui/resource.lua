ResourceMenu = {
	--size = {586, 0, 214, 14},
	size = { 0, 0, 800, 14 },
	stylesheet = "HW2StyleSheet",
	onShow = "UI_HideScreen( 'New2')",
	--clickThrough = 1,

	-- Flags
	pixelUVCoords = 1; -- Enter pixel coords for texture coords

	-- Lua functions
	--onUpdate = [[
	--UI_SetTextLabelText("ResourceMenu", "lblResourceUnits", ""..Player_GetRU( Universe_CurrentPlayer() ));
	--UI_SetTextLabelText("UnitCapInfoPopup", "lblResourceUnits", ""..Player_GetRU( Universe_CurrentPlayer() ));
	--UI_SetTextLabelText("NewTaskbar", "lblResourceUnits", ""..Player_GetRU( Universe_CurrentPlayer() ));
	--]],

	-- Rank Frame
	{
		type = "Frame",
		position = { 0, 0 },
		size = { 88, 13 },
		backgroundColor = "IGColorBackground1",
		helpTip = "MILITARY RANK (I)",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";

		{
			type = "Frame",
			position = { 1, 0 },
			size = { 13, 13 },
			name = "iconrank",
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\degree_icon.mres",
				textureUV = { 0, 0, 13, 13 },
				color = OUTLINECOLOR,
			},
		},
		{
			type = "TextLabel",
			position = { 15, 1 },
			size = { 73, 13 },
			name = "lblgrado",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = "FEColorHeading3",
			},
		},
		{
			type = "Button",
			position = { 0, 0 },
			size = { 88, 13 },
			onMousePressed = "UI_ToggleScreen( 'UnitCapInfoPopup', 1)",
		},
	},
	-- Honor Frame
	{
		type = "Frame",
		position = { 88, 0 },
		size = { 60, 13 },
		backgroundColor = "IGColorBackground1",
		helpTip = "HONOUR POINTS/NEXT RANK (I)",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		{
			type = "Frame",
			position = { 0, 1 },
			size = { 14, 14 },
			name = "iconhonor",
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\honor_icon.mres",
				textureUV = { 0, 0, 13, 13 },
				color = OUTLINECOLOR,
			},
		},
		{
			type = "TextLabel",
			position = { 12, 1 },
			size = { 48, 13 },
			name = "lblhonor",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = "FEColorHeading3",
			},
		},
		{
			type = "Button",
			position = { 0, 0 },
			size = { 60, 13 },
			name = "lblhonorflash",
			onMousePressed = "UI_ToggleScreen( 'UnitCapInfoPopup', 1)",
		},
	},
	-- Crew Frame
	{
		type = "Frame",
		position = { 148, 0 },
		size = { 84, 13 },
		backgroundColor = "IGColorBackground1",
		helpTip = "CREW OPERATING/AVAILABLE/MAX (I)",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		{
			type = "Frame",
			position = { 0, 0 },
			size = { 13, 13 },
			name = "iconcrew",
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\crew_icon.mres",
				textureUV = { 0, 0, 13, 13 },
				color = OUTLINECOLOR,
			},
		},
		{
			type = "TextLabel",
			position = { 13, 1 },
			size = { 71, 13 },
			name = "lblPopUnits",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = "FEColorHeading3",
			},
		},
		{
			type = "TextLabel",
			position = { 13, 1 },
			size = { 71, 13 },
			name = "lblPopUnitsr",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = { 255, 0, 0, 170 },
			},
		},

		{
			type = "Button",
			position = { 0, 0 },
			size = { 84, 13 },
			onMousePressed = "UI_ToggleScreen( 'UnitCapInfoPopup', 1)",
		},
	},
	-- Officer Frame
	{
		type = "Frame",
		position = { 232, 0 },
		size = { 70, 13 },
		backgroundColor = "IGColorBackground1",
		helpTip = "OFFICERS OPERATING/AVAILABLE/MAX (I)",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		{
			type = "Frame",
			position = { 0, 0 },
			size = { 13, 13 },
			name = "iconofficer",
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\officer_icon.mres",
				textureUV = { 0, 0, 13, 13 },
				color = OUTLINECOLOR,
			},
		},
		{
			type = "TextLabel",
			position = { 13, 1 },
			size = { 57, 13 },
			name = "lblPopOfficerUnits",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = "FEColorHeading3",
			},
		},
		{
			type = "TextLabel",
			position = { 13, 1 },
			size = { 57, 13 },
			name = "lblPopOfficerUnitsr",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = { 255, 0, 0, 170 },
			},
		},
		{
			type = "Button",
			position = { 0, 0 },
			size = { 70, 13 },
			onMousePressed = "UI_ToggleScreen( 'UnitCapInfoPopup', 1)",
		},
	},

	---------------------------------------------------------------------------

	{
		type = "Frame",
		position = { 302, 0 },
		size = { 60, 13 },
		backgroundColor = "IGColorBackground1",
		helpTip = "REMOTE MONITOR",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		-- Icon	1
		{
			type = "Button",
			buttonStyle = "Taskbar_CommandButtonStyleSmall",
			position = { 48, 1 },
			size = { 12, 12 },
			name = "iconyear1",
			onMouseClicked = "UI_ToggleScreen( 'UnitCapInfoPopup1', 1)",
			helpTip = "REMOTE MONITOR",
			helpTipTextLabel = "commandsHelpTip",
			helpTipScreen = "NewTaskbar";
			{
				type = "Frame",
				size = { 12, 12, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "data:ui\\newui\\research\\icons\\computerlink_1600.tga",
					textureUV = { -2, -4, 23, 23, },
				},
			},
		},
		{
			type = "TextLabel",
			position = { 0, 1 },
			size = { 48, 13 },
			name = "lock",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Right",
				color = "FEColorHeading3",
				offset = { -2, 0 },
			},
		},
		{
			type = "TextLabel",
			position = { 0, 1 },
			size = { 48, 13 },
			name = "locks",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Right",
				color = { 255, 0, 0, 170 },
				offset = { -2, 0 },
			},
		},
		--{
		--type = "Button",
		--position = {0, 0},
		--size = {48,  13},
		--onMousePressed = "UI_ToggleScreen( 'UnitCapInfoPopup1', 1)",
		--},
	},

	------------------------------------------------------------------------------

	-- Year Frame
	{
		type = "Frame",
		position = { 362, 0 },
		size = { 75, 13 },
		backgroundColor = "IGColorBackground1",
		helpTip = "GAME YEAR",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		-- Year Dynamic Label
		{
			type = "Frame",
			name = "framelblyear",
			position = { 1, 0 },
			size = { 75, 13 };
			{
				type = "TextLabel",
				position = { 0, 1 },
				size = { 74, 13 },
				name = "lblyear",
				Text = {
					textStyle = "IGHeading2",
					hAlign = "Center",
					--offset = {-1, 0},
					color = "FEColorHeading3",
				},
			},
		},
		{
			type = "Button",
			position = { 0, 0 },
			size = { 75, 13 },
			onMousePressed = "UI_ToggleScreen( 'YearMenu', 1)",
		},
	},

	-----------------------------------------------------------------------------

	{
		type = "Frame",
		position = { 437, 0 },
		size = { 74, 13 },
		backgroundColor = "IGColorBackground1",
		helpTip = "REMOTE MONITOR",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		visible = 1;
		-- Icon 2
		{
			type = "Button",
			buttonStyle = "Taskbar_CommandButtonStyleSmall",
			position = { 0, 1 },
			size = { 12, 12 },
			name = "iconyear2",
			onMouseClicked = "UI_ToggleScreen( 'UnitCapInfoPopup1', 1)",
			helpTip = "REMOTE MONITOR",
			helpTipTextLabel = "commandsHelpTip",
			helpTipScreen = "NewTaskbar";
			{
				type = "Frame",
				size = { 12, 12, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "data:ui\\newui\\research\\icons\\computerlink_1600.tga",
					textureUV = { -2, -4, 23, 23, },
				},
			},
		},
		{
			type = "TextLabel",
			position = { 12, 1 },
			size = { 62, 13 },
			name = "lock1",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = "FEColorHeading3",
			},
		},
		{
			type = "TextLabel",
			position = { 12, 1 },
			size = { 62, 13 },
			name = "lock1s",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = { 255, 0, 0, 170 },
			},
		},
		--{
		--type = "Button",
		--position = {12, 0},
		--size = {62,  13},
		--onMousePressed = "UI_ToggleScreen( 'UnitCapInfoPopup1', 1)",
		--},
	},



	---COMPUTER SPY--------------------------------------------------------------------------

	{
		type = "Frame",
		position = { 538, 0 },
		size = { 76, 13 },
		visible = 0,
		backgroundColor = "IGColorBackground1",
		helpTip = "REMOTE MONITOR",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		{
			type = "Frame",
			position = { 0, 1 },
			size = { 15, 15 },
			name = "iconcomputerspy",
			BackgroundGraphic = {
				texture = "data:ui\\newui\\research\\icons\\computerlink.mres",
				textureUV = { 0, 0, 13, 13 },
				color = OUTLINECOLOR,
			},
		},
		{
			type = "TextLabel",
			position = { 19, 1 },
			size = { 57, 13 },
			name = "lblstatus",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = "FEColorHeading3",
			},
		},
		{
			type = "TextLabel",
			position = { 19, 1 },
			size = { 57, 13 },
			name = "lblstatuss",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = { 255, 0, 0, 170 },
			},
		},
		{
			type = "Button",
			position = { 0, 0 },
			size = { 76, 13 },
			onMousePressed = "UI_ToggleScreen( 'UnitCapInfoPopup1', 1)",
		},
	},

	---ENERGY-------------------------------------------------

	{
		type = "Frame",
		name = "FrameShowEnergy",
		position = { 511, 0 },
		size = { 122, 13, },
		backgroundColor = "IGColorBackground1",
		helpTip = "ENERGY PRODUCTION/STORED/MAX",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		{
			type = "Frame",
			position = { 0, 0, },
			size = { 13, 13, },
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\lightning_yellow.mres",
				textureUV = { 0, 0, 13, 13, },
				color = OUTLINECOLOR, },
		},
		---powerlist
		{
			type = "TextLabel",
			position = { 12, 1 },
			size = { 11, 13 },
			name = "powerList",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Right",
				color = "FEColorHeading3",
				offset = { -1, 0 },
			},
		},
		{
			type = "TextLabel",
			position = { 90, 1 },
			size = { 32, 13 },
			name = "powerListMax",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = "FEColorHeading3",
			},
		},
		---contorno
		{
			type = "Frame",
			position = { 24, 2, },
			size = { 65, 9, },
			borderWidth = 1,
			borderColor = "IGColorOutline",
		},
		---livelli
		--red
		{
			type = "Frame",
			name = "FrameEnergyLevel_1",
			position = { 25, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 85 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_2",
			position = { 28, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 92 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_3",
			position = { 31, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 99 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_4",
			position = { 34, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 106 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_5",
			position = { 37, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 113 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_6",
			position = { 40, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 120 },
			visible = 0,
		},
		--yellow
		{
			type = "Frame",
			name = "FrameEnergyLevel_7",
			position = { 43, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 127 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_8",
			position = { 46, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 134 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_9",
			position = { 49, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 141 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_10",
			position = { 52, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 148 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_11",
			position = { 55, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 155 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_12",
			position = { 58, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 162 },
			visible = 0,
		},
		--green
		{
			type = "Frame",
			name = "FrameEnergyLevel_13",
			position = { 61, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 169 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_14",
			position = { 64, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 176 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_15",
			position = { 67, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 183 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_16",
			position = { 70, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 190 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_17",
			position = { 73, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 197 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_18",
			position = { 76, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 204 },
			visible = 0,
		},
		--hyper
		{
			type = "Frame",
			name = "FrameEnergyLevel_19",
			position = { 79, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 211 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_20",
			position = { 82, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 218 },
			visible = 0,
		},
		{
			type = "Frame",
			name = "FrameEnergyLevel_21",
			position = { 85, 3, },
			size = { 3, 7, },
			backgroundColor = { 255, 255, 255, 225 },
			visible = 0,
		},
		{
			type = "Button",
			position = { 0, 0 },
			size = { 122, 13 },
			onMousePressed = "UI_ToggleScreen( 'EnergyMenu', 1)",
		},
	},



	-- Tech Frame
	{
		type = "Frame",
		position = { 633, 0 },
		size = { 49, 13 },
		backgroundColor = "IGColorBackground1",
		helpTip = "RESEARCH SCORE/NEXT LEVEL (I)",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		{
			type = "Frame",
			position = { 0, 0 },
			size = { 17, 17 },
			name = "icontotalscore",
			BackgroundGraphic = {
				texture = "data:ui\\newui\\research\\icons\\tech.mres",
				textureUV = { 0, 0, 13, 13 },
				color = OUTLINECOLOR,
			},
		},
		{
			type = "TextLabel",
			position = { 13, 1 },
			size = { 36, 13 },
			name = "lbltotalscore",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = "FEColorHeading3",
			},
		},
		{
			type = "Button",
			position = { 0, 0 },
			size = { 49, 13 },
			onMousePressed = "UI_ToggleScreen( 'UnitCapInfoPopup', 1)",
		},
	},
	-- Maintenance Frame
	{
		type = "Frame",
		position = { 682, 0 },
		size = { 46, 13 },
		backgroundColor = "IGColorBackground1",
		helpTip = "MAINTENANCE COST (I)",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		{
			type = "Frame",
			position = { 0, 1 },
			size = { 13, 13 },
			name = "iconMaintenance",
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\maintenance_icon.mres",
				textureUV = { 0, 0, 13, 13 },
				color = OUTLINECOLOR,
			},
		},
		{
			type = "TextLabel",
			position = { 12, 1 },
			size = { 34, 13 },
			name = "lblMaintenance",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = "FEColorHeading3",
			},
		},
		{
			type = "Button",
			position = { 0, 0 },
			size = { 46, 13 },
			onMousePressed = "UI_ToggleScreen( 'UnitCapInfoPopup', 1)",
		},
	},
	-- RU Frame
	{
		type = "Frame",
		position = { 728, 0 },
		size = { 72, 13 },
		backgroundColor = "IGColorBackground1",
		helpTip = "RUs AVAILABLE/MAX CAPACITY (I)",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		{
			type = "Frame",
			position = { 0, 0 },
			size = { 13, 13 },
			name = "iconRU",
			BackgroundGraphic = {
				texture = "data:ui\\newui\\ingameicons\\ru_icon.mres",
				textureUV = { 0, 0, 13, 13 },
				color = OUTLINECOLOR,
			},
		},
		{
			type = "TextLabel",
			position = { 13, 1 },
			size = { 59, 13 },
			name = "lblResourceUnits",
			Text = {
				textStyle = "IGHeading2",
				hAlign = "Left",
				color = "FEColorHeading3",
			},
		},
		{
			type = "Button",
			position = { 0, 0 },
			size = { 72, 13 },
			onMousePressed = "UI_ToggleScreen( 'UnitCapInfoPopup', 1)",
		},
	},


}

YearMenu = {
	size = { 2, 71, 200, 200 },
	onShow = "UI_HideScreen('BuildQueueMenu'); UI_HideScreen('UnitCapInfoPopup'); UI_HideScreen('UnitCapInfoPopup1'); UI_HideScreen('EnergyMenu')",
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	clickThrough = 1;
	{
		type = "Frame",
		position = { 3, 0 },
		size = { 12, 12 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\ingameicons\\degree_icon.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 0 },
		size = { 80, 13 },
		Text = {
			text = "Military Rank",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 0 },
		size = { 80, 13 },
		name = "remuneration",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},

	{
		type = "Frame",
		position = { 3, 13 },
		size = { 12, 12 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\ingameicons\\maintenance_icon.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 13 },
		size = { 80, 13 },
		Text = {
			text = "Maintenance",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 13 },
		size = { 80, 13 },
		name = "lblmaintenance",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	{
		type = "TextLabel",
		position = { 142, 13 },
		size = { 100, 13 },
		name = "lblmaintenance1",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},

	{
		type = "Frame",
		position = { 3, 26 },
		size = { 12, 12 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\ingameicons\\ru_icon.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 26 },
		size = { 80, 13 },
		Text = {
			text = "RU Harvested",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 26 },
		size = { 80, 13 },
		name = "ruharvested",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},

	{
		type = "Frame",
		position = { 3, 39 },
		size = { 12, 12 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\ingameicons\\ru_icon.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 39 },
		size = { 80, 13 },
		Text = {
			text = "RU Spent",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 39 },
		size = { 80, 13 },
		name = "ruspent",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},

	{
		type = "Frame",
		position = { 3, 52 },
		size = { 16, 16 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\research\\icons\\fusion.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 52 },
		size = { 80, 13 },
		Text = {
			text = "RU by Fusion",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 52 },
		size = { 80, 13 },
		name = "fusion",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},

	{
		type = "Frame",
		position = { 3, 65 },
		size = { 16, 16 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\research\\icons\\fusion2.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 65 },
		size = { 80, 13 },
		Text = {
			text = "RU by Trade",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 65 },
		size = { 80, 13 },
		name = "fusion2",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},

	{
		type = "Frame",
		position = { 3, 78 },
		size = { 16, 16 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\research\\icons\\fusion1.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 78 },
		size = { 80, 13 },
		Text = {
			text = "RU by Mining Base",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 78 },
		size = { 80, 13 },
		name = "fusion1",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},

	{
		type = "Frame",
		position = { 3, 91 },
		size = { 16, 16 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\research\\icons\\fusion3.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 91 },
		size = { 80, 13 },
		Text = {
			text = "RU by Population",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 91 },
		size = { 80, 13 },
		name = "fusion3",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},

	{
		type = "Frame",
		position = { 3, 104 },
		size = { 16, 16 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\research\\icons\\diplomacy.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 104 },
		size = { 80, 13 },
		Text = {
			text = "Diplomacy Fee",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 104 },
		size = { 80, 13 },
		name = "diplomacy",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},

	{
		type = "TextLabel",
		position = { 18, 120 },
		size = { 80, 13 },
		Text = {
			text = "SUMMARY",
			textStyle = "IGHeading1",
			color = "FEColorHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 120 },
		size = { 80, 13 },
		name = "yearsummary",
		Text = {
			textStyle = "IGHeading1",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
}

EnergyMenu = {
	size = { 2, 71, 226, 190 },
	onShow = "UI_HideScreen('BuildQueueMenu'); UI_HideScreen('UnitCapInfoPopup'); UI_HideScreen('UnitCapInfoPopup1'); UI_HideScreen('YearMenu')",
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	clickThrough = 1,
	backgroundColor = "IGColorBackground1";
	-------------
	{
		type = "Frame",
		position = { 3, 0 },
		size = { 16, 16 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\ingameicons\\lightning_yellow.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 0 },
		size = { 100, 13 },
		Text = {
			text = "Energy Consume",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	--------------------
	{
		type = "TextLabel",
		position = { 26, 10 },
		size = { 95, 13 },
		Text = {
			text = "Build Queue/Facilities",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 10 },
		size = { 40, 13 },
		name = "lblbuild",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 20 },
		size = { 90, 13 },
		Text = {
			text = "Research/Divisions",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 20 },
		size = { 40, 13 },
		name = "lblresearch",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 30 },
		size = { 90, 13 },
		Text = {
			text = "Sensors/Ping",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 30 },
		size = { 40, 13 },
		name = "lblsensor",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 40 },
		size = { 90, 13 },
		Text = {
			text = "Navigation",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 40 },
		size = { 40, 13 },
		name = "lblmove",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 50 },
		size = { 90, 13 },
		Text = {
			text = "Attack/Target",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 50 },
		size = { 40, 13 },
		name = "lblattack",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 60 },
		size = { 90, 13 },
		Text = {
			text = "Hyperspace/Inhibitor",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 60 },
		size = { 40, 13 },
		name = "lblhyperspace",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 70 },
		size = { 90, 13 },
		Text = {
			text = "Defense Fields",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 70 },
		size = { 40, 13 },
		name = "lbldefensefield",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 80 },
		size = { 90, 13 },
		Text = {
			text = "Cloak",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 80 },
		size = { 40, 13 },
		name = "lblcloak",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 90 },
		size = { 90, 13 },
		Text = {
			text = "Fusion",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 90 },
		size = { 40, 13 },
		name = "lblfusion",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 100 },
		size = { 90, 13 },
		Text = {
			text = "Sun Distance Factor",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 100 },
		size = { 40, 13 },
		name = "lblspace",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 110 },
		size = { 90, 13 },
		Text = {
			text = "Misc/Power Up",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 110 },
		size = { 40, 13 },
		name = "lblmisc",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 120 },
		size = { 90, 13 },
		Text = {
			text = "Production",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 120 },
		size = { 40, 13 },
		name = "lblproduction",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "Frame",
		position = { 3, 133 },
		size = { 16, 16 },
		BackgroundGraphic = {
			texture = "data:ui\\newui\\ingameicons\\lightning_yellow.mres",
			textureUV = { 0, 0, 13, 13 },
			color = OUTLINECOLOR,
		},
	},
	{
		type = "TextLabel",
		position = { 18, 133 },
		size = { 90, 13 },
		Text = {
			text = "Energy Efficiency",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	----------------
	{
		type = "TextLabel",
		position = { 26, 143 },
		size = { 90, 13 },
		Text = {
			text = "Build Rate",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 143 },
		size = { 40, 13 },
		name = "lblbuildrate",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 153 },
		size = { 90, 13 },
		Text = {
			text = "Navigation/Attack",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 153 },
		size = { 40, 13 },
		name = "lblnavigationattack",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 26, 169 },
		size = { 90, 13 },
		Text = {
			text = "SUMMARY",
			textStyle = "IGHeading1",
			color = "FEColorHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 116, 169 },
		size = { 110, 13 },
		name = "lblenergysummary",
		Text = {
			textStyle = "IGHeading1",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
}

----------------------------------------------------------------------

GameParameterMenu = {
	size = { 2, 71, 226, 283 },
	onShow = "UI_HideScreen('BuildQueueMenu'); UI_HideScreen('UnitCapInfoPopup'); UI_HideScreen('UnitCapInfoPopup1'); UI_HideScreen('YearMenu')",
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	clickThrough = 1,
	backgroundColor = "IGColorBackground1";
	--------------------
	{
		type = "TextLabel",
		position = { 3, 10 },
		size = { 95, 13 },
		Text = {
			text = "Starting Resources",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 10 },
		size = { 40, 13 },
		name = "lblresstart",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 20 },
		size = { 90, 13 },
		Text = {
			text = "Starting Ships",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 20 },
		size = { 40, 13 },
		name = "lblstartwith",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 30 },
		size = { 90, 13 },
		Text = {
			text = "Starting Honour Points",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 30 },
		size = { 40, 13 },
		name = "lblhonourstart",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 40 },
		size = { 90, 13 },
		Text = {
			text = "Resource Multiplier",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 40 },
		size = { 40, 13 },
		name = "lblresources",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 50 },
		size = { 90, 13 },
		Text = {
			text = "Honour Sensitivity",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 50 },
		size = { 40, 13 },
		name = "lblhonoursensitivity",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 60 },
		size = { 90, 13 },
		Text = {
			text = "Research Sensitivity",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 60 },
		size = { 40, 13 },
		name = "lblresearchsensitivity",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 70 },
		size = { 90, 13 },
		Text = {
			text = "Construction Speed",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 70 },
		size = { 40, 13 },
		name = "lblbuildspeed",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 80 },
		size = { 90, 13 },
		Text = {
			text = "RU Operations Speed",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 80 },
		size = { 40, 13 },
		name = "lblresource",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 90 },
		size = { 90, 13 },
		Text = {
			text = "Recruiting Speed",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 90 },
		size = { 40, 13 },
		name = "lblrecruiting",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 100 },
		size = { 90, 13 },
		Text = {
			text = "Experience Sensitivity",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 100 },
		size = { 40, 13 },
		name = "lblexperiencesensitivity",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 110 },
		size = { 90, 13 },
		Text = {
			text = "Energy Sensitivity",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 110 },
		size = { 40, 13 },
		name = "lblenergysensitivity",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 120 },
		size = { 90, 13 },
		Text = {
			text = "Solar Shield",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 120 },
		size = { 40, 13 },
		name = "lblspacebalancer",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	----------------
	{
		type = "TextLabel",
		position = { 3, 130 },
		size = { 90, 13 },
		Text = {
			text = "Population Growth",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 130 },
		size = { 40, 13 },
		name = "lblpopbalancer",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 140 },
		size = { 90, 13 },
		Text = {
			text = "Hyperspace Accessibility",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 140 },
		size = { 40, 13 },
		name = "lblhyperspace",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 150 },
		size = { 90, 13 },
		Text = {
			text = "Rank Remuneration",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 150 },
		size = { 40, 13 },
		name = "lblrankremuneration",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 160 },
		size = { 90, 13 },
		Text = {
			text = "Battle Duration",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 160 },
		size = { 40, 13 },
		name = "lblunithealth",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 180 },
		size = { 90, 13 },
		Text = {
			text = "AI Aids",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 180 },
		size = { 40, 13 },
		name = "lblaiaids",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 190 },
		size = { 90, 13 },
		Text = {
			text = "AI Aggressiveness",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 190 },
		size = { 40, 13 },
		name = "lblmilitary",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 200 },
		size = { 90, 13 },
		Text = {
			text = "Start Position",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 200 },
		size = { 40, 13 },
		name = "lblstartlocation",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 210 },
		size = { 90, 13 },
		Text = {
			text = "Lock Teams",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 210 },
		size = { 40, 13 },
		name = "lbllockteams",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 220 },
		size = { 90, 13 },
		Text = {
			text = "Primary Objective",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 220 },
		size = { 40, 13 },
		name = "lblwincondition",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 230 },
		size = { 90, 13 },
		Text = {
			text = "Secondary Objectives",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 230 },
		size = { 40, 13 },
		name = "lblsecondaryobjectives",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 240 },
		size = { 90, 13 },
		Text = {
			text = "Diplomacy Fee",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 240 },
		size = { 40, 13 },
		name = "lbldiplomacy",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 250 },
		size = { 90, 13 },
		Text = {
			text = "Unit Capacity",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 250 },
		size = { 40, 13 },
		name = "lblunitcapsrank",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 260 },
		size = { 90, 13 },
		Text = {
			text = "Auto Save",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 260 },
		size = { 40, 13 },
		name = "lblautosave",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},
	---------------
	{
		type = "TextLabel",
		position = { 3, 270 },
		size = { 90, 13 },
		Text = {
			text = "Skip Intro",
			textStyle = "IGHeading2",
			offset = { 0, 0 },
		},
	},
	{
		type = "TextLabel",
		position = { 113, 270 },
		size = { 40, 13 },
		name = "lblintro",
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = "FEColorHeading3",
		},
	},


}
