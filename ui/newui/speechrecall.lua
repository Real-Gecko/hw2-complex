SpeechRecall = {
    size = { 225, 119, 351, 266, },
    stylesheet = "HW2StyleSheet",
    RootElementSettings = {
        backgroundColor = "IGColorBackground1", },
    soundOnShow = "SFX_ObjectiveMenuONOFF",
    soundOnHide = "SFX_ObjectiveMenuONOFF",
    pixelUVCoords = 1;
    { -- MAIN HEADING
        type = "TextLabel",
        position = { 4, 1, },
        size = { 208, 14, },
        name = "lblTitle",
        Text = {
            textStyle = "IGHeading1",
            text = "INFO", },
    },
    { -- SUBHEADING
        type = "TextLabel",
        position = { 4, 16, },
        size = { 208, 13, },
        name = "lblSubtitle",
        Text = {
            textStyle = "IGHeading2",
            text = "MESSAGES/GAME PARAMETERS//", },
    },
    { -- INFO OPTIONS
        type = "Frame",
        position = { 3, 31, },
        autosize = 1,
        borderColor = "IGColorOutline",
        outerBorderWidth = 1;

        ---Recall
        {
            type = "TextButton",
            position = { 0, 0, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Recall", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	1 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        {
            type = "ListBox",
            listBoxStyle = "FEBorderListBoxStyle",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "listSpeech",
            hugBottom = 1,
        },
        {
            type = "Line",
            p1 = { 325, 0, },
            p2 = { 325, (174 + 39), },
            lineWidth = 2,
            color = "IGColorOutline",
            name = "listSpeech1",
        },
        ---Military Rank
        {
            type = "TextButton",
            position = { 0, 12, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Military Rank", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	1 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        {
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "MilitaryRank",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 15, 15 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\ingameicons\\degree_icon.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Military Rank",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Description
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Represents the progress of your naval career. Rank advancement is dependent on the amount of Honor Points you have earned; with higher ranks granting access to more crew and officer recruits, better research opportunities and also improving the rank renumeration recieved at the end of each year (if rank renumeration is enabled). To advance to higher ranks build the unlocked ranks on the <c=0095d9>CREW STATION</c> (Hiigarans), Vaygr advance automatically.\n7 ranks are available (with the minimum required honor in parentheses):\n  - Ensign (0)\n  - Lieutenant (30)\n  - Commander (80)\n  - Captain (150)\n  - Commodore (240)\n  - Admiral (350)\n  - Fleet Admiral (480)",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Honour
        { -- Button Text
            type = "TextButton",
            position = { 0, 24, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Honour", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		1 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Honour",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 15, 15 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\ingameicons\\honor_icon.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Honour",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Body
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Honor represents the trust your fleet has in you and is needed to advance your rank.\nTo increase your Honour:\n  - Build units and subsystems\n  - Research technologies, abilities and upgrades\n  - Harvest resources and salvage debris\n  - Destroy enemy ships",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Crew/Officers
        { -- Button Text
            type = "TextButton",
            position = { 0, 36, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Crew/Officers", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	1 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "CrewOfficer",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Crew Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 15, 15 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\ingameicons\\crew_icon.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Officer Icon
                type = "Frame",
                position = { 20, 4 },
                size = { 15, 15 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\ingameicons\\officer_icon.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            {
                type = "TextLabel",
                position = { 37, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Crew/Officers",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            {
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "You have a limited number of crew and officers; each ship requires a certain amount of crew and capital ships typically requires a one or more officers.  To increase the maximum available crew or officers, you must advance to higher ranks; then build the unlocked crew and officer barracks on the <c=0095d9>CREW STATION</c> (Hiigarans) or research the appropriate topic (Vaygr). If a ship is destroyed, the number of crew and officers will be removed from the amount available, Hiigarans will have to wait for the lost crew and officers to be replenished. The Vaygr losses are generally replaced immediately.",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Game Year
        { -- Button Text
            type = "TextButton",
            position = { 0, 48, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Game Year", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		1 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "GameYear",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 15, 15 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\ingameicons\\year_icon.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Game Year",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Body
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Represents the progression of time ingame. At the end of each game year, several things will happen:\n  - Maintenance costs for all constructed ships and subsystems are paid\n  - If the Fusion ability was researched, you will recieve the generated RUs\n  - Members of an alliance will pay any required tribute costs to whichever member has the highest Player Score.",
                    textStyle = "IGHeading2",
                    vAlign = "Top",
                },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Energy
        { -- Button Text
            type = "TextButton",
            position = { 0, 60, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Energy", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		1 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Energy",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Frame
                type = "Frame",
                position = { 3, 4 },
                size = { 15, 15 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\ingameicons\\lightning_yellow.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Label
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Energy",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Text
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Total energy production capabilities of fleet; having a surplus of energy production grants bonuses to production speeds and also enhances the mobility and offensive capabilities of all ships in the fleet. To increase the energy produced:\nHIIGARANS\n  - Build Power Modules on production ships\n  - Build a <c=0095d9>POWER STATION</c>\n  - Build Toroidal Magnets on the Power Station\n  - Research Power Production upgrades\nVAYGR\n  - Research Power Production\n  - Build Power Modules on <c=0095d9>FLAGSHIP</c> and/or <c=0095d9>SHIPYARD</c>",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Research
        { -- Button Text
            type = "TextButton",
            position = { 0, 72, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Research Score", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		1 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Research",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            {
                type = "Frame",
                position = { 3, 4 },
                size = { 18, 18 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\research\\icons\\tech.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            {
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Research Score",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            {
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Represents currrent resource investment towards new technologies.\nHIIGARAN technology advances by building the next available research module on the <c=0095d9>RESEARCH STATION</c>, but to unlock each division requires investing enough RUs in research to raise the Research Score.\n  - 1st: RESEARCH Division (0)\n  - 2nd: SCIENCE Division (125)\n  - 3rd: ENGINEERING Division (450)\nVAYGR only require having the appropriate rank and at least one Research Division aboard any ship (Flagship, Carrier or Shipyard).",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Maintenance
        { -- Button Text
            type = "TextButton",
            position = { 0, 84, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Maintenance", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	1 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Maintenance",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            {
                type = "Frame",
                position = { 3, 4 },
                size = { 15, 15 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\ingameicons\\maintenance_icon.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            {
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Maintenance",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            {
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "All ships require yearly maintenance to remain operating at the optimal effectivess.  At the end of each game year, the cost to maintain all ships and subsystems is totaled, and then subtracted from the fleet's currently stored RUs.  If there isn't enought to cover the cost, ships will start to lose their effectiveness, dealing less damage with weapons and moving with reduced mobility.",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---RUs
        { -- Button Text
            type = "TextButton",
            position = { 0, 96, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "RUs", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			1 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "RUs",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            --autosize = 1,
            --autoarrange = 1,
            --autoarrangeSpace = 3,
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 15, 15 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\ingameicons\\ru_icon.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "RUs",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Body
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Abbreviation for 'Resource Units'. RUs are obtained by harvesting from the various clusters of asteroids scattered about the map, by salvaging the wreckage from destroyed ships (both ancient and recent), and establishing Trade Networks with allied players. To harvest/salvage RUs build <c=0095d9>RESOURCE COLLECTORS</c>, to estabilish a trade network build <c=0095d9>TRADE CONVOYS</c>. Once the appropriate technologies are researched, RUs may also be obtained by RU Fusion from the Hiigaran/Vaygr <c=0095d9>SCAVENGER</c> and Hiigaran/Vaygr <c=0095d9>MOBILE REFINERIES</c>, after researching the appropriate topic.",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Fusion
        { -- Button Text
            type = "TextButton",
            position = { 0, 108, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "RU Fusion", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		1 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Fusion",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 18, 18 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\research\\icons\\fusion.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "RU Fusion",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Body
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "The mobile workcenters of fleet resourcing operations (<c=0095d9>SCAVENGERS</c> and/or <c=0095d9>MOBILE REFINERIES</c>) can be enhanced through research or subsystems to autonomously generate RUs from the miniscule amounts of free-floating dust and gas found in space; RUs gained from fusion are given in a lump sum at the end of each game year.",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Mining Base
        { -- Button Text
            type = "TextButton",
            position = { 0, 120, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Mining Base", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	1 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "MiningBase",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 18, 18 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\research\\icons\\fusion1.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Mining Base",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Body
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Many battlefields have <c=0095d9>MINING BASES</c> scattered around, which are currently controlled by independent but hostile forces. To make use of them, a fleet will need to do the following:\n  - Capture the Mining Base with <c=0095d9>MARINE</c> or <c=0095d9>INFILTRATION FRIGATES</c>\n  - Dock <c=0095d9>RESOURCE COLLECTORS</c> with the Mining Base to begin mining operations\n  - Build a <c=0095d9>MINING CONTAINER</c> to transport mined resources back to a production ship for use by the fleet.",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Debris
        { -- Button Text
            type = "TextButton",
            position = { 0, 132, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Debris", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		1 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Debris",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 15, 15 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\ingameicons\\ru_icon.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Debris",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Body
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Long forgotten civilizations waged war on truly massive scales.  The remnants of those battles can sometimes still be found in the form of massive derelict hull fragments, simply called 'Debris'.  Once captured using <c=0095d9>MARINE</c> or <c=0095d9>INFILTRATOR FRIGATES</c>, these remnants provide 1300 RUs each game year.\nAlternatively, captured debris can be scuttled to produce a large number of salvageable-sized fragments; which can then be gathered by <c=0095d9>RESOURCE COLLECTORS</c> and brought to a production-capable ship for rapid conversion to RUs.",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        --Megaliths
        { -- Button Text
            type = "TextButton",
            position = { 0, 144, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Megaliths", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		1 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Megaliths",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 15, 15 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\ingameicons\\ru_icon.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Megaliths",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Body
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Scattered among the stars are remnants of ancient and extinct advanced spacefaring civilizations. These now derelict remains (called <c=0095d9>MEGALITHS</c>) are still functioning to a degree, and can be used to enhance the capabilities of the fleet that finds them.  Different Megaliths grant different enhancements.\nTo make use of these bonuses, the Megaliths must be captured using a <c=0095d9>MARINE</c> or <c=0095d9>INFILTRATOR FRIGATE</c>.",
                    textStyle = "IGHeading2",
                    vAlign = "Top",
                },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Network
        { -- Button Text
            type = "TextButton",
            position = { 0, 156, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Trade Network", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		1 );
    UI_SetElementVisible( "", "Monitor", 		0 );
    UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Network",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 18, 18 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\research\\icons\\fusion2.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Trade Network",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Body
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Fleets with considerable stored quantities of RUs would be advised to build one or more <c=0095d9>TRADE CONVOYS</c>. Trade Convoys will automatically ferry RUs between you and allied players.  Note that allied players with lower Player Scores will be charged a diplomacy fee in RUs (if match has DIPLOMACY FEES enabled) to use the trade network.  The fee is payed at the end of each game year to the player with the highest game score.",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Monitor
        { -- Button Text
            type = "TextButton",
            position = { 0, 168, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Remote Monitor", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		1 );
		UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Monitor",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 18, 18 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\research\\icons\\computerlink.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Remote Monitor",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Description
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "The level of security your fleet uses to encrypt sensitive data transmissions across subspace; and conversely, your fleet's ability to decrypt the data transmissions of other fleets. Using any available sensor array, you'll be provided with a rough idea of the capabilities of other fleets in the area.",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Planets
        { -- Button Text
            type = "TextButton",
            position = { 0, 180, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Planets", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
		UI_SetElementVisible( "", "Space", 		0 );
    UI_SetElementVisible( "", "Planets", 		1 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Planets",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 18, 18 },
                BackgroundGraphic = {
                    texture = "data:ui\\newui\\research\\icons\\fusion3.mres",
                    textureUV = { 0, 0, 13, 13 },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Planets",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Description
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "Space is filled with many planets that can be colonized to generate RUs. To colonize a planet, the <c=0095d9>MOTHERSHIP</c> or <c=0095d9>FLAGSHIP</c> needs to be moved to within 5 km of the planet and kept there.\nOnce colonized, the quantity of RUs generated is dependent on the population of the planet. Population increases is the Mothership/Flagship or the Orbital Station is present in the orbit. Constructing an <c=0095d9>ORBITAL STATION</c> provides additional room for population growth.\nThe presence of an enemy ships near a colonized planet will cause all RU operations to pause, until the hostile ships is pushed out of the planet's orbit or destroyed.",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---Space
        { -- Button Text
            type = "TextButton",
            position = { 0, 192, },
            size = { 70, 12, },
            buttonStyle = "DiplomacyScreen_ButtonStyle",
            Text = {
                text = "Space", },
            onMouseClicked = [[
	UI_SetElementVisible( "", "listSpeech", 	0 );
    UI_SetElementVisible( "", "MilitaryRank", 	0 );
    UI_SetElementVisible( "", "Honour", 		0 );
    UI_SetElementVisible( "", "CrewOfficer", 	0 );
    UI_SetElementVisible( "", "GameYear", 		0 );
    UI_SetElementVisible( "", "Energy", 		0 );
    UI_SetElementVisible( "", "Research", 		0 );
    UI_SetElementVisible( "", "Maintenance", 	0 );
    UI_SetElementVisible( "", "RUs", 			0 );
    UI_SetElementVisible( "", "Fusion", 		0 );
    UI_SetElementVisible( "", "MiningBase", 	0 );
    UI_SetElementVisible( "", "Debris", 		0 );
    UI_SetElementVisible( "", "Megaliths", 		0 );
    UI_SetElementVisible( "", "Network", 		0 );
    UI_SetElementVisible( "", "Monitor", 		0 );
		UI_SetElementVisible( "", "Space", 		1 );
    UI_SetElementVisible( "", "Planets", 		0 );]],
        },
        { -- Box Text
            type = "Frame",
            position = { 70, 0, },
            size = { 275, (174 + 39), },
            name = "Space",
            visible = 0,
            borderWidth = 1,
            borderColor = "IGColorOutline";
            { -- Icon
                type = "Frame",
                position = { 3, 4 },
                size = { 18, 18 },
                BackgroundGraphic = {
                    texture = "DATA:\\Ship\\Icons\\subs\\planet_tech.tga",
                    textureUV = { 0, 0, 128, 128, },
                    color = OUTLINECOLOR,
                },
            },
            { -- Heading
                type = "TextLabel",
                position = { 20, 4, },
                size = { 100, 15 },
                Text = {
                    text = "Solar Radiation",
                    textStyle = "IGHeading2",
                    vAlign = "Center", },
                giveParentMouseInput = 1,
                dropShadow = 1,
            },
            { -- Description
                type = "TextLabel",
                position = { 3, 20, },
                width = (245),
                Text = {
                    text = "The closer a ship is to a star (like the Sun), the more damage it will suffer from high-energy radiation and the less energy it will consume to use its abilities. Ships that are within the protective influence of a Hiigaran <c=0095d9>ORBITAL STATION</c> or PLANET will not suffer these problems.\nHIIGARANs more advanced in colonizing techniques and are thus able to improve any planets they colonize, however, their ships are more prone to the damaging effects of solar radiation.\nVAYGR ships are nomads; they can colonize planets but not improve them; however, their ships are less prone to solar radiation.",
                    textStyle = "IGHeading2",
                    vAlign = "Top", },
                giveParentMouseInput = 1,
                dropShadow = 1,
                wrapping = 1,
                autosize = 1,
                autoarrange = 1,
            },
        },
        ---btn Close
        {
            type = "Frame",
            position = { 0, (193 + 20), },
            size = { 345, 19, },
            borderWidth = 1,
            borderColor = "IGColorOutline";
            {
                type = "TextButton",
                position = { 3, 3, },
                width = (345 + -6),
                buttonStyle = "DiplomacyScreen_ButtonStyle",
                Text = {
                    text = "$2642", },
                onMousePressed = "UI_ToggleScreen( 'SpeechRecall', 0)", },
        },
    },

    ---text per list box
    {
        type = "ListBoxItem",
        name = "listItem",
        autosize = 1,
        visible = 0,
        marginHeight = 2;
        {
            type = "Frame",
            position = { 0, 1, },
            size = { 16, 8, },
            name = "icon",
        },
        {
            type = "TextLabel",
            name = "text",
            position = { 18, 0, },
            size = { 235, 13, },
            wrapping = 1,
            autosize = 1,
            Text = {
                textStyle = "Taskbar_MenuButtonTextStyle",
                hAlign = "Left", }, },
    },
}
