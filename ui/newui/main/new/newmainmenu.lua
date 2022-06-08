-- LUA CONFIG FOR THE MAIN MENU UISCREEN
NewMainMenu = {
	size = { 0, 0, 800, 600 },
	stylesheet = "HW2StyleSheet",

	RootElementSettings = {
		-- black background for letterbox effect
		backgroundColor = { 0, 0, 0, 255 },
	},

	-- Flags
	-- Enter pixel coords for texture coords
	pixelUVCoords = 1;

	--	Hotkeys =
	--	{
	--		{
	--			"FE_ExitToWindows()",
	--			INKE_KeyDown,
	--			0,
	--			"Exit to operating system",
	--			{
	--				ALTKEY,
	--				F4KEY
	--			}
	--		},
	--	},
	{
		type = "Frame",
		position = { 0, 100 },
		size = { 800, 400 },
		BackgroundGraphic = {
			size = { 800, 400 },
			texture = "DATA:UI/NewUI/Background/load_background.mres",
			textureUV = { 0, 56, 800, 455 },
		},
	},
	-- Panel frame
	{
		type = "Frame",
		autosize = 1,
		backgroundColor = "FEColorBackground1",
		--		backgroundColor =  {100,100,100,255},
		position = { 513, 164 },
		autoarrange = 1,
		autoarrangeWidth = 304,
		autoarrangeSpace = 0,
		maxSize = { 273, 500 };
		-- Spacer
		{
			type = "Frame",
			size = { 304, 2 },
		},
		-- Panel Title
		{
			type = "TextLabel",
			size = { 304, 13 },
			Text = {
				textStyle = "FEHeading3",
				-- MAIN MENU
				text = "$2617",
				offset = { 8, 0 },
			},
		},
		-- Spacer
		{
			type = "Frame",
			size = { 304, 2 },
		},
		-- Panel Subtitle
		{
			type = "TextLabel",
			name = "m_lblSubTitle",
			size = { 304, 10 },
			Text = {
				textStyle = "FEHeading4",
				-- SELECT//
				text = "$2618",
				offset = { 8, 0 },
			},
		},
		-- Spacer
		{
			type = "Frame",
			size = { 304, 4 },
		},
		-- Left edge spacer
		{
			type = "Frame",
			size = { 4, 50 },
			--			backgroundColor = {100,100,100,255},
		},
		{
			type = "ListBox",
			--			outerBorderWidth = 2,
			borderColor = "FEColorOutline",
			--			hugBottom = 1,
			position = { 0, 0 },
			size = { 264, 155 },
			autoarrange = 1,
			autoarrangeSpace = 2,
			autoarrangeWidth = 256;

			--=============================================================================
			-- Buttons
			--

			{
				type = "ListBoxItem",
				autosize = 1,
				autoarrange = 1,
				autoarrangeSpace = 1;
				{
					type = "TextButton",
					buttonStyle = "FEButtonStyle1",
					-- Player VS CPU
					text = "$2604",
					name = "btnPlayerVsCPU",
					width = 240,
				},
			},
			{
				type = "ListBoxItem",
				autosize = 1,
				autoarrange = 1,
				autoarrangeSpace = 1;
				{
					type = "TextButton",
					buttonStyle = "FEButtonStyle1",
					-- Multiplayer (even newer)
					text = "$2614",
					name = "btnMultiplayer",
					width = 240,
					onMouseClicked = [[UI_ShowScreen("ConnectionType", eTransition);]],
				},
			},
			{
				type = "ListBoxItem",
				autosize = 1,
				autoarrange = 1,
				autoarrangeSpace = 1;
				{
					type = "TextButton",
					buttonStyle = "FEButtonStyle1",
					width = 240,
					enabled = 1,
					-- Check for patch
					text = "$2605",
					onMouseClicked = [[UI_ShowScreen("PatchScreen", eTransition);]],
				},
			},
			{
				type = "ListBoxItem",
				autosize = 1,
				autoarrange = 1,
				autoarrangeSpace = 1;
				{
					type = "TextButton",
					buttonStyle = "FEButtonStyle1",
					-- Player Profiles",
					text = "$2616",
					name = "btnProfile",
					width = 240,

					onMouseClicked = [[
						UI_SetNextScreen("UserProfile", "NewMainMenu");
						UI_SetPreviousScreen("UserProfile", "NewMainMenu");
						UI_ShowScreen("UserProfile", eTransition);
					]],
				},
			},
			{
				type = "ListBoxItem",
				autosize = 1,
				autoarrange = 1,
				autoarrangeSpace = 1;
				{
					type = "TextButton",
					buttonStyle = "FEButtonStyle1",
					-- Options
					text = "$2607",
					name = "btnOptions",
					width = 240,
					onMouseClicked = [[UI_ShowScreen("FEGameOptions", eTransition)]],
				},
			},
			{
				type = "ListBoxItem",
				autosize = 1,
				autoarrange = 1,
				autoarrangeSpace = 1;
				{
					type = "TextButton",
					buttonStyle = "FEButtonStyle1",
					-- Movies
					text = "$2608",
					name = "btnMovies",
					width = 240,
					onMouseClicked = [[UI_ShowScreen("PlayMoviesScreen", eTransition)]],
				},
			},
			{
				type = "ListBoxItem",
				autosize = 1,
				autoarrange = 1,
				autoarrangeSpace = 1;
				{
					type = "TextButton",
					buttonStyle = "FEButtonStyle1",
					-- Credits
					-- should actually be set within ui.ucs
					text = "CREDITS",
					name = "btnCredits",
					width = 240,
					onMouseClicked = [[UI_ShowScreen("CreditsScreen", eTransition)]],
				},
			},
			{
				type = "ListBoxItem",
				autosize = 1,
				autoarrange = 1,
				autoarrangeSpace = 1;
				{
					type = "TextButton",
					buttonStyle = "FEButtonStyle1",
					-- Tutorial
					text = "$2602",
					name = "btnTutorial",
					width = 240,
					enabled = 0,
					visible = 0,
				},
			},
			{
				type = "ListBoxItem",
				autosize = 1,
				autoarrange = 1,
				autoarrangeSpace = 1;
				{
					type = "TextButton",
					buttonStyle = "FEButtonStyle1",
					-- Campaign
					text = "$2603",
					name = "btnCampaign",
					width = 240,
					enabled = 0,
					visible = 0,
				},
			},


			--=============================================================================
		},
		-- Spacer (This keeps the width as well)
		{
			type = "Frame",
			size = { 300, 0 },
		},
		{
			type = "Frame",
			autoarrange = 1,
			autoarrangeSpace = 5,
			autoarrangeWidth = 256,
			size = { 300, 20 };
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle2",
				-- Exit
				text = "EXIT TO WINDOWS",
				name = "btnExit",
				width = 240,
				onMouseClicked = [[UI_ExitApp();]],
			},
		},

		-- bottom Spacer
		{
			type = "Frame",
			size = { 300, 4 },
			--			backgroundColor = {100,100,100,255},
		},
	},

	-- Comment out this frame if you dont want the build info...
	--	{
	--		type = "Frame",
	--		autosize = 1,
	--		position = {2, 600 - 15},
	--		;
	-- Version number
	{
		type = "TextLabel",
		name = "lblVersion",
		size = { 400, 13 },
		position = { 578 - 400, 518 - 56 },
		Text = {
			text = "$1221",
			font = "ButtonFont",
			hAlign = "Right",
			vAlign = "Top",
			color = { 119, 166, 191, 255 },
			offset = { -2, 0 },
		},
	},
	--		-- Build number
	--		{
	--			type = "TextLabel",
	--			name = "lblBuildNumber",
	--			visible = 0,
	--			size = {400, 13},
	--			position = {0,13},
	--			Text =
	--			{
	--				font = "ListBoxItemFont",
	--				color = {255,255,255, 255},
	--			},
	--		},
	--		-- Builder name
	--		{
	--			type = "TextLabel",
	--			name = "lblBuilderName",
	--			visible = 0,
	--			size = {400, 13},
	--			position = {0,26},
	--			Text =
	--			{
	--				font = "ListBoxItemFont",
	--				color = {255,255,255, 255},
	--			},
	--		},
	--		-- Data path
	--		{
	--			type = "TextLabel",
	--			name = "lblDataPath",
	--			visible = 0,
	--			size = {400, 13},
	--			position = {0,39},
	--			Text =
	--			{
	--				font = "ListBoxItemFont",
	--				color = {255,255,255, 255},
	--			},
	--		},
	--	},
}
