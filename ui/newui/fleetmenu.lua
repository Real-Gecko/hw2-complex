FleetMenu = {
	size = { 0, 0, 800, 600 },
	stylesheet = "HW2StyleSheet",

	claimMousePress = 1,

	RootElementSettings = {
		onMouseClicked = "UI_ToggleScreen( 'FleetMenu', 0)",
	},

	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords
	onShow = "UI_SetButtonPressed('NewTaskbar', 'btnFleet', 1); UI_SetButtonTextHotkey('FleetMenu', 'btnForm1', 'Player Info (I)', 149)",
	onHide = "UI_SetButtonPressed('NewTaskbar', 'btnFleet', 0)";

	-- root frame for moving screen so it moves with task bar when hidden
	{
		type = "Frame",
		name = "rootFrame",
		position = { 0, 0 },
		size = { 800, 600 },
		giveParentMouseInput = 1;

		-- the root frame for the menu... add children to this
		{
			type = "Frame",
			name = "menu",
			position = { 1, 436 },
			size = { 217, 77 },
			backgroundColor = "IGColorBackground1";

			-- title
			{
				type = "TextLabel",
				position = { -2, 0 },
				size = { 221, 18 },
				borderColor = { 170, 227, 255, 255 },
				borderWidth = 2,
				Text = {
					textStyle = "IGHeading2",
					hAlign = "Left",
					offset = { 8, 0 },
					color = { 255, 255, 255, 255 },
					text = "FLEET DATA//", -- FLEET INFO//
				},
			},

			-- menu items
			{
				type = "TextButton",
				buttonStyle = "RightClickMenu_ButtonStyle",
				name = "btnForm1",
				toggleButton = 0,
				position = { 2, 21 },
				size = { 213, 12 },
				Text = {
					font = "ButtonFont",
					hAlign = "Left",
					offset = { 4, 0 },
					text = "Player Info (I)",
				},
				onMouseClicked = "UI_ShowScreen( 'UnitCapInfoPopup', ePopup)",
				hotKeyID = 149,
			},
			{
				type = "TextButton",
				buttonStyle = "RightClickMenu_ButtonStyle",
				name = "btnForm6",
				toggleButton = 0,
				position = { 2, 35 },
				size = { 213, 12 },
				Text = {
					font = "ButtonFont",
					hAlign = "Left",
					offset = { 4, 0 },
					text = "RUs Year Summary",
				},
				onMouseClicked = "UI_ShowScreen( 'YearMenu', ePopup)",
			},
			{
				type = "TextButton",
				buttonStyle = "RightClickMenu_ButtonStyle",
				name = "btnForm7",
				toggleButton = 0,
				position = { 2, 49 },
				size = { 213, 12 },
				Text = {
					font = "ButtonFont",
					hAlign = "Left",
					offset = { 4, 0 },
					text = "Energy Monitor",
				},
				onMouseClicked = "UI_ShowScreen( 'EnergyMenu', ePopup)",
			},
			{
				type = "TextButton",
				buttonStyle = "RightClickMenu_ButtonStyle",
				name = "btnForm5",
				toggleButton = 0,
				position = { 2, 63 },
				size = { 213, 12 },
				Text = {
					font = "ButtonFont",
					hAlign = "Left",
					offset = { 4, 0 },
					text = "$5455", --None
				},
				onMouseClicked = "UI_HideScreen( 'UnitCapInfoPopup'); UI_HideScreen('YearMenu'); UI_HideScreen('EnergyMenu')",
			},

		},
	},
}
