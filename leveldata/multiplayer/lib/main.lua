function CheckMothershipDeadRule()
	local playerCount = Universe_PlayerCount();
	local playerIndex = 0;
	local numEnemies = 0;
	local mothership = "hgn_mothership"
	while (playerIndex < playerCount) do
		if (Player_IsAlive(playerIndex) == 1) then
			if Player_GetRace(playerIndex) == Race_Hiigaran then
				mothership = "hgn_mothership"
			else
				mothership = "vgr_mothership"
			end
			--create camera
			if SobGroup_HealthPercentage(mothership .. playerIndex) <= 0 and Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, mothership) > 0 then
				Volume_Delete("deathcam")
				Volume_Delete("deathcam1")
				Volume_Delete("deathcam2")
				Volume_Delete("deathcam3")
				local sob_position = SobGroup_GetPosition(mothership .. playerIndex)
				Volume_AddSphere("deathcam", { sob_position[1], sob_position[2], sob_position[3], }, 1000)
				Volume_AddSphere("deathcam1", { sob_position[1] + 2000, sob_position[2], sob_position[3], }, 1000)
				Volume_AddSphere("deathcam2", { sob_position[1], sob_position[2] + 2000, sob_position[3], }, 1000)
				Volume_AddSphere("deathcam3", { sob_position[1], sob_position[2], sob_position[3] + 2000, }, 1000)
			end
			--kill player
			if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, mothership) == 0 then
				Player_Kill(playerIndex)
				if playerIndex == Universe_CurrentPlayer() then
					music_index = 16
					Play_ParticularMusic()
					Rule_Add("DeathCinematic")
					Rule_Remove("CheckMothershipDeadRule")
				else
					UI_SetScreenEnabled("death", 1)
					UI_SetScreenVisible("death", 1)
					UI_SetTextLabelText("death", "lblSubTitle", "Complex Skirmish, Destroy Mothership");
					playerIndexList = playerIndex + 1
					UI_SetTextLabelText("death", "lblDescription1", "The Complex match is terminated for " .. CPULODList[playerIndexList]);
					Sound_SpeechPlay("data:sound\\speech\\missions\\m_15\\47100")
				end
			end
			--player count, is there an enemy?
			local otherPlayerIndex = 0
			while (otherPlayerIndex < playerCount) do
				if (AreAllied(playerIndex, otherPlayerIndex) == 0 and Player_IsAlive(otherPlayerIndex) == 1) then
					numEnemies = numEnemies + 1
				end
				otherPlayerIndex = otherPlayerIndex + 1
			end
		end
		playerIndex = playerIndex + 1
	end
	--win, no enemy
	if numEnemies == 0 then
		for i = 0, (playerCount - 1), 1 do
			if Player_IsAlive(i) == 1 and i == Universe_CurrentPlayer() then
				if Player_GetRace(i) == Race_Hiigaran then
					mothership = "hgn_mothership"
				else
					mothership = "vgr_mothership"
				end
				if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(i, mothership) == 1 then
					music_index = 16
					Play_ParticularMusic()
					Rule_Add("DeathCinematic")
					Rule_AddInterval("YesNoDialogVictory", 1)
				end
			end
		end
		Rule_Remove("CheckMothershipDeadRule")
	end
end

function CheckDeadRule()
	local playerCount = Universe_PlayerCount();
	local playerIndex = 0;
	local numEnemies = 0;
	while (playerIndex < playerCount) do
		if (Player_IsAlive(playerIndex) == 1) then
			if Player_NumberOfAwakeShips(playerIndex) <= 1 then
				UI_SetScreenEnabled("death", 1)
				UI_SetScreenVisible("death", 1)
				UI_SetTextLabelText("death", "lblSubTitle", "Complex Skirmish, Destroy All");
				playerIndexList = playerIndex + 1
				UI_SetTextLabelText("death", "lblDescription1", "The Complex match is terminated for " .. CPULODList[playerIndexList]);
				Sound_SpeechPlay("data:sound\\speech\\missions\\m_15\\47100")
				Player_Kill(playerIndex)
			end
			--player count
			local otherPlayerIndex = 0
			while (otherPlayerIndex < playerCount) do
				if (AreAllied(playerIndex, otherPlayerIndex) == 0 and Player_IsAlive(otherPlayerIndex) == 1) then
					numEnemies = numEnemies + 1
				end
				otherPlayerIndex = otherPlayerIndex + 1
			end
		end
		playerIndex = playerIndex + 1
	end
	if numEnemies == 0 then
		for i = 0, 5, 1 do
			if Player_IsAlive(i) == 1 and i == Universe_CurrentPlayer() then
				if Player_NumberOfAwakeShips(i) >= 1 then
					Rule_AddInterval("YesNoDialogVictory", 1)
				end
			end
		end
		Rule_Remove("CheckDeadRule")
	end
end

function CheckStore100000RUsDeadRule()
	local playerCount = Universe_PlayerCount();
	local playerIndex = 0;
	while (playerIndex < playerCount) do
		if (Player_IsAlive(playerIndex) == 1) then
			if SobGroup_Count("productioncapital" .. playerIndex) == 0 then
				SobGroup_TakeDamage("supporter" .. playerIndex, 1)
			end
			if (Player_HasShipWithBuildQueue(playerIndex) == 1) then
				if Player_GetRU(playerIndex) >= 100000 then
					Sound_SpeechPlay("data:sound\\speech\\missions\\m_15\\47100")
					for i = 0, 5, 1 do
						if Player_IsAlive(i) == 1 then
							if i ~= playerIndex then
								Player_Kill(i)
							else
								Rule_AddInterval("YesNoDialogVictory", 1)
							end
						end
					end
				end
			else
				Player_Kill(playerIndex)
			end
		end
		playerIndex = playerIndex + 1
	end
	--ati display
	ATI_Clear()
	if UI_ScreenIsActive("NewTaskbar") == 1 and UI_IsNamedElementVisible("NewTaskbar", "btnHide1") == 1 then
		playerIndex = 0
		local ATIRect = { 0.4355, 0.333, 0.5, 0.02 }
		while (playerIndex < playerCount) do
			ATI_CreateParameters(RRPN_Parameters)
			local playerName = Player_GetName(playerIndex)
			ATI_AddWString(RRPI_PlayerName, playerName)
			local progress = Player_GetRU(playerIndex) / 100000
			ATI_AddFloat(RRPI_PlayerProgress, progress)
			local playerColour = { 1.0, 1.0, 1.0, 1.0 }
			ATI_AddColour(RRPI_PlayerColour, playerColour)
			ATI_Display2D("playerProgress", ATIRect, 0)
			ATIRect[2] = ATIRect[2] - 0.025
			playerIndex = playerIndex + 1
		end
	end
end

function DeathCinematic()
	if Rule_Exists("Cinematic") == 1 then
		CinematicControllerStop()
	end
	UI_SetScreenEnabled("death", 0)
	UI_SetScreenVisible("death", 0)
	UI_SetElementEnabled("NewTaskbar", "btnBuild", 0)
	UI_SetElementEnabled("NewTaskbar", "btnResearch", 0)
	UI_SetElementEnabled("NewTaskbar", "btnLaunch", 0)
	UI_SetElementEnabled("NewTaskbar", "btnManage", 0)
	UI_SetElementEnabled("NewTaskbar", "btnFleet", 0)
	UI_SetElementEnabled("NewTaskbar", "BQ", 0)
	UI_SetElementEnabled("NewTaskbar", "btnEvents_new", 0)
	UI_SetElementEnabled("NewTaskbar", "btnRM", 0)
	local r = random(1, 26)
	Camera_FocusVolumeKeepingEyePosition("s" .. r)
	if cinecontatore[1] == 0 then
		Event_Start("startcinematic")
		Rule_AddInterval("dc", 2)
	end
	if cinecontatore[1] == 1 then
		Subtitle_Message("COMPLEX 9.1\n\n\nBeghins (Agostino Bocchi) - Lead Design, Scripting, Quality\n\n\nDario Santocanale - Project Management\n\n\nALC - Production, Content, Quality\n\n\nAstradeus - 2D/3D Graphic\n\n\nBaroness - 2D/3D Graphic\n\n\nOni - 2D/3D Graphic\n\n\nVan_Der_Goes (Paolo Mazzoccato) - 2D/3D Graphic\n\n\nRorik - Multiplayer Support, Quality\n\n\nSagyxil - Scripting, 2D/3D Graphic, Content, Quality\n\n\nNakamura - Quality\n\n\nWalkop2011 - Quality\n\n\nComplex Logos - Sagyxil\n\n\nLogo Music - www.danipenet.ro\n\n\nwww.homeworld2complex.com\n\n\n\n\n", 160)
	end
	r = random(1, 6)
	if cinecontatore[1] > 8 then
		nm = SobGroup_SplitGroupFromGroup("temp", "megalitenoowner", SobGroup_Count("megalitenoowner"), "splitter")
		if nm > 0 then
			r = random(0, nm - 1)
			SobGroup_Clear("focus")
			SobGroup_SobGroupAdd("focus", "temp" .. r)
			r = random(1, 8)
		end
	end
	if r == 1 then
		Event_Start("deathfocus1")
	elseif r == 2 then
		Event_Start("deathfocus2")
	elseif r == 3 then
		Event_Start("deathfocus3")
	elseif r == 4 then
		Event_Start("deathfocus4")
	elseif r == 5 then
		Event_Start("deathfocus5")
	elseif r == 6 then
		Event_Start("deathfocus6")
	elseif r == 7 then
		Event_Start("deathfocus7")
	elseif r == 8 then
		Event_Start("deathfocus8")
	end
	if cinecontatore[1] > 23 then
		kill()
		return nil
	end
	cinecontatore[1] = cinecontatore[1] + 1
	Rule_Remove("DeathCinematic")
	Rule_AddInterval("DeathCinematic", 8)
	fadedown_death()
end

function kill()
	UI_UnBindKeyEvent(ESCKEY)
	Event_Start("stopcinematicrestore")
	Rule_Remove("DeathCinematic")
	Rule_Remove("fadeup_death")
	Universe_Fade(0, 1.75)
	Rule_Remove("kill")
end

function fadedown_death()
	Universe_Fade(0, 1.75)
	Rule_Remove("fadedown_death")
	Rule_AddInterval("fadeup_death", 6.25)
end

function fadeup_death()
	Universe_Fade(1, 1.75)
	Rule_Remove("fadeup_death")
end

function dc()
	if UI_ScreenIsActive("YesNoDialog") == 1 or UI_ScreenIsActive("YesNoDialogVictory") == 1 then
		Universe_AllowPlayerOrders(1)
	else
		UI_BindKeyEvent(ESCKEY, "kill")
		Universe_AllowPlayerOrders(0)
		Rule_Remove("dc")
	end
end

function YesNoDialogVictory()
	UI_SetScreenEnabled("YesNoDialogVictory", 1)
	UI_SetScreenVisible("YesNoDialogVictory", 1)
	UI_SetTextLabelText("YesNoDialogVictory", "m_lblTitle", "Victory");
	UI_SetTextLabelText("YesNoDialogVictory", "m_lblMessage", "You win! Continue watching?");
	Rule_Remove("YesNoDialogVictory")
end
