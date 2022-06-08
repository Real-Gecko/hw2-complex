OUTLINECOLOR = { 200, 200, 200, 225, }
NewManageMenu = {
	size = { 586, 15, 212, 497, },
	stylesheet = "HW2StyleSheet",
	RootElementSettings = {
		backgroundColor = "IGColorBackground1", },
	soundOnShow = "SFX_LaunchMenuONOFF",
	soundOnHide = "SFX_LaunchMenuONOFF",
	pixelUVCoords = 1,
	onShow = "UI_SubtitleNarrow(); UI_HideScreen('NewBuildMenu'); UI_HideScreen('NewResearchMenu'); UI_HideScreen('NewLaunchMenu')",
	onHide = "UI_SubtitleWide(); UI_SetButtonPressed('NewTaskbar', 'btnManage', 0); UI_HideScreen('TacticsMenu'); UI_HideScreen('StrikeGroupsMenu')",
	drawToShipLineWidth = 2,
	drawToShipLineStubLength = 10,
	drawToShipLineColor = OUTLINECOLOR;
	{
		type = "Line",
		p1 = { 210, 2, },
		p2 = { 210, 495, },
		above = 0,
		lineWidth = 2,
		color = OUTLINECOLOR,
	},
	{
		type = "Line",
		p1 = { 0, 429, },
		p2 = { 210, 429, },
		above = 1,
		lineWidth = 2,
		color = OUTLINECOLOR,
	},
	{
		type = "Line",
		p1 = { 0, 495, },
		p2 = { 210, 495, },
		above = 1,
		lineWidth = 2,
		color = OUTLINECOLOR,
	},
	{
		type = "TextLabel",
		name = "helpTipTextLabel",
		position = { 0, 441, },
		size = { 210, 19, },
		marginWidth = 6,
		Text = {
			textStyle = "IGHeading2",
			hAlign = "Left",
			color = { 255, 255, 255, 255, }, },
	},
	{
		type = "TextLabel",
		position = { 0, 2, },
		size = { 210, 19, },
		name = "lblTitle",
		Text = {
			textStyle = "IGHeading1",
			text = "FLEET MENU",
			offset = { 4, 0, },
			color = { 0, 0, 0, 255, }, },
		backgroundColor = OUTLINECOLOR;
		{
			type = "Button",
			position = { 193, 2, },
			buttonStyle = "IGCloseButton",
			onMouseClicked = "UI_HideScreen('NewManageMenu')",
			helpTip = "$5221",
			helpTipTextLabel = "commandsHelpTip",
			helpTipScreen = "NewTaskbar",
			hotKeyID = 53, },
	},

	{
		type = "Frame",
		position = { 2, 23, },
		size = { 204, 28, },
		helpTip = "AUTO SELECTION",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		{
			type = "Button",
			name = "btnautoselection",
			position = { 0, 0, },
			size = { 13, 13, },
			buttonStyle = "IGRadioButtonStyle",
			PressedGraphic = {
				size = { 13, 13, },
				texture = "data:ui\\newui\\elements\\radio_button.mres",
				textureUV = { 14, 0, 27, 13, },
				color = OUTLINECOLOR, },
			onMouseClicked = "UI_ToggleScreen( 'autoselection', 1)",
		},
		{
			type = "TextLabel",
			name = "btnautoselectionlabel",
			position = { 1, 0 },
			size = { 100, 13 },
			Text = {
				text = "AUTO SELECTION",
				textStyle = "IGRadioButtonTextStyle", },
			giveParentMouseInput = 1,
			dropShadow = 1,
			visible = 1,
		},
	},
	{
		type = "Frame",
		size = { 210, 13, },
		position = { 0, 38, },
		backgroundColor = OUTLINECOLOR;
		{
			type = "TextLabel",
			position = { 0, 0 },
			size = { 210, 13 },
			name = "lblCurrentFacility",
			Text = {
				textStyle = "IGHeading2",
				color = { 0, 0, 0, 255 },
				offset = { 6, 0 },
				vAlign = "Middle",
			},
			backgroundColor = OUTLINECOLOR,
		},
	},

	---facilities----------------
	{
		type = "Frame",
		position = { 0, 52 },
		size = { 30, 360 },
		autoarrange = 1,
		autoarrangeWidth = 30,
		autoarrangeSpace = -1;
		{
			type = "RadioButton",
			buttonStyle = "IGButtonVuoto",
			name = "fleet",
			helpTip = "FLEET",
			helpTipTextLabel = "lblCurrentFacility",
			onMouseClicked = "UI_ToggleScreen( 'fleet', 0)";
			{
				type = "Frame",
				size = { 14, 16, },
				position = { 2, 2 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\rank.tga",
					textureUV = { 0, 0, 32, 32, },
				},
			},
			{
				type = "TextLabel",
				name = "fleetlabel",
				position = { 2, 8 },
				size = { 24, 10 },
				Text = { textStyle = "IGHeading2", },
				giveParentMouseInput = 1,
				dropShadow = 1,
				visible = 1,
			},
		},



	},
	---fighter
	{
		type = "Frame",

		position = { 17, 52 },
		size = { 30, 360 },
		autoarrange = 1,
		autoarrangeWidth = 30,
		autoarrangeSpace = -1;

		{
			type = "RadioButton",
			buttonStyle = "IGButtonFighter",
			name = "fighter",
			helpTip = "FIGHTER CLASS",
			helpTipTextLabel = "lblCurrentFacility",
			hotKeyID = 90,
			onMouseClicked = "UI_ToggleScreen( 'fighter', 0)";
			{
				type = "TextLabel",
				name = "fighterlabel",
				position = { 2, 8 },
				size = { 24, 10 },
				Text = { textStyle = "IGHeading2", },
				giveParentMouseInput = 1,
				dropShadow = 1,
				visible = 1,
			},
		},
		---HGN
		---scout-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_scout",
			helpTip = "SCOUT",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_scout', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_scoutfs.tga",
					textureUV = { -13, -25, 150, 150, },
				};
				{
					type = "TextLabel",
					name = "hgn_scoutlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---interceptor-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_interceptor",
			helpTip = "INTERCEPTOR",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_interceptor', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_interceptorfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_interceptorlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---attackbomber-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_attackbomber",
			helpTip = "BOMBER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_attackbomber', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_bomberfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_attackbomberlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---lbomber-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_lbomber",
			helpTip = "XBOMBER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_lbomber', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_lbomberfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_lbomberlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---defender-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_defender",
			helpTip = "SPY",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_defender', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_spyfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_defenderlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---railgunfighter-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_railgunfighter",
			helpTip = "INTRUDER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_railgunfighter', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_intruderfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_railgunfighterlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---hft-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_hft",
			helpTip = "SHIRY",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_hft', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_shiryfs.tga",
					textureUV = { -10, -27, 146, 146, },
				};
				{
					type = "TextLabel",
					name = "hgn_hftlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---attackbomberheavy-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_attackbomberheavy",
			helpTip = "HEAVY BOMBER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_attackbomberheavy', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_bomberheavyfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_attackbomberheavylabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---VGR
		---scout-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_scout",
			helpTip = "SCOUT",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_scout', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_scoutfs.tga",
					textureUV = { -13, -25, 150, 150, },
				};
				{
					type = "TextLabel",
					name = "vgr_scoutlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---assault craft-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_interceptor",
			helpTip = "ASSAULT CRAFT",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_interceptor', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_strikecraftfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_interceptorlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---bomber-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_bomber",
			helpTip = "BOMBER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_bomber', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_bomberfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_bomberlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---lance fighter-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_lancefighter",
			helpTip = "LANCE FIGHTER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_lancefighter', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_lancefighterfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_lancefighterlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---defender-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_defender",
			helpTip = "DEFENDER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_defender', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_defenderfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_defenderlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---heavy fighter-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_heavyfighter",
			helpTip = "HEAVY FIGHTER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_heavyfighter', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_missilefighterfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_heavyfighterlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---missile bomber-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_missilebomber",
			helpTip = "MISSILE BOMBER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_missilebomber', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_missilebomberfs.tga",
					textureUV = { -10, -27, 146, 146, },
				};
				{
					type = "TextLabel",
					name = "vgr_missilebomberlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---multi-role fighter-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_elitefighter",
			helpTip = "MULTI-ROLE FIGHTER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_elitefighter', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_elitefighterfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_elitefighterlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},

	},
	---corvette
	{
		type = "Frame",

		position = { 34, 52 },
		size = { 30, 360 },
		autoarrange = 1,
		autoarrangeWidth = 30,
		autoarrangeSpace = -1;

		{
			type = "RadioButton",
			buttonStyle = "IGButtonCorvette",
			name = "corvette",
			helpTip = "CORVETTE CLASS",
			helpTipTextLabel = "lblCurrentFacility",

			hotKeyID = 91,
			onMouseClicked = "UI_ToggleScreen( 'corvette', 0)";
			{
				type = "TextLabel",
				name = "corvettelabel",
				position = { 2, 8 },
				size = { 24, 10 },
				Text = { textStyle = "IGHeading2", },
				giveParentMouseInput = 1,
				dropShadow = 1,
				visible = 1,
			},
		},
		---HGN
		---gunship-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_assaultcorvette",
			helpTip = "GUNSHIP",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_assaultcorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_gunshipfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_assaultcorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---pulsar gunship-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_pulsarcorvette",
			helpTip = "PULSAR GUNSHIP",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_pulsarcorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_pulsargunshipfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_pulsarcorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---plasma gunship-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_bombervette",
			helpTip = "PLASMA GUNSHIP",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_bombervette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_bombervettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_bombervettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---emp corvette-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_empcorvette",
			helpTip = "EMP CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_empcorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_empcorvettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_empcorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---minelayer corvette-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_minelayercorvette",
			helpTip = "MINELAYER CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_minelayercorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_minelayerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_minelayercorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---multigun corvette-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_multiguncorvette",
			helpTip = "MINEGUN",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_multiguncorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_minegunfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_multiguncorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---mechgun-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_cth",
			helpTip = "PULSAR MECHGUN",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_cth', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_mechgunfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_cthlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---mechgun ion-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_cthion",
			helpTip = "ION MECHGUN",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_cthion', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_mechgunionfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_cthionlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---VGR
		---swarm-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_shamshiriictg",
			helpTip = "SWARM CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_shamshiriictg', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_shamshiriictgfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_shamshiriictglabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---missile corvette-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_missilecorvette",
			helpTip = "MISSILE CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_missilecorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_missilecorvettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_missilecorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---laser corvette-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_lasercorvette",
			helpTip = "LASER CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_lasercorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_lasercorvettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_lasercorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---plasma corvette-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_plasmacorvette",
			helpTip = "PLASMA CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_plasmacorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_plasmacorvettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_plasmacorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---command corvette-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_commandcorvette",
			helpTip = "COMMAND CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_commandcorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_commandcorvettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_commandcorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---emp-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_empcorvette",
			helpTip = "EMP CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_empcorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_empcorvettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_empcorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---minelayer-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_minelayercorvette",
			helpTip = "MINELAYER CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_minelayercorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_minelayerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_minelayercorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		--storm corvette-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_standvette",
			helpTip = "STORM CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_standvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_stormcorvettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_standvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---scatterer ion-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_mortarcorvette",
			helpTip = "SCATTERER CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_mortarcorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_mortarcorvettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_mortarcorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---mmultilance corvette-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_multilancecorvette",
			helpTip = "MULTILANCE CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_multilancecorvette', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_multilancecorvettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_multilancecorvettelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---striker-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_striker",
			helpTip = "STRIKER CORVETTE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_striker', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_strikercorvettefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_strikerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
	},

	---frigate
	{
		type = "Frame",

		position = { 51, 52 },
		size = { 30, 360 },
		autoarrange = 1,
		autoarrangeWidth = 30,
		autoarrangeSpace = -1;

		{
			type = "RadioButton",
			buttonStyle = "IGButtonFrigate",
			name = "frigate",
			helpTip = "FRIGATE CLASS",
			helpTipTextLabel = "lblCurrentFacility",

			hotKeyID = 92,
			onMouseClicked = "UI_ToggleScreen( 'frigate', 0)";
			{
				type = "TextLabel",
				name = "frigatelabel",
				position = { 2, 8 },
				size = { 24, 10 },
				Text = { textStyle = "IGHeading2", },
				giveParentMouseInput = 1,
				dropShadow = 1,
				visible = 1,
			},
		},
		---HGN
		---flak frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_assaultfrigate",
			helpTip = "FLAK FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_assaultfrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_flakfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_assaultfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---missile frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_torpedofrigate",
			helpTip = "MISSILE FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_torpedofrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_missilefrigatefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_torpedofrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---sniper frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_lrms",
			helpTip = "SNIPER FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_lrms', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_sniperfrigatefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_lrmslabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---defense field frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_defensefieldfrigate",
			helpTip = "DEFENSE FIELD FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_defensefieldfrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_defensefieldfrigatefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_defensefieldfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---marine frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_marinefrigate",
			helpTip = "MARINE FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_marinefrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_marinefrigatefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_marinefrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---ion cannon frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_ioncannonfrigate",
			helpTip = "ION CANNON FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_ioncannonfrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_ioncannonfrigatefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_ioncannonfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---tulwar frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_tulwar",
			helpTip = "TULWAR FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_tulwar', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_tulwarfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_tulwarlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---VGR
		---assault frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_assaultfrigate",
			helpTip = "ASSAULT FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_assaultfrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_assaultfrigatefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_assaultfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---adv assault frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_advassaultfrigate",
			helpTip = "ADVANCED ASSAULT FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_advassaultfrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_advassaultfrigatefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_advassaultfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---heavy missile frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_heavymissilefrigate",
			helpTip = "HEAVY MISSILE FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_heavymissilefrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_missilefrigatefs.tga",
					textureUV = { -13, -27, 150, 150, },
				};
				{
					type = "TextLabel",
					name = "vgr_heavymissilefrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---infiltrator frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_infiltratorfrigate",
			helpTip = "INFILTRATOR FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_infiltratorfrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_infiltratorfrigatefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_infiltratorfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---support frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_supportfrigatearmed",
			helpTip = "SUPPORT FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_supportfrigatearmed', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_supportfrigatearmedfs.tga",
					textureUV = { -13, -27, 144, 144, },
				};
				{
					type = "TextLabel",
					name = "vgr_supportfrigatearmedlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---command frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_commandfrigate",
			helpTip = "PATROL FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_commandfrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_commandfrigatefs.tga",
					textureUV = { -13, -27, 144, 144, },
				};
				{
					type = "TextLabel",
					name = "vgr_commandfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---plasma frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_supportfrigate",
			helpTip = "PLASMA FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_supportfrigate', 0)";
			{
				type = "Frame",
				size = { 19, 19, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_supportfrigatefs.tga",
					textureUV = { -13, -27, 155, 155, },
				};
				{
					type = "TextLabel",
					name = "vgr_supportfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---concussion frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_supportfrigate_laser",
			helpTip = "CONCUSSION FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_supportfrigate_laser', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_supportfrigate_laserfs.tga",
					textureUV = { -13, -27, 150, 150, },
				};
				{
					type = "TextLabel",
					name = "vgr_supportfrigate_laserlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---artillery frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_artilleryfrigate",
			helpTip = "ARTILLERY FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_artilleryfrigate', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_artilleryfrigatefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_artilleryfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---warfare frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_empfrigate",
			helpTip = "TULWAR FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_empfrigate', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_empfrigatefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_empfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---heavy cannon frigate-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_longrangeartilleryfrigate",
			helpTip = "HEAVY CANNON FRIGATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_longrangeartilleryfrigate', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_artilleryfrigatenewfs.tga",
					textureUV = { -12, -27, 155, 155, },
				};
				{
					type = "TextLabel",
					name = "vgr_longrangeartilleryfrigatelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},

	},
	---HGN
	---battle capital
	{
		type = "Frame",

		position = { 68, 52 },
		size = { 30, 360 },
		autoarrange = 1,
		autoarrangeWidth = 30,
		autoarrangeSpace = -1;

		{
			type = "RadioButton",
			buttonStyle = "IGButtonCapital",
			name = "armedcapital",
			helpTip = "BATTLE CAPITAL CLASS",
			helpTipTextLabel = "lblCurrentFacility",

			--hotKeyID = 92,
			onMouseClicked = "UI_ToggleScreen( 'armedcapital', 0)";
			{
				type = "TextLabel",
				name = "armedcapitallabel",
				position = { 2, 8 },
				size = { 24, 10 },
				Text = { textStyle = "IGHeading2", },
				giveParentMouseInput = 1,
				dropShadow = 1,
				visible = 1,
			},
		},
		---destroyer-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_destroyer",
			helpTip = "DESTROYER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_destroyer', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_destroyerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_destroyerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---sweeperdestroyer-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_sweeperdestroyer",
			helpTip = "SWEEPER DESTROYER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_sweeperdestroyer', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_sweeperdestroyerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_sweeperdestroyerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---missile destroyer-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_missiledestroyer",
			helpTip = "MISSILE DESTROYER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_missiledestroyer', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_missiledestroyerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_missiledestroyerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---ion destroyer-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_iondestroyer",
			helpTip = "ION DESTROYER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_iondestroyer', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_iondestroyerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_iondestroyerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---adv destroyer-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_advdestroyer",
			helpTip = "ADVANCED DESTROYER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_advdestroyer', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_advdestroyerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_advdestroyerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---artillery destroyer-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_artillerydestroyer",
			helpTip = "ARTILLERY DESTROYER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_artillerydestroyer', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_artillerydestroyerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_artillerydestroyerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---juggernaught-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_juggernaught",
			helpTip = "JUGGERNAUT",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_juggernaught', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_juggernaughtfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_juggernaughtlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---light shuttle-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_lighttanker",
			helpTip = "LIGHT SHUTTLE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_lighttanker', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_lighttankerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_lighttankerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---smasher-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_smasher",
			helpTip = "HAMMER CRUISER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_smasher', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_smasherfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_smasherlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---cruisera-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_cruisera",
			helpTip = "CRUISER (TYPE A)",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_cruisera', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_cruiserafs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_cruiseralabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---cruiserb-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_cruiserb",
			helpTip = "CRUISER (TYPE B)",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_cruiserb', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_cruiserbfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_cruiserblabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---VGR
		---destroyer-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_destroyer",
			helpTip = "DESTROYER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_destroyer', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_destroyerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_destroyerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---heavy destroyer-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_pulsedestroyer",
			helpTip = "HEAVY DESTROYER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_pulsedestroyer', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_pulsedestroyerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_pulsedestroyerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---guardian-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_am",
			helpTip = "GUARDIAN",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_am', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_guardianfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_amlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---cruiser-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_cruiser",
			helpTip = "CRUISER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_cruiser', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_cruiserfs.tga",
					textureUV = { -12, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_cruiserlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---artillery cruiser-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_artilleryship",
			helpTip = "ARTILLERY CRUISER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_artilleryship', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_artilleryshipfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_artilleryshiplabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---ion cruiser-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_lightcruiser",
			helpTip = "ION CRUISER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_lightcruiser', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_lightcruiserfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_lightcruiserlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
	},

	---heavy capital
	{
		type = "Frame",

		position = { 85, 52 },
		size = { 30, 360 },
		autoarrange = 1,
		autoarrangeWidth = 30,
		autoarrangeSpace = -1;

		{
			type = "RadioButton",
			buttonStyle = "IGButtonCapitalNewNew",
			name = "superarmedcapital",
			helpTip = "HEAVY CAPITAL CLASS",
			helpTipTextLabel = "lblCurrentFacility",

			--hotKeyID = 92,
			onMouseClicked = "UI_ToggleScreen( 'superarmedcapital', 0)";
			{
				type = "TextLabel",
				name = "superarmedcapitallabel",
				position = { 2, 8 },
				size = { 24, 10 },
				Text = { textStyle = "IGHeading2", },
				giveParentMouseInput = 1,
				dropShadow = 1,
				visible = 1,
			},
		},
		---HGN
		---shuttle-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_tanker",
			helpTip = "SHUTTLE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_tanker', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_shuttlefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_tankerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---battle cruiser-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_battlecruiser",
			helpTip = "BATTLECRUISER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_battlecruiser', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_battlecruiserfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_battlecruiserlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---vortex-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_vortex",
			helpTip = "VORTEX",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_vortex', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_vortexfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_vortexlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---battleship-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_battleship",
			helpTip = "BATTLESHIP",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_battleship', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_battleshipfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_battleshiplabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---ark-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_ark",
			helpTip = "BATTLE ARK",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_ark', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_arkfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_arklabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---sinner-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_sinner",
			helpTip = "BATTLECRUISER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_sinner', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_sinnerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_sinnerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---battle cruiser-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_battlecruiser",
			helpTip = "BATTLECRUISER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_battlecruiser', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_battlecruiserfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_battlecruiserlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		--- missile battlecruiser-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_missilebattlecruiser",
			helpTip = "MISSILE BATTLECRUISER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_missilebattlecruiser', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_missilebattlecruiserfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_missilebattlecruiserlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---battleship-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_alkhalid",
			helpTip = "BATTLESHIP",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_alkhalid', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_battleshipfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_alkhalidlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---dreadnaught-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_dreadnaught",
			helpTip = "DREADNAUGHT",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_dreadnaught', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_dreadnaughtfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_dreadnaughtlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
	},
	---capital
	{
		type = "Frame",

		position = { 102, 52 },
		size = { 30, 360 },
		autoarrange = 1,
		autoarrangeWidth = 30,
		autoarrangeSpace = -1;

		{
			type = "RadioButton",
			buttonStyle = "IGButtonCapitalNew",
			name = "capital",
			helpTip = "PRODUCTION CAPITAL CLASS",
			helpTipTextLabel = "lblCurrentFacility",

			hotKeyID = 93,
			onMouseClicked = "UI_ToggleScreen( 'capital', 0)";
			{
				type = "TextLabel",
				name = "capitallabel",
				position = { 2, 8 },
				size = { 24, 10 },
				Text = { textStyle = "IGHeading2", },
				giveParentMouseInput = 1,
				dropShadow = 1,
				visible = 1,
			},
		},
		---mothership-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_mothership",
			helpTip = "MOTHERSHIP",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_mothership', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_mothershipfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_mothershiplabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---light carrier-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_lightcarrier",
			helpTip = "LIGHT CARRIER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_lightcarrier', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_lightcarrierfs.tga",
					textureUV = { -13, -27, 125, 125, },
				};
				{
					type = "TextLabel",
					name = "hgn_lightcarrierlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---research station-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_researchstation",
			helpTip = "RESEARCH STATION",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_researchstation', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_researchstationfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_researchstationlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---crew station-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_crewstation",
			helpTip = "CREW STATION",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_crewstation', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_crewstationfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_crewstationlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---power station-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_power",
			helpTip = "POWER STATION",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_power', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_powerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_powerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---scaver-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_scaver",
			helpTip = "SCAVENGER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_scaver', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_scaverfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_scaverlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---weapon station-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_combatbase",
			helpTip = "WEAPON STATION",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_combatbase', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_weaponstationfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_combatbaselabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---carrier-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_carrier",
			helpTip = "CARRIER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_carrier', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_carrierfs.tga",
					textureUV = { -13, -27, 135, 135, },
				};
				{
					type = "TextLabel",
					name = "hgn_carrierlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---space carrier-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_spacecarrier",
			helpTip = "FLEET CARRIER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_spacecarrier', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_spacecarrierfs.tga",
					textureUV = { -13, -27, 135, 135, },
				};
				{
					type = "TextLabel",
					name = "hgn_spacecarrierlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---battlecarrier-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_battlecarrier",
			helpTip = "BATTLE CARRIER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_battlecarrier', 0)";
			{
				type = "Frame",
				size = { 17, 17, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_battlecarrierfs.tga",
					textureUV = { -13, -27, 135, 135, },
				};
				{
					type = "TextLabel",
					name = "hgn_battlecarrierlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---hyperspace station-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_hyperspacestation",
			helpTip = "CHIMERA STATION",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_hyperspacestation', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_hyperspacestationfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_hyperspacestationlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---shipyard-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_shipyard",
			helpTip = "SHIPYARD",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_shipyard', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_shipyardfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_shipyardlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},

		---gujking shipyard-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_shipyard_g",
			helpTip = "COMMAND SHIPYARD",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_shipyard_g', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_shipyard_gfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_shipyard_glabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---battle shipyard-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_battleshipyard",
			helpTip = "BATTLE SHIPYARD",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_battleshipyard', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_battleshipyardfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_battleshipyardlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---command fortress-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_commandfortress",
			helpTip = "COMMAND FORTRESS",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_commandfortress', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_commandfortressfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_commandfortresslabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---battle station-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_battlestation",
			helpTip = "BATTLE STATION",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_battlestation', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_battlestationfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_battlestationlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---mothership-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_mothership",
			helpTip = "FLAGSHIP",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_mothership', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_mothershipfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_mothershiplabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---scaver-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_scaver",
			helpTip = "SCAVENGER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_scaver', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_scaverfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_scaverlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---light carrier-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_lightcarrier",
			helpTip = "LIGHT CARRIER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_lightcarrier', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_lightcarrierfs.tga",
					textureUV = { -12, -27, 137, 137, },
				};
				{
					type = "TextLabel",
					name = "vgr_lightcarrierlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---carrier-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_carrier",
			helpTip = "CARRIER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_carrier', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_carrierfs.tga",
					textureUV = { -12, -27, 137, 137, },
				};
				{
					type = "TextLabel",
					name = "vgr_carrierlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---battlecarrier-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_battlecarrier",
			helpTip = "BATTLE CARRIER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_battlecarrier', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_battlecarrierfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_battlecarrierlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---shipyard-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_shipyard",
			helpTip = "SHIPYARD",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_shipyard', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_shipyardfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_shipyardlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---command fortress-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_commandfortress",
			helpTip = "COMMAND FORTRESS",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_commandfortress', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_commandfortressfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_commandfortresslabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
	},
	---platform
	{
		type = "Frame",

		position = { 119, 52 },
		size = { 30, 360 },
		autoarrange = 1,
		autoarrangeWidth = 30,
		autoarrangeSpace = -1;

		{
			type = "RadioButton",
			buttonStyle = "IGButtonPlatform",
			name = "platform",
			helpTip = "PLATFORM CLASS",
			helpTipTextLabel = "lblCurrentFacility",

			hotKeyID = 96,
			onMouseClicked = "UI_ToggleScreen( 'platform', 0)";
			{
				type = "TextLabel",
				name = "platformlabel",
				position = { 2, 8 },
				size = { 24, 10 },
				Text = { textStyle = "IGHeading2", },
				giveParentMouseInput = 1,
				dropShadow = 1,
				visible = 1,
			},
		},
		---HGN
		---defender drone-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_defenderdrone",
			helpTip = "DEFENDER DRONE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_defenderdrone', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_defenderdronefs.tga",
					textureUV = { -12, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_defenderdronelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---patcher-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_patcher",
			helpTip = "PATCHER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_patcher', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_patcherfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_patcherlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---suppressor platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_rapidfiregunturret",
			helpTip = "SUPPRESSION PLATFORM",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_rapidfiregunturret', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_suppressionplatformfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_rapidfiregunturretlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---gun platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_gunturret",
			helpTip = "GUN PLATFORM",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_gunturret', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_gunplatformfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_gunturretlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---pulsar platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_pulsarturret",
			helpTip = "PULSAR PLATFORM",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_pulsarturret', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_pulsarplatformfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_pulsarturretlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---ion platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_ionturret",
			helpTip = "ION PLATFORM",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_ionturret', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_ionplatformfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_ionturretlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---missile platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_missileturret",
			helpTip = "MISSILE PLATFORM",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_missileturret', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_missileplatformfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_missileturretlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---defense field platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_defensefieldturret",
			helpTip = "DEFENSE FIELD PLATFORM",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_defensefieldturret', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_defensefieldturretfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_defensefieldturretlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---rts platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_rts",
			helpTip = "FAST TRACKING PLATFORM",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_rts', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_rtsfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_rtslabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---artillery sentinel platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_artillerysentinel",
			helpTip = "SENTINEL",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_artillerysentinel', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_artillerysentinelfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_artillerysentinellabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---massive platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_massiveturret",
			helpTip = "POINT DEFENSE TURRET",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_massiveturret', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_massiveturretfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_massiveturretlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---VGR
		---patcher-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_patcher",
			helpTip = "PATCHER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_patcher', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_patcherfs.tga",
					textureUV = { -12, -27, 155, 155, },
				};
				{
					type = "TextLabel",
					name = "vgr_patcherlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---gun platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_weaponplatform_gun",
			helpTip = "GUN PLATFORM",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_weaponplatform_gun', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_gunplatformfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_weaponplatform_gunlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---lance platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_weaponplatform_lance",
			helpTip = "LANCE PLATFORM",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_weaponplatform_lance', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_lanceplatformfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_weaponplatform_lancelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---missile platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_weaponplatform_missile",
			helpTip = "HEAVY MISSILE PLATFORM",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_weaponplatform_missile', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_missileplatformfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_weaponplatform_missilelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---hyperspace platform-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_hyperspace_platform",
			helpTip = "HYPERSPACE GATE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_hyperspace_platform', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_hyperspaceplatformfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_hyperspace_platformlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---mobile gravity well generator---------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_mobile_inhibitor",
			helpTip = "MOBILE GRAVITY WELL GENERATOR",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_mobile_inhibitor', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_mobile_inhibitorfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_mobile_inhibitorlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
	},
	---utility
	{
		type = "Frame",

		position = { 136, 52 },
		size = { 30, 360 },
		autoarrange = 1,
		autoarrangeWidth = 30,
		autoarrangeSpace = -1;

		{
			type = "RadioButton",
			buttonStyle = "IGButtonUtility",
			name = "utility",
			helpTip = "UTILITY CLASS",
			helpTipTextLabel = "lblCurrentFacility",

			hotKeyID = 94,
			onMouseClicked = "UI_ToggleScreen( 'utility', 0)";
			{
				type = "TextLabel",
				name = "utilitylabel",
				position = { 2, 8 },
				size = { 24, 10 },
				Text = { textStyle = "IGHeading2", },
				giveParentMouseInput = 1,
				dropShadow = 1,
				visible = 1,
			},
		},
		---HGN
		---resource collector-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_resourcecollector",
			helpTip = "RESOURCE COLLECTOR",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_resourcecollector', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_resourcecollectorfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_resourcecollectorlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---salvage collector-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_salvagecollector",
			helpTip = "SALVAGE COLLECTOR",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_salvagecollector', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_salvagecollectorfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_salvagecollectorlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---resource controller-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_resourcecontroller",
			helpTip = "MOBILE REFINERY",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_resourcecontroller', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_resourcecontrollerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_resourcecontrollerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---mine container-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_minecontainer",
			helpTip = "MINE CONTAINER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_minecontainer', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_minecontainerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_minecontainerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---trade container-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_container",
			helpTip = "TRADE CONTAINER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_container', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_containerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_containerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---probe-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_probe",
			helpTip = "PROBE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_probe', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_probefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_probelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---proximity sensor-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_proximitysensor",
			helpTip = "PROXIMITY SENSOR",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_proximitysensor', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_proximitysensorfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_proximitysensorlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---sensor distortion-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_ecmprobe",
			helpTip = "SENSOR DISTORTION PROBE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_ecmprobe', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_sensordistortionprobefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_ecmprobelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---ghost-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_ghost",
			helpTip = "ADVANCED PROBE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_ghost', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_ghostfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_ghostlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---crew cell-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_transportcell",
			helpTip = "CREW CELL",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_transportcell', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_transportcellfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_transportcelllabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---mobile inhibitor-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_plasma_inhibitor",
			helpTip = "MOBILE GRAVITY WELL GENERATOR",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_plasma_inhibitor', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_plasma_inhibitorfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_plasma_inhibitorlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---aditional core-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_aditional_core",
			helpTip = "ADITIONAL CORE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_aditional_core', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_addcorefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_aditional_corelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---core-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_core",
			helpTip = "CORE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_core', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_corefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_corelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---VGR
		---resource collector-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_resourcecollector",
			helpTip = "RESOURCE COLLECTOR",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_resourcecollector', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_resourcecollectorfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_resourcecollectorlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---resource controller-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_resourcecontroller",
			helpTip = "MOBILE REFINERY",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_resourcecontroller', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_resourcecontrollerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_resourcecontrollerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---resource controller double-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_resourcecontrollerdouble",
			helpTip = "ADV. MOBILE REFINERY",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_resourcecontrollerdouble', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_resourcecontrollerdoublefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_resourcecontrollerdoublelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---trade container-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_container",
			helpTip = "TRADE CONTAINER",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_container', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_containerfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_containerlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---probe-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_probe",
			helpTip = "PROBE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_probe', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_probefs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_probelabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---probe prox-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_probe_prox",
			helpTip = "PROXIMITY SENSOR",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_probe_prox', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_probe_proxfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_probe_proxlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---ecm sensor-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_probe_ecm",
			helpTip = "SENSOR DISTORTION PROBE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_probe_ecm', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_probe_ecmfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_probe_ecmlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---rattle-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_probe_smallhsbeacon",
			helpTip = "RATTLE",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_probe_smallhsbeacon', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_probe_smallhsbeaconfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_probe_smallhsbeaconlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
		---ghost-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "vgr_ghost",
			helpTip = "GHOST",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'vgr_ghost', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\vgr_ghostfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "vgr_ghostlabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},
	},
	---weapon
	{
		type = "Frame",

		position = { 153, 52 },
		size = { 30, 360 },
		autoarrange = 1,
		autoarrangeWidth = 30,
		autoarrangeSpace = -1;

		{
			type = "RadioButton",
			buttonStyle = "IGButtonSubsystemSensors",
			name = "weapon",
			helpTip = "SPECIAL WEAPON",
			helpTipTextLabel = "lblCurrentFacility",
			onMouseClicked = "UI_ToggleScreen( 'weapon', 0)";
			{
				type = "Frame",
				size = { 11, 11, },
				position = { 7, 7 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\redpoint.tga",
					textureUV = { 0, -0, 90, 90, },
				},
			},
			{
				type = "TextLabel",
				name = "weaponlabel",
				position = { 2, 8 },
				size = { 24, 10 },
				Text = { textStyle = "IGHeading2", },
				giveParentMouseInput = 1,
				dropShadow = 1,
				visible = 1,
			},
		},
		---nuclear bomb-----------------------------------------------------------------------
		{
			type = "Button",
			buttonStyle = "IGButtonVuoto",
			name = "hgn_nuclearbomb",
			helpTip = "HEAVY NUCLEAR BOMB",
			helpTipTextLabel = "lblCurrentFacility",

			onMouseClicked = "UI_ToggleScreen( 'hgn_nuclearbomb', 0)";
			{
				type = "Frame",
				size = { 18, 18, },
				position = { 0, 0 },
				giveParentMouseInput = 1,
				BackgroundGraphic = {
					texture = "DATA:\\Ship\\Icons\\ships\\hgn_nuclearbombfs.tga",
					textureUV = { -13, -27, 140, 140, },
				};
				{
					type = "TextLabel",
					name = "hgn_nuclearbomblabel",
					position = { 2, 8 },
					size = { 24, 10 },
					Text = { textStyle = "IGHeading2", },
					giveParentMouseInput = 1,
					dropShadow = 1,
					visible = 1,
				},
			},
		},

	},

	{
		type = "TextButton",
		name = "btnrefresh",
		position = { 2, 432, },
		size = { 204, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = {
			text = "SELECT",
			textStyle = "IGButtonTextStyle", },
		helpTip = "SELECT HIGHLIGHTED UNITS",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "UI_ToggleScreen( 'refresh', 0)",
	},

	{
		type = "TextButton",
		name = "cgcs",
		position = { 2, 447, },
		size = { 11, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "[", textStyle = "IGButtonTextStyle", },
		helpTip = "CLEAR SELECTION FROM GROUPS",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "ClearSelectedFromControlGroups()",
	},
	{
		type = "TextButton",
		name = "cg1",
		position = { 14, 447, },
		size = { 17, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "1", textStyle = "IGButtonTextStyle", },
		helpTip = "ASSIGN/CLEAR CONTROL GROUP 1",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "MainUI_UserEventData( eGroup, 1)",
	},
	{
		type = "TextButton",
		name = "cg2",
		position = { 32, 447, },
		size = { 17, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "2", textStyle = "IGButtonTextStyle", },
		helpTip = "ASSIGN/CLEAR CONTROL GROUP 2",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "MainUI_UserEventData( eGroup, 2)",
	},
	{
		type = "TextButton",
		name = "cg3",
		position = { 50, 447, },
		size = { 17, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "3", textStyle = "IGButtonTextStyle", },
		helpTip = "ASSIGN/CLEAR CONTROL GROUP 3",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "MainUI_UserEventData( eGroup, 3)",
	},
	{
		type = "TextButton",
		name = "cg4",
		position = { 68, 447, },
		size = { 17, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "4", textStyle = "IGButtonTextStyle", },
		helpTip = "ASSIGN/CLEAR CONTROL GROUP 4",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "MainUI_UserEventData( eGroup, 4)",
	},
	{
		type = "TextButton",
		name = "cg5",
		position = { 86, 447, },
		size = { 17, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "5", textStyle = "IGButtonTextStyle", },
		helpTip = "ASSIGN/CLEAR CONTROL GROUP 5",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "MainUI_UserEventData( eGroup, 5)",
	},
	{
		type = "TextButton",
		name = "cg6",
		position = { 104, 447, },
		size = { 17, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "6", textStyle = "IGButtonTextStyle", },
		helpTip = "ASSIGN/CLEAR CONTROL GROUP 6",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "MainUI_UserEventData( eGroup, 6)",
	},
	{
		type = "TextButton",
		name = "cg7",
		position = { 122, 447, },
		size = { 17, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "7", textStyle = "IGButtonTextStyle", },
		helpTip = "ASSIGN/CLEAR CONTROL GROUP 7",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "MainUI_UserEventData( eGroup, 7)",
	},
	{
		type = "TextButton",
		name = "cg8",
		position = { 140, 447, },
		size = { 17, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "8", textStyle = "IGButtonTextStyle", },
		helpTip = "ASSIGN/CLEAR CONTROL GROUP 8",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "MainUI_UserEventData( eGroup, 8)",
	},
	{
		type = "TextButton",
		name = "cg9",
		position = { 158, 447, },
		size = { 17, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "9", textStyle = "IGButtonTextStyle", },
		helpTip = "ASSIGN/CLEAR CONTROL GROUP 9",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "MainUI_UserEventData( eGroup, 9)",
	},
	{
		type = "TextButton",
		name = "cg10",
		position = { 176, 447, },
		size = { 17, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "10", textStyle = "IGButtonTextStyle", },
		helpTip = "ASSIGN/CLEAR CONTROL GROUP 10",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "MainUI_UserEventData( eGroup, 10)",
	},
	{
		type = "TextButton",
		name = "cgca",
		position = { 194, 447, },
		size = { 12, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = { text = "]", textStyle = "IGButtonTextStyle", },
		helpTip = "CLEAR CONTROL GROUPS",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "ClearAllControlGroups()",
	},

	{
		type = "TextButton",
		name = "btntactics",
		position = { 2, 462, },
		size = { 204, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = {
			text = "TACTICS (F2-F4)",
			textStyle = "IGButtonTextStyle", },
		helpTip = "CHANGE TACTICS (F2-F4)",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "UI_ToggleScreen( 'TacticsMenu', 0)",
	},

	{
		type = "TextButton",
		name = "btnstrike",
		position = { 2, 477, },
		size = { 204, 13, },
		buttonStyle = "IGButtonStyle1NoEnterSound",
		Text = {
			text = "STRIKE (F5-F7)",
			textStyle = "IGButtonTextStyle", },
		helpTip = "STRIKE GROUP FORMATION (F5-F7)",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar",
		onMouseClicked = "UI_ToggleScreen( 'StrikeGroupsMenu', 0)",
	},

}


---SCREENS-------------------------------------------------------------------------------------------------------


---fighter---------------------------------------------------------------------

fighter = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'fighter', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'fighter', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_scout', 1); UI_SetScreenVisible( 'hgn_scout', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_interceptor', 1); UI_SetScreenVisible( 'hgn_interceptor', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_attackbomber', 1); UI_SetScreenVisible( 'hgn_attackbomber', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_lbomber', 1); UI_SetScreenVisible( 'hgn_lbomber', 1);	UI_SetButtonPressed('NewManageMenu', 'hgn_defender', 1); UI_SetScreenVisible( 'hgn_defender', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_railgunfighter', 1); UI_SetScreenVisible( 'hgn_railgunfighter', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_hft', 1); UI_SetScreenVisible( 'hgn_hft', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_attackbomberheavy', 1); UI_SetScreenVisible( 'hgn_attackbomberheavy', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_scout', 1); UI_SetScreenVisible( 'vgr_scout', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_interceptor', 1); UI_SetScreenVisible( 'vgr_interceptor', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_lancefighter', 1); UI_SetScreenVisible( 'vgr_lancefighter', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_bomber', 1); UI_SetScreenVisible( 'vgr_bomber', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_defender', 1); UI_SetScreenVisible( 'vgr_defender', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_heavyfighter', 1); UI_SetScreenVisible( 'vgr_heavyfighter', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_missilebomber', 1); UI_SetScreenVisible( 'vgr_missilebomber', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_elitefighter', 1); UI_SetScreenVisible( 'vgr_elitefighter', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'fighter', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_scout', 0); UI_SetScreenVisible( 'hgn_scout', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_interceptor', 0); UI_SetScreenVisible( 'hgn_interceptor', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_attackbomber', 0); UI_SetScreenVisible( 'hgn_attackbomber', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_lbomber', 0); UI_SetScreenVisible( 'hgn_lbomber', 0);	UI_SetButtonPressed('NewManageMenu', 'hgn_defender', 0); UI_SetScreenVisible( 'hgn_defender', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_railgunfighter', 0); UI_SetScreenVisible( 'hgn_railgunfighter', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_hft', 0); UI_SetScreenVisible( 'hgn_hft', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_attackbomberheavy', 0); UI_SetScreenVisible( 'hgn_attackbomberheavy', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_scout', 0); UI_SetScreenVisible( 'vgr_scout', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_interceptor', 0); UI_SetScreenVisible( 'vgr_interceptor', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_lancefighter', 0); UI_SetScreenVisible( 'vgr_lancefighter', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_bomber', 0); UI_SetScreenVisible( 'vgr_bomber', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_defender', 0); UI_SetScreenVisible( 'vgr_defender', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_heavyfighter', 0); UI_SetScreenVisible( 'vgr_heavyfighter', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_missilebomber', 0); UI_SetScreenVisible( 'vgr_missilebomber', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_elitefighter', 0); UI_SetScreenVisible( 'vgr_elitefighter', 0)",
}
hgn_scout = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_scout', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_scout', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_scout', 0)",
}
hgn_interceptor = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_interceptor', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_interceptor', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_interceptor', 0)",
}
hgn_attackbomber = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_attackbomber', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_attackbomber', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_attackbomber', 0)",
}
hgn_lbomber = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_lbomber', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_lbomber', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_lbomber', 0)", }
hgn_defender = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_defender', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_defender', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_defender', 0)", }
hgn_railgunfighter = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_railgunfighter', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_railgunfighter', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_railgunfighter', 0)", }
hgn_hft = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_hft', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_hft', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_hft', 0)", }
hgn_attackbomberheavy = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_attackbomberheavy', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_attackbomberheavy', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_attackbomberheavy', 0)", }
vgr_scout = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_scout', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_scout', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_scout', 0)",
}
vgr_interceptor = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_interceptor', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_interceptor', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_interceptor', 0)",
}
vgr_bomber = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_bomber', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_bomber', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_bomber', 0)",
}
vgr_lancefighter = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_lancefighter', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_lancefighter', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_lancefighter', 0)", }
vgr_defender = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_defender', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_defender', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_defender', 0)", }
vgr_heavyfighter = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_heavyfighter', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_heavyfighter', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_heavyfighter', 0)", }
vgr_missilebomber = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_missilebomber', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_missilebomber', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_missilebomber', 0)", }
vgr_elitefighter = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_elitefighter', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_elitefighter', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_elitefighter', 0)", }
---corvette-------------------------------------------------------------------

corvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'corvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'corvette', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_assaultcorvette', 1); UI_SetScreenVisible( 'hgn_assaultcorvette', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_pulsarcorvette', 1); UI_SetScreenVisible( 'hgn_pulsarcorvette', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_bombervette', 1); UI_SetScreenVisible( 'hgn_bombervette', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_minelayercorvette', 1); UI_SetScreenVisible( 'hgn_minelayercorvette', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_empcorvette', 1); UI_SetScreenVisible( 'hgn_empcorvette', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_multiguncorvette', 1); UI_SetScreenVisible( 'hgn_multiguncorvette', 1);	UI_SetButtonPressed('NewManageMenu', 'hgn_cth', 1); UI_SetScreenVisible( 'hgn_cth', 1);	UI_SetButtonPressed('NewManageMenu', 'hgn_cthion', 1); UI_SetScreenVisible( 'hgn_cthion', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_missilecorvette', 1); UI_SetScreenVisible( 'vgr_missilecorvette', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_lasercorvette', 1); UI_SetScreenVisible( 'vgr_lasercorvette', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_minelayercorvette', 1); UI_SetScreenVisible( 'vgr_minelayercorvette', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_empcorvette', 1); UI_SetScreenVisible( 'vgr_empcorvette', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_commandcorvette', 1); UI_SetScreenVisible( 'vgr_commandcorvette', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_standvette', 1); UI_SetScreenVisible( 'vgr_standvette', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_mortarcorvette', 1); UI_SetScreenVisible( 'vgr_mortarcorvette', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_multilancecorvette', 1); UI_SetScreenVisible( 'vgr_multilancecorvette', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_shamshiriictg', 1); UI_SetScreenVisible( 'vgr_shamshiriictg', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_plasmacorvette', 1); UI_SetScreenVisible( 'vgr_plasmacorvette', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_striker', 1); UI_SetScreenVisible( 'vgr_striker', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'corvette', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_assaultcorvette', 0); UI_SetScreenVisible( 'hgn_assaultcorvette', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_pulsarcorvette', 0); UI_SetScreenVisible( 'hgn_pulsarcorvette', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_bombervette', 0); UI_SetScreenVisible( 'hgn_bombervette', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_minelayercorvette', 0); UI_SetScreenVisible( 'hgn_minelayercorvette', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_empcorvette', 0); UI_SetScreenVisible( 'hgn_empcorvette', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_multiguncorvette', 0); UI_SetScreenVisible( 'hgn_multiguncorvette', 0);	UI_SetButtonPressed('NewManageMenu', 'hgn_cth', 0); UI_SetScreenVisible( 'hgn_cth', 0);	UI_SetButtonPressed('NewManageMenu', 'hgn_cthion', 0); UI_SetScreenVisible( 'hgn_cthion', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_missilecorvette', 0); UI_SetScreenVisible( 'vgr_missilecorvette', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_lasercorvette', 0); UI_SetScreenVisible( 'vgr_lasercorvette', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_minelayercorvette', 0); UI_SetScreenVisible( 'vgr_minelayercorvette', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_empcorvette', 0); UI_SetScreenVisible( 'vgr_empcorvette', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_commandcorvette', 0); UI_SetScreenVisible( 'vgr_commandcorvette', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_standvette', 0); UI_SetScreenVisible( 'vgr_standvette', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_mortarcorvette', 0); UI_SetScreenVisible( 'vgr_mortarcorvette', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_multilancecorvette', 0); UI_SetScreenVisible( 'vgr_multilancecorvette', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_shamshiriictg', 0); UI_SetScreenVisible( 'vgr_shamshiriictg', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_plasmacorvette', 0); UI_SetScreenVisible( 'vgr_plasmacorvette', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_striker', 0); UI_SetScreenVisible( 'vgr_striker', 0)",
}
hgn_assaultcorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_assaultcorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_assaultcorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_assaultcorvette', 0)", }
hgn_pulsarcorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_pulsarcorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_pulsarcorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_pulsarcorvette', 0)", }
hgn_bombervette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_bombervette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_bombervette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_bombervette', 0)", }
hgn_empcorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_empcorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_empcorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_empcorvette', 0)", }
hgn_minelayercorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_minelayercorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_minelayercorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_minelayercorvette', 0)", }
hgn_multiguncorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_multiguncorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_multiguncorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_multiguncorvette', 0)", }
hgn_cth = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_cth', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_cth', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_cth', 0)", }
hgn_cthion = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_cthion', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_cthion', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_cthion', 0)", }
vgr_missilecorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_missilecorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_missilecorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_missilecorvette', 0)", }
vgr_lasercorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_lasercorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_lasercorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_lasercorvette', 0)", }
vgr_empcorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_empcorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_empcorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_empcorvette', 0)", }
vgr_minelayercorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_minelayercorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_minelayercorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_minelayercorvette', 0)", }
vgr_commandcorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_commandcorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_commandcorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_commandcorvette', 0)", }
vgr_standvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_standvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_standvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_standvette', 0)", }
vgr_mortarcorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_mortarcorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_mortarcorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_mortarcorvette', 0)", }
vgr_multilancecorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_multilancecorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_multilancecorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_multilancecorvette', 0)", }
vgr_shamshiriictg = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_shamshiriictg', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_shamshiriictg', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_shamshiriictg', 0)", }
vgr_plasmacorvette = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_plasmacorvette', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_plasmacorvette', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_plasmacorvette', 0)", }
vgr_striker = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_striker', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_striker', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_striker', 0)", }

---frigate-------------------------------------------------------------------

frigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'frigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'frigate', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_assaultfrigate', 1); UI_SetScreenVisible( 'hgn_assaultfrigate', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_torpedofrigate', 1); UI_SetScreenVisible( 'hgn_torpedofrigate', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_lrms', 1); UI_SetScreenVisible( 'hgn_lrms', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_marinefrigate', 1); UI_SetScreenVisible( 'hgn_marinefrigate', 1);	UI_SetButtonPressed('NewManageMenu', 'hgn_defensefieldfrigate', 1); UI_SetScreenVisible( 'hgn_defensefieldfrigate', 1);	UI_SetButtonPressed('NewManageMenu', 'hgn_ioncannonfrigate', 1); UI_SetScreenVisible( 'hgn_ioncannonfrigate', 1);	UI_SetButtonPressed('NewManageMenu', 'hgn_tulwar', 1); UI_SetScreenVisible( 'hgn_tulwar', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_heavymissilefrigate', 1); UI_SetScreenVisible( 'vgr_heavymissilefrigate', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_assaultfrigate', 1); UI_SetScreenVisible( 'vgr_assaultfrigate', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_infiltratorfrigate', 1); UI_SetScreenVisible( 'vgr_infiltratorfrigate', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_artilleryfrigate', 1); UI_SetScreenVisible( 'vgr_artilleryfrigate', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_empfrigate', 1); UI_SetScreenVisible( 'vgr_empfrigate', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_advassaultfrigate', 1); UI_SetScreenVisible( 'vgr_advassaultfrigate', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigatearmed', 1); UI_SetScreenVisible( 'vgr_supportfrigatearmed', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_commandfrigate', 1); UI_SetScreenVisible( 'vgr_commandfrigate', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigate', 1); UI_SetScreenVisible( 'vgr_supportfrigate', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigate_laser', 1); UI_SetScreenVisible( 'vgr_supportfrigate_laser', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_longrangeartilleryfrigate', 1); UI_SetScreenVisible( 'vgr_longrangeartilleryfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'frigate', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_assaultfrigate', 0); UI_SetScreenVisible( 'hgn_assaultfrigate', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_torpedofrigate', 0); UI_SetScreenVisible( 'hgn_torpedofrigate', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_lrms', 0); UI_SetScreenVisible( 'hgn_lrms', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_marinefrigate', 0); UI_SetScreenVisible( 'hgn_marinefrigate', 0);	UI_SetButtonPressed('NewManageMenu', 'hgn_defensefieldfrigate', 0); UI_SetScreenVisible( 'hgn_defensefieldfrigate', 0);	UI_SetButtonPressed('NewManageMenu', 'hgn_ioncannonfrigate', 0); UI_SetScreenVisible( 'hgn_ioncannonfrigate', 0);	UI_SetButtonPressed('NewManageMenu', 'hgn_tulwar', 0); UI_SetScreenVisible( 'hgn_tulwar', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_heavymissilefrigate', 0); UI_SetScreenVisible( 'vgr_heavymissilefrigate', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_assaultfrigate', 0); UI_SetScreenVisible( 'vgr_assaultfrigate', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_infiltratorfrigate', 0); UI_SetScreenVisible( 'vgr_infiltratorfrigate', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_artilleryfrigate', 0); UI_SetScreenVisible( 'vgr_artilleryfrigate', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_empfrigate', 0); UI_SetScreenVisible( 'vgr_empfrigate', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_advassaultfrigate', 0); UI_SetScreenVisible( 'vgr_advassaultfrigate', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigatearmed', 0); UI_SetScreenVisible( 'vgr_supportfrigatearmed', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_commandfrigate', 0); UI_SetScreenVisible( 'vgr_commandfrigate', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigate', 0); UI_SetScreenVisible( 'vgr_supportfrigate', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigate_laser', 0); UI_SetScreenVisible( 'vgr_supportfrigate_laser', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_longrangeartilleryfrigate', 0); UI_SetScreenVisible( 'vgr_longrangeartilleryfrigate', 0)",
}
hgn_assaultfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_assaultfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_assaultfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_assaultfrigate', 0)", }
hgn_torpedofrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_torpedofrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_torpedofrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_torpedofrigate', 0)", }
hgn_lrms = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_lrms', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_lrms', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_lrms', 0)", }
hgn_defensefieldfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_defensefieldfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_defensefieldfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_defensefieldfrigate', 0)", }
hgn_marinefrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_marinefrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_marinefrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_marinefrigate', 0)", }
hgn_ioncannonfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_ioncannonfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_ioncannonfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_ioncannonfrigate', 0)", }
hgn_tulwar = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_tulwar', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_tulwar', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_tulwar', 0)", }
vgr_heavymissilefrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_heavymissilefrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_heavymissilefrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_heavymissilefrigate', 0)", }
vgr_assaultfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_assaultfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_assaultfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_assaultfrigate', 0)", }
vgr_infiltratorfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_infiltratorfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_infiltratorfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_infiltratorfrigate', 0)", }
vgr_artilleryfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_artilleryfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_artilleryfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_artilleryfrigate', 0)", }
vgr_empfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_empfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_empfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_empfrigate', 0)", }
vgr_advassaultfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_advassaultfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_advassaultfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_advassaultfrigate', 0)", }
vgr_supportfrigatearmed = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_supportfrigatearmed', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigatearmed', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigatearmed', 0)", }
vgr_commandfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_commandfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_commandfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_commandfrigate', 0)", }
vgr_supportfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_supportfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigate', 0)", }
vgr_supportfrigate_laser = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_supportfrigate_laser', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigate_laser', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_supportfrigate_laser', 0)", }
vgr_longrangeartilleryfrigate = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_longrangeartilleryfrigate', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_longrangeartilleryfrigate', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_longrangeartilleryfrigate', 0)", }

---platform-------------------------------------------------------------------

platform = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'platform', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'platform', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_defenderdrone', 1); UI_SetScreenVisible( 'hgn_defenderdrone', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_patcher', 1); UI_SetScreenVisible( 'hgn_patcher', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_rapidfiregunturret', 1); UI_SetScreenVisible( 'hgn_rapidfiregunturret', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_gunturret', 1); UI_SetScreenVisible( 'hgn_gunturret', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_pulsarturret', 1); UI_SetScreenVisible( 'hgn_pulsarturret', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_ionturret', 1); UI_SetScreenVisible( 'hgn_ionturret', 1);	UI_SetButtonPressed('NewManageMenu', 'hgn_massiveturret', 1); UI_SetScreenVisible( 'hgn_massiveturret', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_missileturret', 1); UI_SetScreenVisible( 'hgn_missileturret', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_rts', 1); UI_SetScreenVisible( 'hgn_rts', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_defensefieldturret', 1); UI_SetScreenVisible( 'hgn_defensefieldturret', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_artillerysentinel', 1); UI_SetScreenVisible( 'hgn_artillerysentinel', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_patcher', 1); UI_SetScreenVisible( 'vgr_patcher', 1);	UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_gun', 1); UI_SetScreenVisible( 'vgr_weaponplatform_gun', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_missile', 1); UI_SetScreenVisible( 'vgr_weaponplatform_missile', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_hyperspace_platform', 1); UI_SetScreenVisible( 'vgr_hyperspace_platform', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_lance', 1); UI_SetScreenVisible( 'vgr_weaponplatform_lance', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_mobile_inhibitor', 1); UI_SetScreenVisible( 'vgr_mobile_inhibitor', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'platform', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_defenderdrone', 0); UI_SetScreenVisible( 'hgn_defenderdrone', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_patcher', 0); UI_SetScreenVisible( 'hgn_patcher', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_rapidfiregunturret', 0); UI_SetScreenVisible( 'hgn_rapidfiregunturret', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_gunturret', 0); UI_SetScreenVisible( 'hgn_gunturret', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_pulsarturret', 0); UI_SetScreenVisible( 'hgn_pulsarturret', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_ionturret', 0); UI_SetScreenVisible( 'hgn_ionturret', 0);	UI_SetButtonPressed('NewManageMenu', 'hgn_massiveturret', 0); UI_SetScreenVisible( 'hgn_massiveturret', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_missileturret', 0); UI_SetScreenVisible( 'hgn_missileturret', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_rts', 0); UI_SetScreenVisible( 'hgn_rts', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_defensefieldturret', 0); UI_SetScreenVisible( 'hgn_defensefieldturret', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_artillerysentinel', 0); UI_SetScreenVisible( 'hgn_artillerysentinel', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_patcher', 0); UI_SetScreenVisible( 'vgr_patcher', 0);	UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_gun', 0); UI_SetScreenVisible( 'vgr_weaponplatform_gun', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_missile', 0); UI_SetScreenVisible( 'vgr_weaponplatform_missile', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_hyperspace_platform', 0); UI_SetScreenVisible( 'vgr_hyperspace_platform', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_lance', 0); UI_SetScreenVisible( 'vgr_weaponplatform_lance', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_mobile_inhibitor', 0); UI_SetScreenVisible( 'vgr_mobile_inhibitor', 0)",
}
hgn_defenderdrone = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_defenderdrone', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_defenderdrone', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_defenderdrone', 0)", }
hgn_patcher = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_patcher', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_patcher', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_patcher', 0)", }
hgn_rapidfiregunturret = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_rapidfiregunturret', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_rapidfiregunturret', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_rapidfiregunturret', 0)", }
hgn_gunturret = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_gunturret', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_gunturret', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_gunturret', 0)", }
hgn_pulsarturret = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_pulsarturret', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_pulsarturret', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_pulsarturret', 0)", }
hgn_ionturret = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_ionturret', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_ionturret', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_ionturret', 0)", }
hgn_missileturret = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_missileturret', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_missileturret', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_missileturret', 0)", }
hgn_defensefieldturret = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_defensefieldturret', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_defensefieldturret', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_defensefieldturret', 0)", }
hgn_rts = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_rts', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_rts', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_rts', 0)", }
hgn_artillerysentinel = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_artillerysentinel', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_artillerysentinel', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_artillerysentinel', 0)", }
hgn_massiveturret = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_massiveturret', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_massiveturret', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_massiveturret', 0)", }
vgr_patcher = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_patcher', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_patcher', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_patcher', 0)", }
vgr_weaponplatform_gun = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_weaponplatform_gun', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_gun', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_gun', 0)", }
vgr_weaponplatform_missile = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_weaponplatform_missile', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_missile', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_missile', 0)", }
vgr_hyperspace_platform = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_hyperspace_platform', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_hyperspace_platform', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_hyperspace_platform', 0)", }
vgr_weaponplatform_lance = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_weaponplatform_lance', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_lance', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_weaponplatform_lance', 0)", }
vgr_mobile_inhibitor = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_mobile_inhibitor', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_mobile_inhibitor', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_mobile_inhibitor', 0)", }

---capital-------------------------------------------------------------------

capital = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'capital', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'capital', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_mothership', 1); UI_SetScreenVisible( 'hgn_mothership', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_scaver', 1); UI_SetScreenVisible( 'hgn_scaver', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_researchstation', 1); UI_SetScreenVisible( 'hgn_researchstation', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_combatbase', 1); UI_SetScreenVisible( 'hgn_combatbase', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_crewstation', 1); UI_SetScreenVisible( 'hgn_crewstation', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_power', 1); UI_SetScreenVisible( 'hgn_power', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_carrier', 1); UI_SetScreenVisible( 'hgn_carrier', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_spacecarrier', 1); UI_SetScreenVisible( 'hgn_spacecarrier', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_battlecarrier', 1); UI_SetScreenVisible( 'hgn_battlecarrier', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_lightcarrier', 1); UI_SetScreenVisible( 'hgn_lightcarrier', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_shipyard', 1); UI_SetScreenVisible( 'hgn_shipyard', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_battleshipyard', 1); UI_SetScreenVisible( 'hgn_battleshipyard', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_shipyard_g', 1); UI_SetScreenVisible( 'hgn_shipyard_g', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_commandfortress', 1); UI_SetScreenVisible( 'hgn_commandfortress', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_battlestation', 1); UI_SetScreenVisible( 'hgn_battlestation', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_hyperspacestation', 1); UI_SetScreenVisible( 'hgn_hyperspacestation', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_mothership', 1); UI_SetScreenVisible( 'vgr_mothership', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_carrier', 1); UI_SetScreenVisible( 'vgr_carrier', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_lightcarrier', 1); UI_SetScreenVisible( 'vgr_lightcarrier', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_shipyard', 1); UI_SetScreenVisible( 'vgr_shipyard', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_scaver', 1); UI_SetScreenVisible( 'vgr_scaver', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_battlecarrier', 1); UI_SetScreenVisible( 'vgr_battlecarrier', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_commandfortress', 1); UI_SetScreenVisible( 'vgr_commandfortress', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'capital', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_mothership', 0); UI_SetScreenVisible( 'hgn_mothership', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_scaver', 0); UI_SetScreenVisible( 'hgn_scaver', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_researchstation', 0); UI_SetScreenVisible( 'hgn_researchstation', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_combatbase', 0); UI_SetScreenVisible( 'hgn_combatbase', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_crewstation', 0); UI_SetScreenVisible( 'hgn_crewstation', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_power', 0); UI_SetScreenVisible( 'hgn_power', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_carrier', 0); UI_SetScreenVisible( 'hgn_carrier', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_spacecarrier', 0); UI_SetScreenVisible( 'hgn_spacecarrier', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_battlecarrier', 0); UI_SetScreenVisible( 'hgn_battlecarrier', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_lightcarrier', 0); UI_SetScreenVisible( 'hgn_lightcarrier', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_shipyard', 0); UI_SetScreenVisible( 'hgn_shipyard', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_battleshipyard', 0); UI_SetScreenVisible( 'hgn_battleshipyard', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_shipyard_g', 0); UI_SetScreenVisible( 'hgn_shipyard_g', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_commandfortress', 0); UI_SetScreenVisible( 'hgn_commandfortress', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_battlestation', 0); UI_SetScreenVisible( 'hgn_battlestation', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_hyperspacestation', 0); UI_SetScreenVisible( 'hgn_hyperspacestation', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_mothership', 0); UI_SetScreenVisible( 'vgr_mothership', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_carrier', 0); UI_SetScreenVisible( 'vgr_carrier', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_lightcarrier', 0); UI_SetScreenVisible( 'vgr_lightcarrier', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_shipyard', 0); UI_SetScreenVisible( 'vgr_shipyard', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_scaver', 0); UI_SetScreenVisible( 'vgr_scaver', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_battlecarrier', 0); UI_SetScreenVisible( 'vgr_battlecarrier', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_commandfortress', 0); UI_SetScreenVisible( 'vgr_commandfortress', 0)",
}
armedcapital = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'armedcapital', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'armedcapital', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_destroyer', 1); UI_SetScreenVisible( 'hgn_destroyer', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_sweeperdestroyer', 1); UI_SetScreenVisible( 'hgn_sweeperdestroyer', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_missiledestroyer', 1); UI_SetScreenVisible( 'hgn_missiledestroyer', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_iondestroyer', 1); UI_SetScreenVisible( 'hgn_iondestroyer', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_advdestroyer', 1); UI_SetScreenVisible( 'hgn_advdestroyer', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_artillerydestroyer', 1); UI_SetScreenVisible( 'hgn_artillerydestroyer', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_juggernaught', 1); UI_SetScreenVisible( 'hgn_juggernaught', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_cruisera', 1); UI_SetScreenVisible( 'hgn_cruisera', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_cruiserb', 1); UI_SetScreenVisible( 'hgn_cruiserb', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_smasher', 1); UI_SetScreenVisible( 'hgn_smasher', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_lighttanker', 1); UI_SetScreenVisible( 'hgn_lighttanker', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_destroyer', 1); UI_SetScreenVisible( 'vgr_destroyer', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_pulsedestroyer', 1); UI_SetScreenVisible( 'vgr_pulsedestroyer', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_am', 1); UI_SetScreenVisible( 'vgr_am', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_cruiser', 1); UI_SetScreenVisible( 'vgr_cruiser', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_lightcruiser', 1); UI_SetScreenVisible( 'vgr_lightcruiser', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_artilleryship', 1); UI_SetScreenVisible( 'vgr_artilleryship', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'armedcapital', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_destroyer', 0); UI_SetScreenVisible( 'hgn_destroyer', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_sweeperdestroyer', 0); UI_SetScreenVisible( 'hgn_sweeperdestroyer', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_missiledestroyer', 0); UI_SetScreenVisible( 'hgn_missiledestroyer', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_iondestroyer', 0); UI_SetScreenVisible( 'hgn_iondestroyer', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_advdestroyer', 0); UI_SetScreenVisible( 'hgn_advdestroyer', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_artillerydestroyer', 0); UI_SetScreenVisible( 'hgn_artillerydestroyer', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_juggernaught', 0); UI_SetScreenVisible( 'hgn_juggernaught', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_cruisera', 0); UI_SetScreenVisible( 'hgn_cruisera', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_cruiserb', 0); UI_SetScreenVisible( 'hgn_cruiserb', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_smasher', 0); UI_SetScreenVisible( 'hgn_smasher', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_lighttanker', 0); UI_SetScreenVisible( 'hgn_lighttanker', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_destroyer', 0); UI_SetScreenVisible( 'vgr_destroyer', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_pulsedestroyer', 0); UI_SetScreenVisible( 'vgr_pulsedestroyer', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_am', 0); UI_SetScreenVisible( 'vgr_am', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_cruiser', 0); UI_SetScreenVisible( 'vgr_cruiser', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_lightcruiser', 0); UI_SetScreenVisible( 'vgr_lightcruiser', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_artilleryship', 0); UI_SetScreenVisible( 'vgr_artilleryship', 0)",
}
superarmedcapital = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'superarmedcapital', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'superarmedcapital', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_battlecruiser', 1); UI_SetScreenVisible( 'hgn_battlecruiser', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_vortex', 1); UI_SetScreenVisible( 'hgn_vortex', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_battleship', 1); UI_SetScreenVisible( 'hgn_battleship', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_tanker', 1); UI_SetScreenVisible( 'hgn_tanker', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_ark', 1); UI_SetScreenVisible( 'hgn_ark', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_sinner', 1); UI_SetScreenVisible( 'vgr_sinner', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_battlecruiser', 1); UI_SetScreenVisible( 'vgr_battlecruiser', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_missilebattlecruiser', 1); UI_SetScreenVisible( 'vgr_missilebattlecruiser', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_alkhalid', 1); UI_SetScreenVisible( 'vgr_alkhalid', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_dreadnaught', 1); UI_SetScreenVisible( 'vgr_dreadnaught', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'superarmedcapital', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_battlecruiser', 0); UI_SetScreenVisible( 'hgn_battlecruiser', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_vortex', 0); UI_SetScreenVisible( 'hgn_vortex', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_battleship', 0); UI_SetScreenVisible( 'hgn_battleship', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_tanker', 0); UI_SetScreenVisible( 'hgn_tanker', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_ark', 0); UI_SetScreenVisible( 'hgn_ark', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_sinner', 0); UI_SetScreenVisible( 'vgr_sinner', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_battlecruiser', 0); UI_SetScreenVisible( 'vgr_battlecruiser', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_missilebattlecruiser', 0); UI_SetScreenVisible( 'vgr_missilebattlecruiser', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_alkhalid', 0); UI_SetScreenVisible( 'vgr_alkhalid', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_dreadnaught', 0); UI_SetScreenVisible( 'vgr_dreadnaught', 0)",
}
hgn_mothership = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_mothership', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_mothership', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_mothership', 0)", }
hgn_researchstation = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_researchstation', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_researchstation', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_researchstation', 0)", }
hgn_crewstation = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_crewstation', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_crewstation', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_crewstation', 0)", }
hgn_power = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_power', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_power', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_power', 0)", }
hgn_combatbase = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_combatbase', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_combatbase', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_combatbase', 0)", }
hgn_carrier = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_carrier', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_carrier', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_carrier', 0)", }
hgn_spacecarrier = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_spacecarrier', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_spacecarrier', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_spacecarrier', 0)", }
hgn_battlecarrier = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_battlecarrier', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_battlecarrier', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_battlecarrier', 0)", }
hgn_lightcarrier = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_lightcarrier', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_lightcarrier', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_lightcarrier', 0)", }
hgn_scaver = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_scaver', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_scaver', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_scaver', 0)", }
hgn_shipyard = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_shipyard', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_shipyard', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_shipyard', 0)", }
hgn_battleshipyard = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_battleshipyard', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_battleshipyard', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_battleshipyard', 0)", }
hgn_shipyard_g = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_shipyard_g', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_shipyard_g', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_shipyard_g', 0)", }
hgn_commandfortress = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_commandfortress', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_commandfortress', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_commandfortress', 0)", }
hgn_battlestation = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_battlestation', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_battlestation', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_battlestation', 0)", }
vgr_mothership = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_mothership', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_mothership', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_mothership', 0)", }
vgr_lightcarrier = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_lightcarrier', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_lightcarrier', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_lightcarrier', 0)", }
vgr_carrier = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_carrier', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_carrier', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_carrier', 0)", }
vgr_shipyard = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_shipyard', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_shipyard', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_shipyard', 0)", }
vgr_scaver = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_scaver', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_scaver', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_scaver', 0)", }
vgr_battlecarrier = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_battlecarrier', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_battlecarrier', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_battlecarrier', 0)", }
vgr_commandfortress = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_commandfortress', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_commandfortress', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_commandfortress', 0)", }
hgn_ark = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_ark', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_ark', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_ark', 0)", }
hgn_battlecruiser = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_battlecruiser', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_battlecruiser', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_battlecruiser', 0)", }
hgn_vortex = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_vortex', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_vortex', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_vortex', 0)", }
hgn_battleship = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_battleship', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_battleship', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_battleship', 0)", }
hgn_destroyer = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_destroyer', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_destroyer', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_destroyer', 0)", }
hgn_sweeperdestroyer = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_sweeperdestroyer', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_sweeperdestroyer', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_sweeperdestroyer', 0)", }
hgn_missiledestroyer = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_missiledestroyer', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_missiledestroyer', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_missiledestroyer', 0)", }
hgn_iondestroyer = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_iondestroyer', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_iondestroyer', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_iondestroyer', 0)", }
hgn_advdestroyer = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_advdestroyer', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_advdestroyer', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_advdestroyer', 0)", }
hgn_artillerydestroyer = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_artillerydestroyer', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_artillerydestroyer', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_artillerydestroyer', 0)", }
hgn_juggernaught = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_juggernaught', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_juggernaught', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_juggernaught', 0)", }
hgn_cruisera = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_cruisera', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_cruisera', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_cruisera', 0)", }
hgn_cruiserb = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_cruiserb', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_cruiserb', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_cruiserb', 0)", }
hgn_smasher = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_smasher', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_smasher', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_smasher', 0)", }
hgn_lighttanker = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_lighttanker', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_lighttanker', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_lighttanker', 0)", }
hgn_tanker = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_tanker', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_tanker', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_tanker', 0)", }
hgn_hyperspacestation = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_hyperspacestation', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_hyperspacestation', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_hyperspacestation', 0)", }
vgr_destroyer = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_destroyer', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_destroyer', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_destroyer', 0)", }
vgr_pulsedestroyer = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_pulsedestroyer', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_pulsedestroyer', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_pulsedestroyer', 0)", }
vgr_am = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_am', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_am', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_am', 0)", }
vgr_cruiser = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_cruiser', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_cruiser', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_cruiser', 0)", }
vgr_lightcruiser = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_lightcruiser', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_lightcruiser', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_lightcruiser', 0)", }
vgr_artilleryship = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_artilleryship', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_artilleryship', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_artilleryship', 0)", }
vgr_sinner = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_sinner', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_sinner', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_sinner', 0)", }
vgr_battlecruiser = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_battlecruiser', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_battlecruiser', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_battlecruiser', 0)", }
vgr_missilebattlecruiser = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_missilebattlecruiser', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_missilebattlecruiser', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_missilebattlecruiser', 0)", }
vgr_alkhalid = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_alkhalid', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_alkhalid', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_alkhalid', 0)", }
vgr_dreadnaught = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_dreadnaught', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_dreadnaught', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_dreadnaught', 0)", }

---utility-------------------------------------------------------------------

utility = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'utility', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'utility', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_resourcecollector', 1); UI_SetScreenVisible( 'hgn_resourcecollector', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_salvagecollector', 1); UI_SetScreenVisible( 'hgn_salvagecollector', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_resourcecontroller', 1); UI_SetScreenVisible( 'hgn_resourcecontroller', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_probe', 1); UI_SetScreenVisible( 'hgn_probe', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_ghost', 1); UI_SetScreenVisible( 'hgn_ghost', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_proximitysensor', 1); UI_SetScreenVisible( 'hgn_proximitysensor', 1);	UI_SetButtonPressed('NewManageMenu', 'hgn_ecmprobe', 1); UI_SetScreenVisible( 'hgn_ecmprobe', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_core', 1); UI_SetScreenVisible( 'hgn_core', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_container', 1); UI_SetScreenVisible( 'hgn_container', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_minecontainer', 1); UI_SetScreenVisible( 'hgn_minecontainer', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_transportcell', 1); UI_SetScreenVisible( 'hgn_transportcell', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_plasma_inhibitor', 1); UI_SetScreenVisible( 'hgn_plasma_inhibitor', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_aditional_core', 1); UI_SetScreenVisible( 'hgn_aditional_core', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecollector', 1); UI_SetScreenVisible( 'vgr_resourcecollector', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecontroller', 1); UI_SetScreenVisible( 'vgr_resourcecontroller', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecontrollerdouble', 1); UI_SetScreenVisible( 'vgr_resourcecontrollerdouble', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_container', 1); UI_SetScreenVisible( 'vgr_container', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_probe', 1); UI_SetScreenVisible( 'vgr_probe', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_probe_prox', 1); UI_SetScreenVisible( 'vgr_probe_prox', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_probe_ecm', 1); UI_SetScreenVisible( 'vgr_probe_ecm', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_probe_smallhsbeacon', 1); UI_SetScreenVisible( 'vgr_probe_smallhsbeacon', 1); UI_SetButtonPressed('NewManageMenu', 'vgr_ghost', 1); UI_SetScreenVisible( 'vgr_ghost', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'utility', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_resourcecollector', 0); UI_SetScreenVisible( 'hgn_resourcecollector', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_salvagecollector', 0); UI_SetScreenVisible( 'hgn_salvagecollector', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_resourcecontroller', 0); UI_SetScreenVisible( 'hgn_resourcecontroller', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_probe', 0); UI_SetScreenVisible( 'hgn_probe', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_ghost', 0); UI_SetScreenVisible( 'hgn_ghost', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_proximitysensor', 0); UI_SetScreenVisible( 'hgn_proximitysensor', 0);	UI_SetButtonPressed('NewManageMenu', 'hgn_ecmprobe', 0); UI_SetScreenVisible( 'hgn_ecmprobe', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_core', 0); UI_SetScreenVisible( 'hgn_core', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_container', 0); UI_SetScreenVisible( 'hgn_container', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_minecontainer', 0); UI_SetScreenVisible( 'hgn_minecontainer', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_transportcell', 0); UI_SetScreenVisible( 'hgn_transportcell', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_plasma_inhibitor', 0); UI_SetScreenVisible( 'hgn_plasma_inhibitor', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_aditional_core', 0); UI_SetScreenVisible( 'hgn_aditional_core', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecollector', 0); UI_SetScreenVisible( 'vgr_resourcecollector', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecontroller', 0); UI_SetScreenVisible( 'vgr_resourcecontroller', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecontrollerdouble', 0); UI_SetScreenVisible( 'vgr_resourcecontrollerdouble', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_container', 0); UI_SetScreenVisible( 'vgr_container', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_probe', 0); UI_SetScreenVisible( 'vgr_probe', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_probe_prox', 0); UI_SetScreenVisible( 'vgr_probe_prox', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_probe_ecm', 0); UI_SetScreenVisible( 'vgr_probe_ecm', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_probe_smallhsbeacon', 0); UI_SetScreenVisible( 'vgr_probe_smallhsbeacon', 0); UI_SetButtonPressed('NewManageMenu', 'vgr_ghost', 0); UI_SetScreenVisible( 'vgr_ghost', 0)",
}
hgn_resourcecollector = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_resourcecollector', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_resourcecollector', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_resourcecollector', 0)", }
hgn_salvagecollector = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_salvagecollector', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_salvagecollector', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_salvagecollector', 0)", }
hgn_resourcecontroller = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_resourcecontroller', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_resourcecontroller', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_resourcecontroller', 0)", }
hgn_plasma_inhibitor = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_plasma_inhibitor', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_plasma_inhibitor', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_plasma_inhibitor', 0)", }
hgn_aditional_core = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_aditional_core', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_aditional_core', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_aditional_core', 0)", }
hgn_probe = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_probe', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_probe', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_probe', 0)", }
hgn_proximitysensor = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_proximitysensor', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_proximitysensor', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_proximitysensor', 0)", }
hgn_ecmprobe = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_ecmprobe', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_ecmprobe', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_ecmprobe', 0)", }
hgn_ghost = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_ghost', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_ghost', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_ghost', 0)", }
hgn_core = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_core', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_core', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_core', 0)", }
hgn_container = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_container', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_container', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_container', 0)", }
hgn_minecontainer = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_minecontainer', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_minecontainer', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_minecontainer', 0)", }
hgn_transportcell = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_transportcell', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_transportcell', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_transportcell', 0)", }
vgr_resourcecollector = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_resourcecollector', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecollector', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecollector', 0)", }
vgr_resourcecontroller = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_resourcecontroller', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecontroller', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecontroller', 0)", }
vgr_resourcecontrollerdouble = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_resourcecontrollerdouble', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecontrollerdouble', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_resourcecontrollerdouble', 0)", }
vgr_container = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_container', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_container', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_container', 0)", }
vgr_probe = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_probe', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_probe', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_probe', 0)", }
vgr_probe_prox = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_probe_prox', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_probe_prox', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_probe_prox', 0)", }
vgr_probe_ecm = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_probe_ecm', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_probe_ecm', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_probe_ecm', 0)", }
vgr_probe_smallhsbeacon = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_probe_smallhsbeacon', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_probe_smallhsbeacon', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_probe_smallhsbeacon', 0)", }
vgr_ghost = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'vgr_ghost', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'vgr_ghost', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'vgr_ghost', 0)", }

---weapon-------------------------------------------------------------------

weapon = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'weapon', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'weapon', 1); UI_SetButtonPressed('NewManageMenu', 'hgn_nuclearbomb', 1); UI_SetScreenVisible( 'hgn_nuclearbomb', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'weapon', 0); UI_SetButtonPressed('NewManageMenu', 'hgn_nuclearbomb', 0); UI_SetScreenVisible( 'hgn_nuclearbomb', 0)",
}
hgn_tangomine = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_tangomine', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_tangomine', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_tangomine', 0)", }
hgn_viper = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_viper', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_viper', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_viper', 0)", }
hgn_nuclearbomb = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'hgn_nuclearbomb', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'hgn_nuclearbomb', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'hgn_nuclearbomb', 0)", }

---fleet----------------------------------------------------------------------

fleet = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'fleet', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
	onShow = "UI_SetButtonPressed('NewManageMenu', 'fleet', 1); UI_SetScreenVisible( 'fighter', 1); UI_SetScreenVisible( 'corvette', 1); UI_SetScreenVisible( 'frigate', 1); UI_SetScreenVisible( 'platform', 1); UI_SetScreenVisible( 'utility', 1); UI_SetScreenVisible( 'capital', 1); UI_SetScreenVisible( 'armedcapital', 1); UI_SetScreenVisible( 'superarmedcapital', 1); UI_SetScreenVisible( 'weapon', 1)",
	onHide = "UI_SetButtonPressed('NewManageMenu', 'fleet', 0); UI_SetScreenVisible( 'fighter', 0); UI_SetScreenVisible( 'corvette', 0); UI_SetScreenVisible( 'frigate', 0); UI_SetScreenVisible( 'platform', 0); UI_SetScreenVisible( 'utility', 0); UI_SetScreenVisible( 'capital', 0); UI_SetScreenVisible( 'armedcapital', 0); UI_SetScreenVisible( 'superarmedcapital', 0); UI_SetScreenVisible( 'weapon', 0)",
}

refresh = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'refresh', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
}

autoselection = {
	claimMousePress = 1,
	RootElementSettings = { onMouseClicked = "UI_ToggleScreen( 'autoselection', 0)", },
	size = { 0, 0, 0, 0 },
	stylesheet = "HW2StyleSheet",
	pixelUVCoords = 1,
}
