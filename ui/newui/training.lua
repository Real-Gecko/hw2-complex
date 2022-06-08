training = {
	size = { 301, 453, 200, 30 },
	stylesheet = "HW2StyleSheet",
	clickThrough = 1,
	pixelUVCoords = 1; -- Enter pixel coords for texture coords
	-- Timeto Frame
	{
		type = "Frame",
		position = { 0, 0 },
		size = { 200, 30 },
		backgroundColor = "IGColorBackground1",
		helpTip = "SCORE",
		helpTipTextLabel = "commandsHelpTip",
		helpTipScreen = "NewTaskbar";
		{
			type = "TextLabel",
			position = { 0, -2 },
			size = { 200, 15 },
			name = "p1",
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Center",
				color = "FEColorHeading3",
			},
		},
		{
			type = "TextLabel",
			position = { 0, 10 },
			size = { 200, 15 },
			name = "p1punteggio",
			Text = {
				textStyle = "IGHeading1",
				hAlign = "Center",
				color = "FEColorHeading3",
			},
		},
	},

}
