function ec_welcome() 

  if intro == 1 then
	  --benchmark
	  if leveltype ~= "benchmark" then
			interfacegivecontrol()
		end	
		UI_SetTextLabelText("ResourceMenu", "lblResourceUnits", ""..Player_GetRU( Universe_CurrentPlayer() ).."/"..RUMaxCapacityList[Universe_CurrentPlayer()+1]);
	  UI_SetTextLabelText("UnitCapInfoPopup", "lblResourceUnits", ""..Player_GetRU( Universe_CurrentPlayer() ).."/"..RUMaxCapacityList[Universe_CurrentPlayer()+1]);
	  UI_SetTextLabelText("UnitCapInfoPopup", "lblFusion", ""..fusionList[Universe_CurrentPlayer()+1]);    
	  UI_SetTextLabelText("UnitCapInfoPopup", "lblmegalith", ""..megalithList[Universe_CurrentPlayer() + 1]); 
	  UI_SetTextLabelText("UnitCapInfoPopup", "diplomacy", ""..diplomacyListSummary[Universe_CurrentPlayer() + 1]);  
    UI_SetTextLabelText("UnitCapInfoPopup", "lblplanet", ""..planetList[Universe_CurrentPlayer() + 1]); 	
	  UI_SetTextLabelText("UnitCapInfoPopup", "lbltrade", ""..tradeList[Universe_CurrentPlayer() + 1]);   
    UI_SetTextLabelText("ResourceMenu", "lblstatus", "Monitor");    
    UI_SetTextLabelText("ResourceMenu", "lbltotalscore", ""..researchList[Universe_CurrentPlayer() + 1]);
	  UI_SetTextLabelText("UnitCapInfoPopup", "lbltotalscore", ""..researchList[Universe_CurrentPlayer() + 1]);  
	  UI_SetTextLabelText("ResourceMenu", "lblMaintenance", ""..maintenanceList[Universe_CurrentPlayer() + 1]);                  
    UI_SetTextLabelText("UnitCapInfoPopup", "lblMaintenance", ""..maintenanceList[Universe_CurrentPlayer() + 1]);		
		ec_intro_count = 15
	end
 
  if ec_intro_count == 0 then         
    UI_SetScreenEnabled("NewBuildMenu", 0)
    UI_SetScreenEnabled("NewResearchMenu", 0)
    UI_SetScreenEnabled("NewLaunchMenu", 0)
		UI_SetScreenEnabled("NewManageMenu", 0)
    UI_SetElementEnabled("NewTaskbar", "btnBuild", 0)
    UI_SetElementEnabled("NewTaskbar", "btnResearch", 0)
    UI_SetElementEnabled("NewTaskbar", "btnLaunch", 0)
		UI_SetElementEnabled("NewTaskbar", "btnManage", 0)
    for i = 0,nms-1,1 do
    	if SobGroup_Empty("splitmotherships"..i) == 0 then       	       	  
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Lights, 0) 
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Stop, 0) 
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Move, 0) 
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Attack, 0)
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Scuttle, 0) 
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Sensors, 0)  	
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Builder, 0)
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Dock, 0)            
        
				local iRace = Player_GetRace(SobGroup_OwnedBy("splitmotherships"..i)) + 1				
				dofilepath([[data:scripts/building and research/]] .. races[iRace][1] .. [[/build.lua]])
				for z, iCount in build do
					Player_RestrictBuildOption(SobGroup_OwnedBy("splitmotherships"..i), iCount.ThingToBuild)
				end
				Player_RestrictResearchOption(SobGroup_OwnedBy("splitmotherships"..i), "CapitalRetire")
				Player_RestrictResearchOption(SobGroup_OwnedBy("splitmotherships"..i), "SensDisProbe")									
							                          	     
	    end	    
	  end		  
	  
		if startwith >= 7 then
		  if SobGroup_Empty("hgn_shipyard_g"..Universe_CurrentPlayer()) == 0 then 
				for i = 0,nms-1,1 do
					if SobGroup_Empty("splitmotherships"..i) == 0 then       
						SobGroup_DockSobGroupInstant("splitmotherships"..i, "hgn_shipyard_g"..SobGroup_OwnedBy("splitmotherships"..i)) 	    	  
					end            	     
				end  
				for i = 0,nrs-1,1 do
					if SobGroup_Empty("splitresearchstations"..i) == 0 then	    	
						SobGroup_DockSobGroupInstant("splitresearchstations"..i, "hgn_shipyard_g"..SobGroup_OwnedBy("splitresearchstations"..i))  	    	    
					end	    
				end
				for i = 0,ncs-1,1 do
					if SobGroup_Empty("splitcrewstations"..i) == 0 then  	       	
						SobGroup_DockSobGroupInstant("splitcrewstations"..i, "hgn_shipyard_g"..SobGroup_OwnedBy("splitcrewstations"..i))  	    	  
					end	    
				end	
				for i = 0,nps-1,1 do
					if SobGroup_Empty("splitpowerstations"..i) == 0 then   
						SobGroup_DockSobGroupInstant("splitpowerstations"..i, "hgn_shipyard_g"..SobGroup_OwnedBy("splitpowerstations"..i)) 	    	  
					end	     	     
				end	 
				for i = 0,nps-1,1 do
					if SobGroup_Empty("splitweaponstations"..i) == 0 then   
						SobGroup_DockSobGroupInstant("splitweaponstations"..i, "hgn_shipyard_g"..SobGroup_OwnedBy("splitweaponstations"..i))   	    	 	     
					end		     
				end	  
      end			
	  end 	    
      
  elseif ec_intro_count == 1 then    
    Sound_SpeechPlay("data:sound\\speech\\nis\\nis_03\\56062") --The time of prophecy is at hand      
  elseif ec_intro_count == 2 then
    Sound_SpeechPlay("data:sound\\speech\\nis\\nis_03\\56074") --The end time has begun    
  elseif ec_intro_count == 3 then
    Sound_SpeechPlay("data:sound\\speech\\nis\\nis_03\\56073") --This is your destiny            
    
  elseif ec_intro_count == 4 then
    interfacegivecontrol()              
            
  elseif ec_intro_count == 5 then
    if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then 	 
	    Subtitle_Add(Actor_FleetCommand,"Hyperspace jump successful",5) 
	    Sound_SpeechPlay("data:sound\\speech\\missions\\m_02\\40024")  
	  end  
    
  elseif ec_intro_count == 6 then
    if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then 	 
	    Subtitle_Add(Actor_FleetCommand,"Mothership status report",5) 
	    Sound_SpeechPlay("data:sound\\speech\\nis\\nis_01a\\56007")  
	  end    
    
  elseif ec_intro_count == 7 then
    if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then 	 
		  Subtitle_Add(Actor_FleetCommand,"Stand by to initiate main engine sequence",5)
		  Sound_SpeechPlay("data:sound\\speech\\nis\\nis_01a\\56009")  
		end  
	  
  elseif ec_intro_count == 8 then      
    for i = 0,nms-1,1 do
    	if SobGroup_Empty("splitmotherships"..i) == 0 then              
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Stop, 1) 
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Move, 1)                    	     
	    end	    
	  end	        
    if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then 	 
	    Subtitle_Add(Actor_FleetCommand,"Main engines on-line",5)
	    Sound_SpeechPlay("data:sound\\speech\\nis\\nis_01a\\56010")   	    
		end  

--navigation      
  elseif ec_intro_count == 9 then
    for i = 0,nms-1,1 do
    	if SobGroup_Empty("splitmotherships"..i) == 0 then        	        
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Lights, 1)         
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Sensors, 1)          	                 	     
	    end	    
	  end	 	  
    if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then 	 
	    Subtitle_Add(Actor_FleetCommand,"Navigation on-line",5) 
	    Sound_SpeechPlay("data:sound\\speech\\nis\\nis_01a\\56008")    
		end       
  
  elseif ec_intro_count == 10 then    
    if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then 	 
	    Subtitle_Add(Actor_FleetCommand,"Engine test complete, all standard drives are operational",5)
	    Sound_SpeechPlay("data:sound\\speech\\nis\\nis_01a\\56011")    
	  end 

--resource system	  
	elseif ec_intro_count == 11 then	
	  if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then
	    Subtitle_Add(Actor_FleetCommand,"Resourcing Systems fully operational",5)
	    Sound_SpeechPlay("data:sound\\speech\\missions\\m_01\\40540")  
	  end        
	  UI_SetTextLabelText("ResourceMenu", "lblResourceUnits", ""..Player_GetRU( Universe_CurrentPlayer() ).."/"..RUMaxCapacityList[Universe_CurrentPlayer()+1]);
	  UI_SetTextLabelText("UnitCapInfoPopup", "lblResourceUnits", ""..Player_GetRU( Universe_CurrentPlayer() ).."/"..RUMaxCapacityList[Universe_CurrentPlayer()+1]);
	  UI_SetTextLabelText("UnitCapInfoPopup", "lblFusion", ""..fusionList[Universe_CurrentPlayer()+1]);    
	  UI_SetTextLabelText("UnitCapInfoPopup", "lblmegalith", ""..megalithList[Universe_CurrentPlayer() + 1]); 
	  UI_SetTextLabelText("UnitCapInfoPopup", "diplomacy", ""..diplomacyListSummary[Universe_CurrentPlayer() + 1]);  
    UI_SetTextLabelText("UnitCapInfoPopup", "lblplanet", ""..planetList[Universe_CurrentPlayer() + 1]); 	
	  UI_SetTextLabelText("UnitCapInfoPopup", "lbltrade", ""..tradeList[Universe_CurrentPlayer() + 1]);    	  
	
--fleet command	  
	elseif ec_intro_count == 12 then
	  UI_SetScreenEnabled("NewLaunchMenu", 1)	  
    UI_SetElementEnabled("NewTaskbar", "btnLaunch", 1)
		 UI_SetScreenEnabled("NewManageMenu", 1)	  
    UI_SetElementEnabled("NewTaskbar", "btnManage", 1)
    for i = 0,nms-1,1 do
    	if SobGroup_Empty("splitmotherships"..i) == 0 then         
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Scuttle, 1)
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Dock, 1) 		                              	     
	    end	    
	  end	      
    if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then 	 
	    Subtitle_Add(Actor_FleetCommand,"Fleet command on-line",5)
	    Sound_SpeechPlay("data:sound\\speech\\nis\\nis_01a\\56006")   	    
		end  		 		  
		UI_SetTextLabelText("ResourceMenu", "lblstatus", "Monitor");     
  
--Engineering    
  elseif ec_intro_count == 13 then      
    UI_SetScreenEnabled("NewBuildMenu", 1)
    UI_SetScreenEnabled("NewResearchMenu", 1)
    UI_SetElementEnabled("NewTaskbar", "btnBuild", 1)
    UI_SetElementEnabled("NewTaskbar", "btnResearch", 1)    
    if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then 	    
	    Subtitle_Add(Actor_FleetCommand,"Engineering on-line",5) 
	    Sound_SpeechPlay("data:sound\\speech\\nis\\nis_01a\\56012")   
	  end	  
	  UI_SetTextLabelText("ResourceMenu", "lbltotalscore", ""..researchList[Universe_CurrentPlayer() + 1]);
	  UI_SetTextLabelText("UnitCapInfoPopup", "lbltotalscore", ""..researchList[Universe_CurrentPlayer() + 1]);  
	  UI_SetTextLabelText("ResourceMenu", "lblMaintenance", ""..maintenanceList[Universe_CurrentPlayer() + 1]);                  
    UI_SetTextLabelText("UnitCapInfoPopup", "lblMaintenance", ""..maintenanceList[Universe_CurrentPlayer() + 1]);
    for i = 0,nms-1,1 do
    	if SobGroup_Empty("splitmotherships"..i) == 0 then     	        
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Builder, 1)        
				local iRace = Player_GetRace(SobGroup_OwnedBy("splitmotherships"..i)) + 1				
				dofilepath([[data:scripts/building and research/]] .. races[iRace][1] .. [[/build.lua]])
				for z, iCount in build do
					Player_UnrestrictBuildOption(SobGroup_OwnedBy("splitmotherships"..i), iCount.ThingToBuild)
				end
				Player_UnrestrictResearchOption(SobGroup_OwnedBy("splitmotherships"..i), "CapitalRetire")
				Player_UnrestrictResearchOption(SobGroup_OwnedBy("splitmotherships"..i), "SensDisProbe")				                            	     
	    end	      
	  end	                
         
  elseif ec_intro_count == 14 then 
    for i = 0,nms-1,1 do
    	if SobGroup_Empty("splitmotherships"..i) == 0 then        	         
        SobGroup_AbilityActivate("splitmotherships"..i, AB_Attack, 1)                         	     
	    end	    
	  end	      
    if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then 	     
	    Subtitle_Add(Actor_FleetCommand,"Weapon systems fully charged",5)
	    Sound_SpeechPlay("data:sound\\speech\\missions\\m_15\\47012")    	    
		end  
             
  elseif ec_intro_count == 15 then
	  if leveltype ~= "benchmark" then
			if Player_GetRace(Universe_CurrentPlayer()) == Race_Hiigaran then 	 
				Subtitle_Add(Actor_FleetCommand,"The Mothership is standing by",5) 
				Sound_SpeechPlay("data:sound\\speech\\nis\\nis_01a\\56013")  
			end     
			if year <= 1 then   		    
				Rule_AddInterval("objectives", 24.24) 		    
			end	  
			Rule_AddInterval("population", 7.654321) --ok
			Rule_AddInterval("populationinit", 3.1)
			Rule_AddInterval("transportcell", 7.55) --ok	
		end	
  end 
     
  if ec_intro_count == 15 then
    Rule_Remove("ec_welcome")  
  elseif ec_intro_count < 3 then   	    
    ec_intro_count = ec_intro_count + 1
    Rule_Remove("ec_welcome")    	
    Rule_AddInterval("ec_welcome", 6)   
  elseif ec_intro_count == 3 then   	    
    ec_intro_count = ec_intro_count + 1
    Rule_Remove("ec_welcome")  
    Rule_AddInterval("ec_welcome", 3)
  else        
    ec_intro_count = ec_intro_count + 1
    Rule_Remove("ec_welcome") 
    Rule_AddInterval("ec_welcome", 7) 
  end  
  
end

function locard()
  if intro == 1 then
	  Rule_Remove("locard") 
	  return nil
	end
  Event_Start("loc") 
  Rule_Remove("locard")   
end

function fadedown_intro()
  Universe_Fade(1,0)  
  Rule_Remove("fadedown_intro") 
  Rule_AddInterval("fadeup_intro",1) 
end
function fadeup_intro()
  Universe_Fade(0,33)      
  Rule_Remove("fadeup_intro")   
end

function interfaceintro()   
  if intro == 1 then
	  UI_SetScreenEnabled("ComplexLogo", 1)  
    UI_SetScreenVisible("ComplexLogo", 1)  
	  Rule_Remove("interfaceintro")    
		Rule_AddInterval("interfaceintrostop", 6) 
		return nil
	end

  Sound_MusicPlay("Data:sound/music/special/H1 - The Bentusi") 
  local playerIndex = 0                           
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
			  if Player_GetRace(playerIndex) == Race_Hiigaran then
					if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_shipyard_g") >= 1 then
						SobGroup_FillShipsByType("hgn_shipyard_g"..playerIndex, "Player_Ships"..playerIndex, "hgn_shipyard_g") 
						Camera_FocusSobGroupWithBuffer("hgn_shipyard_g"..Universe_CurrentPlayer(), 10000, 0, 29)   
					else
						SobGroup_FillShipsByType("hgn_mothership"..playerIndex, "Player_Ships"..playerIndex, "hgn_mothership")   
						Camera_FocusSobGroupWithBuffer("hgn_mothership"..Universe_CurrentPlayer(), 6000, 0, 29)    
					end  
				else
          SobGroup_FillShipsByType("vgr_mothership"..playerIndex, "Player_Ships"..playerIndex, "vgr_mothership")   
					Camera_FocusSobGroupWithBuffer("vgr_mothership"..Universe_CurrentPlayer(), 6000, 0, 29) 
				end		
			end  
		end 
		playerIndex = playerIndex + 1  
	end	   
  UI_SetScreenEnabled("ComplexLogo", 1)  
  UI_SetScreenVisible("ComplexLogo", 1)       
  Rule_Remove("interfaceintro")    
  Rule_AddInterval("interfaceintrostop", 20)   
end

function interfaceintrostop()        
  UI_SetScreenVisible("ComplexLogo", 0)       
  Rule_Remove("interfaceintrostop")     
end

function interfacegivecontrol()    
  --Camera_Interpolate( "here", "ss", 2)   
  Universe_AllowPlayerOrders(1)  
  UI_SetScreenEnabled("ResourceMenu", 1)     
  UI_SetScreenEnabled("NewTaskbar", 1)  
  UI_SetScreenVisible("ResourceMenu", 1)     
  UI_SetScreenVisible("NewTaskbar", 1)   
  UI_SetElementEnabled("NewTaskbar", "btnEMP", 0)
  UI_SetElementVisible("NewTaskbar", "btnObjectives", 1)    
  UI_SetElementVisible("NewTaskbar", "btnChat", 1)    
  UI_SetElementVisible("NewTaskbar", "btnDiplomacy", 1)    
  UI_SetElementVisible("NewTaskbar", "btnRecall", 1) 
	if SobGroup_Empty("star_sol") == 0 then
	  UI_SetScreenVisible("planetbar", 1)
	end
  cleaninterface(0, "empty")  
	UI_SetElementVisible("NewTaskbar", "sundamagetextred", 0)
	UI_SetElementVisible("NewTaskbar", "sundamagetextblu", 0)			
	UI_SetElementVisible("NewTaskbar", "sundamagetext", 1)
	UI_SetTextLabelText("NewTaskbar", "sundamagetext", "---");		
  Rule_Remove("interfacegivecontrol")  
end

function interfacebuttons() 
  local playerIndex = Universe_CurrentPlayer()
  local playerIndexList = playerIndex + 1	
	
	--end current game/game over
	if UI_ScreenIsActive("go") == 1 then	  
    setGameOver()		
	end
	
	--RU Update
  if ((year==0 and gametime<45) or year>0 or intro==1) then
	  UI_SetTextLabelText("ResourceMenu", "lblResourceUnits", ""..Player_GetRU(playerIndex).."/"..RUMaxCapacityList[playerIndexList]);
	  UI_SetTextLabelText("UnitCapInfoPopup", "lblResourceUnits", ""..Player_GetRU(playerIndex).."/"..RUMaxCapacityList[playerIndexList]);
  end 

	--in screen buttons
  if UI_ScreenIsActive("NewTaskbar") == 1 and UI_IsNamedElementVisible("NewTaskbar", "btnHide1") == 1 then
    UI_SetScreenVisible( 'New1', 1)				
    if battlearena[1] >= 1 then 
      UI_SetScreenVisible( 'battlearena', 1) 
    end  
		if battlearena[1] == -1 then 
      UI_SetScreenVisible( 'training', 1) 
    end  
  else
    UI_SetScreenVisible( 'New1', 0) 
    UI_SetScreenVisible( 'battlearena', 0) 
		UI_SetScreenVisible( 'training', 0) 
  end
	
	--build queue menu   
  if UI_ScreenIsActive("EventsScreen") == 1 and UI_IsNamedElementVisible("EventsScreen", "listEvents") == 1 then
    UI_SetElementSize("BuildQueueMenu", "buildQueueFrame", 250, 364);    
  else       
    if UI_ScreenIsActive("NewTaskbar") == 1 and UI_IsNamedElementVisible("NewTaskbar", "btnHide1") == 1 then
	    UI_SetElementSize("BuildQueueMenu", "buildQueueFrame", 250, 450); 
	  elseif UI_ScreenIsActive("NewTaskbar") == 1 and UI_IsNamedElementVisible("NewTaskbar", "btnHide2") == 1 then   	  
	    UI_SetElementSize("BuildQueueMenu", "buildQueueFrame", 250, 534);  
	  else
	    UI_SetElementSize("BuildQueueMenu", "buildQueueFrame", 250, 560);  
	  end            
  end
	
	--powerups
  if nrs > 0 then  	
	  for i = 0,nrs-1,1 do
	    if SobGroup_Empty("splitresearchstations"..i) == 0 then	 		
        if Player_HasResearch(SobGroup_OwnedBy("splitresearchstations"..i), "isai" ) == 0 then 
				  powerup("splitresearchstations"..i, "powerup_ru", "powerup_ru_unlocker", 3000, 144, powerup_ru_counter, nrs, "splitresearchstations", 100)
				  powerup("splitresearchstations"..i, "powerup_speed", "powerup_speed_unlocker", 3500, 144, powerup_speed_counter, nrs, "splitresearchstations", 200)
				  powerup("splitresearchstations"..i, "powerup_defense", "powerup_defense_unlocker", 4000, 144, powerup_defense_counter, nrs, "splitresearchstations", 300)
				  powerup("splitresearchstations"..i, "powerup_attack", "powerup_attack_unlocker", 4000, 144, powerup_attack_counter, nrs, "splitresearchstations", 300)
				  powerup("splitresearchstations"..i, "powerup_build", "powerup_build_unlocker", 4500, 144, powerup_build_counter, nrs, "splitresearchstations", 400)
				  powerup("splitresearchstations"..i, "powerup_repair", "powerup_repair_unlocker", 4500, 144, powerup_repair_counter, nrs, "splitresearchstations", 400)  
				end  		  			
	    end	        
	  end  
	end		 
  if nhs > 0 then  	
	  for i = 0,nhs-1,1 do
	    if SobGroup_Empty("splithyperspacestations"..i) == 0 then		
        if Player_HasResearch(SobGroup_OwnedBy("splithyperspacestations"..i), "isai" ) == 0 then 
				  powerup("splithyperspacestations"..i, "powerup_sensor", "powerup_sensor_unlocker", 2000, 300, powerup_sensor_counter, nhs, "splithyperspacestations", 100)				  
				end  		  			
	    end	        
	  end  
	end		  	
	if nps > 0 then  	
	  for i = 0,nps-1,1 do
	    if SobGroup_Empty("splitpowerstations"..i) == 0 then
        if SobGroup_AreAnyOfTheseTypes("splitpowerstations"..i, "hgn_power") == 1 then			
					if Player_HasResearch(SobGroup_OwnedBy("splitpowerstations"..i), "isai" ) == 0 then 
						powerup("splitpowerstations"..i, "powerup_power", "powerup_power_unlocker", 5000, 144, powerup_power_counter, nps, "splitpowerstations", -100)				  
					end 
				end	
	    end	        
	  end  
	end	
	
	--cinamatica
  if UI_IsScreenActive("New3") == 1 and Rule_Exists("Cinematic") == 0 then   	
	  UI_SetScreenVisible("New3", 0)	   
    if Rule_Exists("Cinematic") == 0 then		
			Rule_AddInterval("Cinematic", 0.5) 
		end	
  end
	
  --music player
	if UI_IsScreenActive("MusicMenu") == 1 then   
	  if Rule_Exists("Watch_MusicMenu") == 0 then
			Rule_AddInterval("Watch_MusicMenu", 1.5)	
		end			
  else		
		Rule_Remove("Watch_MusicMenu")	  
  end
	
	--Planets
  if SobGroup_Empty("star_sol") == 0 then	  
    if UI_ScreenIsActive("NewTaskbar") == 1 and UI_ScreenIsActive("planetbar") == 1 and UI_IsNamedElementVisible("NewTaskbar", "btnHide1") == 1 then	
      if levelweareplaying == 1 then	  
			  UI_SetScreenVisible("planet_list_beam", 1) 
			elseif levelweareplaying == 2 then	  
			  UI_SetScreenVisible("planet_list_jf", 1) 
			elseif levelweareplaying == 3 then	  
			  UI_SetScreenVisible("planet_list_sf", 1) 
			elseif levelweareplaying == 4 then	  
			  UI_SetScreenVisible("planet_list_fs", 1) 
			else
        UI_SetScreenVisible("planet_list", 1) 			
			end	
			if UI_IsScreenActive("planet_list_mercury") == 1 then      
				UI_SetScreenVisible("planet_list_mercury", 0)     
				if SobGroup_Empty("planet_mercury") == 0 then	          				
					Camera_FocusSobGroupWithBuffer ("planet_mercury", 42000*2, 1000, 2)    
				end	
			end 
			if UI_IsScreenActive("planet_list_venus") == 1 then      
				UI_SetScreenVisible("planet_list_venus", 0)     
				if SobGroup_Empty("planet_venus") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_venus", 57000*2, 1000, 2)    
				end	
			end  	
			if UI_IsScreenActive("planet_list_earth") == 1 then      
				UI_SetScreenVisible("planet_list_earth", 0)     
				if SobGroup_Empty("planet_earth") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_earth", 57000*2, 1000, 2)    
				end	
			end  	
			if UI_IsScreenActive("planet_list_moon") == 1 then      
				UI_SetScreenVisible("planet_list_moon", 0)     
				if SobGroup_Empty("planet_moon") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_moon", 42000*2, 1000, 2)    
				end	
			end  	
			if UI_IsScreenActive("planet_list_mars") == 1 then      
				UI_SetScreenVisible("planet_list_mars", 0)     
				if SobGroup_Empty("planet_mars") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_mars", 57000*2, 1000, 2)    
				end	
			end  	
			if UI_IsScreenActive("planet_list_jupiter") == 1 then      
				UI_SetScreenVisible("planet_list_jupiter", 0)     
				if SobGroup_Empty("planet_jupiter") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_jupiter", 112000*2, 1000, 2)    
				end	
			end  	
			if UI_IsScreenActive("planet_list_io") == 1 then      
				UI_SetScreenVisible("planet_list_io", 0)     
				if SobGroup_Empty("planet_io") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_io", 42000*2, 1000, 2)    
				end	
			end  
			if UI_IsScreenActive("planet_list_europa") == 1 then      
				UI_SetScreenVisible("planet_list_europa", 0)     
				if SobGroup_Empty("planet_europa") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_europa", 42000*2, 1000, 2)    
				end	
			end 
			if UI_IsScreenActive("planet_list_callisto") == 1 then      
				UI_SetScreenVisible("planet_list_callisto", 0)     
				if SobGroup_Empty("planet_callisto") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_callisto", 42000*2, 1000, 2)    
				end	
			end  	
			if UI_IsScreenActive("planet_list_ganymeade") == 1 then      
				UI_SetScreenVisible("planet_list_ganymeade", 0)     
				if SobGroup_Empty("planet_ganymeade") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_ganymeade", 42000*2, 1000, 2)    
				end	
			end  	
			if UI_IsScreenActive("planet_list_saturn") == 1 then      
				UI_SetScreenVisible("planet_list_saturn", 0)     
				if SobGroup_Empty("planet_saturn") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_saturn", 112000*2, 1000, 2)    
				end	
			end  	
			if UI_IsScreenActive("planet_list_uranus") == 1 then      
				UI_SetScreenVisible("planet_list_uranus", 0)     
				if SobGroup_Empty("planet_uranus") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_uranus", 72000*2, 1000, 2)    
				end	
			end  	
			if UI_IsScreenActive("planet_list_neptune") == 1 then      
				UI_SetScreenVisible("planet_list_neptune", 0)     
				if SobGroup_Empty("planet_neptune") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_neptune", 72000*2, 1000, 2)    
				end	
			end  	
			if UI_IsScreenActive("planet_list_pluto") == 1 then      
				UI_SetScreenVisible("planet_list_pluto", 0)     
				if SobGroup_Empty("planet_pluto") == 0 then		
					Camera_FocusSobGroupWithBuffer ("planet_pluto", 42000*2, 1000, 2)    
				end	
			end
		else   
      UI_SetScreenVisible("planet_list", 0)  
			UI_SetScreenVisible("planet_list_beam", 0) 
			UI_SetScreenVisible("planet_list_jf", 0) 
			UI_SetScreenVisible("planet_list_fs", 0) 
			UI_SetScreenVisible("planet_list_sf", 0) 
			UI_SetScreenVisible("planet_list_mercury", 0)  
			UI_SetScreenVisible("planet_list_venus", 0)  
			UI_SetScreenVisible("planet_list_earth", 0)  
			UI_SetScreenVisible("planet_list_moon", 0)  
			UI_SetScreenVisible("planet_list_mars", 0)  
			UI_SetScreenVisible("planet_list_jupiter", 0)  
			UI_SetScreenVisible("planet_list_io", 0)  
			UI_SetScreenVisible("planet_list_europa", 0)
			UI_SetScreenVisible("planet_list_callisto", 0)  
			UI_SetScreenVisible("planet_list_ganymeade", 0)  
			UI_SetScreenVisible("planet_list_saturn", 0)  
			UI_SetScreenVisible("planet_list_uranus", 0)  
			UI_SetScreenVisible("planet_list_neptune", 0)
			UI_SetScreenVisible("planet_list_pluto", 0)  			
		end	
	end	
	
	--cinamatica on missile
	--nuclear bomb
  if UI_IsScreenActive("tube1") == 1 then      
    UI_SetScreenVisible("tube1", 0)        
    
    --stabilisce quanti sono
    FocusListMissile[playerIndexList].numfocusbomb = 0
    if nnb > 0 then    	      
	    for i = 0,nnb-1,1 do	 
	      if SobGroup_Empty("splitnuclearbombs"..i) == 0 then     
		      if SobGroup_OwnedBy("splitnuclearbombs"..i) == playerIndex then	 
		        if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_nucleartube1,hgn_nucleartube2,hgn_nucleartube3,hgn_nuclearbomb") == 1 then  
		          if SobGroup_IsDocked("splitnuclearbombs"..i) == 0 then  
		        	  FocusListMissile[playerIndexList].numfocusbomb = FocusListMissile[playerIndexList].numfocusbomb + 1
		        	end  
		        end	
		      end
		    end  
	    end
	  else
	    FocusListMissile[playerIndexList].numfocusbomb = 0 
	    FocusListMissile[playerIndexList].actualfocusbomb = 0 
	  end      
	  
	  --focus
	  fcount = 0  
	  if FocusListMissile[playerIndexList].actualfocusbomb >= FocusListMissile[playerIndexList].numfocusbomb then
	    FocusListMissile[playerIndexList].actualfocusbomb = 0
	  end 	  
    if nnb > 0 then    	      
	    for i = 0,nnb-1,1 do	 
	      if SobGroup_Empty("splitnuclearbombs"..i) == 0 then     
		      if SobGroup_OwnedBy("splitnuclearbombs"..i) == playerIndex then	
		        if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_nucleartube1,hgn_nucleartube2,hgn_nucleartube3,hgn_nuclearbomb") == 1 then  
		          if SobGroup_IsDocked("splitnuclearbombs"..i) == 0 then      
				        if fcount == FocusListMissile[playerIndexList].actualfocusbomb then
				          Camera_FocusSobGroupWithBuffer ("splitnuclearbombs"..i, 1000, 100000, 1)
				          FocusListMissile[playerIndexList].actualfocusbomb = FocusListMissile[playerIndexList].actualfocusbomb + 1  
				          break
				        end  	  
				        fcount = fcount+1
				      end  
			      end  
		      end
		    end  
	    end
	  end  	      
  end  

	--missiles 
  if UI_IsScreenActive("tube2") == 1 then      
    UI_SetScreenVisible("tube2", 0)  
     
    --stabilisce quanti sono
    FocusListMissile[playerIndexList].numfocusmissile = 0
    if nnb > 0 then    	      
	    for i = 0,nnb-1,1 do	 
	      if SobGroup_Empty("splitnuclearbombs"..i) == 0 then     
		      if SobGroup_OwnedBy("splitnuclearbombs"..i) == playerIndex then	 
		        if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_torpedotube1,hgn_torpedotube2,hgn_torpedotube3,hgn_viper,hgn_viper_short,hgn_viper_short1,hgn_viper_ws,hgn_viper_ws1,hgn_minermissile,hgn_minermissile1,vgr_cruse,vgr_cruse1,vgr_minermissile") == 1 then  
		          if SobGroup_IsDocked("splitnuclearbombs"..i) == 0 then   
		        	  FocusListMissile[playerIndexList].numfocusmissile = FocusListMissile[playerIndexList].numfocusmissile + 1
		        	end  
		        end	
		      end
		    end  
	    end
	  else
	    FocusListMissile[playerIndexList].numfocusmissile = 0 
	    FocusListMissile[playerIndexList].actualfocusmissile = 0 
	  end      
	  
	  --focus
	  fcount = 0  
	  if FocusListMissile[playerIndexList].actualfocusmissile >= FocusListMissile[playerIndexList].numfocusmissile then
	    FocusListMissile[playerIndexList].actualfocusmissile = 0
	  end 	  
    if nnb > 0 then    	      
	    for i = 0,nnb-1,1 do	 
	      if SobGroup_Empty("splitnuclearbombs"..i) == 0 then     
		      if SobGroup_OwnedBy("splitnuclearbombs"..i) == playerIndex then	
		        if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_torpedotube1,hgn_torpedotube2,hgn_torpedotube3,hgn_viper,hgn_viper_short,hgn_viper_short1,hgn_viper_ws,hgn_viper_ws1,hgn_minermissile,hgn_minermissile1,vgr_cruse,vgr_cruse1,vgr_minermissile") == 1 then  
		          if SobGroup_IsDocked("splitnuclearbombs"..i) == 0 then     
				        if fcount == FocusListMissile[playerIndexList].actualfocusmissile then
				          Camera_FocusSobGroupWithBuffer ("splitnuclearbombs"..i, 1000, 100000, 1)
				          FocusListMissile[playerIndexList].actualfocusmissile = FocusListMissile[playerIndexList].actualfocusmissile + 1  
				          break
				        end  	  
				        fcount = fcount+1
				      end  
			      end  
		      end
		    end  
	    end
	  end      
	      
  end  

	--mines    
  if UI_IsScreenActive("tube3") == 1 then      
    UI_SetScreenVisible("tube3", 0) 
      
    --stabilisce quanti sono
    FocusListMissile[playerIndexList].numfocusmine = 0
    if nnb > 0 then    	      
	    for i = 0,nnb-1,1 do	 
	      if SobGroup_Empty("splitnuclearbombs"..i) == 0 then     
		      if SobGroup_OwnedBy("splitnuclearbombs"..i) == playerIndex then	 
		        if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_tangomine,hgn_tangomine_ws,hgn_tangomine_ws1,vgr_boa") == 1 then    
		          if SobGroup_IsDocked("splitnuclearbombs"..i) == 0 then 
		        	  FocusListMissile[playerIndexList].numfocusmine = FocusListMissile[playerIndexList].numfocusmine + 1
		        	end
		        end	
		      end
		    end  
	    end
	  else
	    FocusListMissile[playerIndexList].numfocusmine = 0 
	    FocusListMissile[playerIndexList].actualfocusmine = 0 
	  end      
	  
	  --focus
	  fcount = 0  
	  if FocusListMissile[playerIndexList].actualfocusmine >= FocusListMissile[playerIndexList].numfocusmine then
	    FocusListMissile[playerIndexList].actualfocusmine = 0
	  end 	  
    if nnb > 0 then    	      
	    for i = 0,nnb-1,1 do	 
	      if SobGroup_Empty("splitnuclearbombs"..i) == 0 then     
		      if SobGroup_OwnedBy("splitnuclearbombs"..i) == playerIndex then	
		        if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_tangomine,hgn_tangomine_ws,hgn_tangomine_ws1,vgr_boa") == 1 then   
		          if SobGroup_IsDocked("splitnuclearbombs"..i) == 0 then     
				        if fcount == FocusListMissile[playerIndexList].actualfocusmine then
				          Camera_FocusSobGroupWithBuffer ("splitnuclearbombs"..i, 1000, 100000, 1)
				          FocusListMissile[playerIndexList].actualfocusmine = FocusListMissile[playerIndexList].actualfocusmine + 1  
				          break
				        end  	  
				        fcount = fcount+1
				      end  
			      end  
		      end
		    end  
	    end
	  end      
	      
  end    
  
	--slow motion
  if UI_IsScreenActive("enablemotion") == 1 then   
    UI_SetButtonPressed('New1', 'btnDisableSlowMotion', 1)  
    Universe_SlowDown(0.995,1)  
    UI_SetScreenVisible("enablemotion", 0) 		
    UI_SetElementVisible("New1", "btnEnableSlowMotion", 0)  
    UI_SetElementVisible("New1", "btnDisableSlowMotion", 1)
  end  
  if UI_IsScreenActive("disablemotion") == 1 then	  
    Universe_SlowDown(1,1)  
    UI_SetScreenVisible("disablemotion", 0)		
    UI_SetElementVisible("New1", "btnDisableSlowMotion", 0)
    UI_SetElementVisible("New1", "btnEnableSlowMotion", 1) 
  end  
	
	--fleet selector
	SobGroup_Clear("selector"..playerIndex)	
	if (UI_IsScreenActive("NewManageMenu") == 1) or (gametime == 98 and year == 0) then			  
		--se il giocatore ha il bottone refresh attivato allora clear la selezione attuale		
		local bloccorefresh = 0
		if UI_IsScreenActive("refresh") == 1 then		  
		  bloccorefresh = 1
		end
		--aggiorna il x.. a destra in basso dell'icona	   	  
	  UpdateIcon("NewManageMenu", "fighter" .. tostring("label"), fighter[playerIndexList])	    
	  UpdateIcon("NewManageMenu", "corvette" .. tostring("label"), corvette[playerIndexList]) 
	  UpdateIcon("NewManageMenu", "frigate" .. tostring("label"), frigate[playerIndexList])  
	  UpdateIcon("NewManageMenu", "platform" .. tostring("label"), platform[playerIndexList])	  
	  UpdateIcon("NewManageMenu", "capital" .. tostring("label"), capital[playerIndexList])
	  UpdateIcon("NewManageMenu", "armedcapital" .. tostring("label"), armedcapital[playerIndexList])
		UpdateIcon("NewManageMenu", "superarmedcapital" .. tostring("label"), superarmedcapital[playerIndexList])
	  UpdateIcon("NewManageMenu", "utility" .. tostring("label"), utility[playerIndexList])	  
	  UpdateIcon("NewManageMenu", "weapon" .. tostring("label"), weapon[playerIndexList])  
	  UpdateIcon("NewManageMenu", "fleet" .. tostring("label"), pilotpopdisplayList[playerIndexList])	  
		--calcola selezioni	  	  
	  for i = 1,143,1 do				  
	    if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, shipList[i]) > 0 then	
				 UpdateIcon("NewManageMenu", shipList[i] .. tostring("label"), (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, shipList[i])))				    
				 UI_SetElementSize("NewManageMenu", shipList[i], 18, 19); 
				 if SobGroup_Count(shipList[i]..playerIndex) == 0 then
					 UI_SetElementEnabled("NewManageMenu", shipList[i], 0)
				 else
					 UI_SetElementEnabled("NewManageMenu", shipList[i], 1)
				 end	    				 
				--se si preme refresh seleziona unità con button pressed							  		  
				if UI_IsScreenActive(shipList[i]) == 1 then			
				  if UI_IsScreenActive("refresh") == 1 or UI_IsScreenActive("autoselection") == 1 then		
				    SobGroup_SobGroupAdd("selector"..playerIndex, shipList[i]..playerIndex)			    
				  end  							  	
				end		
			else			  
			  --UI_SetElementVisible("NewManageMenu", shipList[i], 0); 			
        UI_SetElementSize("NewManageMenu", shipList[i], 0, 0); 				
			end			
		end	
	  --select
    if bloccorefresh == 1 or UI_IsScreenActive("autoselection") == 1 then
      SobGroup_SelectSobGroup("selector"..playerIndex)
	    UI_SetScreenVisible("refresh", 0) 	    
	  end					
 	end		

  --fast clean interface	
	if SobGroup_Selected("tempcleaninterface") == 0 and SobGroup_Empty("tempcleaninterface") == 0 then
		cleaninterface(0, "empty") 
		UI_SetElementVisible("NewTaskbar", "sundamagetextred", 0)
		UI_SetElementVisible("NewTaskbar", "sundamagetextblu", 0)			
		UI_SetElementVisible("NewTaskbar", "sundamagetext", 1)
		UI_SetTextLabelText("NewTaskbar", "sundamagetext", "---");		
	end	
end 

function cleaninterface(number, group) 
  if number > 0 then
	  return nil
	end	
  SobGroup_Clear("tempcleaninterface")   
  SobGroup_SobGroupAdd("tempcleaninterface", group)    
  UI_SetElementVisible("NewTaskbar", "MSframe", 0) 
  UI_SetElementVisible("NewTaskbar", "CSframe", 0) 
  UI_SetElementVisible("NewTaskbar", "OSframe", 0)
  UI_SetElementVisible("NewTaskbar", "Sframe", 0) 
  UI_SetElementVisible("NewTaskbar", "crewcellframe", 0) 
  UI_SetElementVisible("NewTaskbar", "abilities", 0) 
  UI_SetElementVisible("NewTaskbar", "abilities1", 0) 
  UI_SetElementVisible("NewTaskbar", "RSframe", 0)  
  UI_SetElementVisible("NewTaskbar", "PSframe", 0)  
  UI_SetElementVisible("NewTaskbar", "containerframe", 0)
  UI_SetElementVisible("NewTaskbar", "juggernaughtframe", 0)
  UI_SetElementVisible("NewTaskbar", "patcherframe", 0) 
  UI_SetElementVisible("NewTaskbar", "fusionframe", 0)
  UI_SetElementVisible("NewTaskbar", "ruframe", 0) 
  UI_SetElementVisible("NewTaskbar", "MBru", 0) 
  UI_SetElementVisible("NewTaskbar", "minecontainerruframe", 0)
  UI_SetElementVisible("NewTaskbar", "containerruframe", 0)  
  UI_SetElementVisible("NewTaskbar", "medal1", 0) 
  UI_SetElementVisible("NewTaskbar", "medal2", 0) 
  UI_SetElementVisible("NewTaskbar", "medal3", 0) 
  UI_SetElementVisible("NewTaskbar", "medal4", 0) 
  UI_SetElementVisible("NewTaskbar", "medal5", 0) 
  UI_SetElementVisible("NewTaskbar", "torpedo", 0)
  UI_SetElementVisible("NewTaskbar", "callisto", 0)  
  UI_SetElementSize("NewTaskbar", "fusionm", 0, 0);
  UI_SetElementSize("NewTaskbar", "fusionm1", 0, 0);  
  UI_SetElementSize("NewTaskbar", "monster", 0, 0);  
  UI_SetElementSize("NewTaskbar", "freacker", 0, 0);	
  UI_SetTextLabelText("NewTaskbar", "experience", "None"); 	
  UI_SetTextLabelText("NewTaskbar", "efficency", "Full");
  UI_SetTextLabelText("NewTaskbar", "energy", 0);
	enablebtnparade = 0  
  enablebtncallisto = 0    
  enablebtnperforate = 0 
  enablebtnheavyioncannon = 0 
  enablebtnnuclear = 0   	  		 
	SobGroup_TakeDamageRad(group)
	Rule_Remove("cleaninterface")	
end

--MAIN FUNCTION SELECTED INTERFACE---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

function selected()  
  local playerIndex = Universe_CurrentPlayer()    
  local playerIndexList = playerIndex + 1 
	local interfacecleaned = 0 
	local interfacecleanedspecial = 0
	SobGroup_Clear("temp")
  SobGroup_Clear("temp1")
  SobGroup_Clear("temp2")
  UI_SetElementVisible("NewTaskbar", "rank1", 0)
  UI_SetElementVisible("NewTaskbar", "rank2", 0)
  UI_SetElementVisible("NewTaskbar", "rank3", 0)
  UI_SetElementVisible("NewTaskbar", "rank4", 0)
  UI_SetElementVisible("NewTaskbar", "rank5", 0)
  UI_SetElementVisible("NewTaskbar", "rank6", 0)
  UI_SetElementVisible("NewTaskbar", "rank7", 0)	
  UI_SetElementVisible("NewTaskbar", "la", 0)
  UI_SetElementVisible("NewTaskbar", "sa", 0)
  UI_SetElementVisible("NewTaskbar", "ha", 0)
  UI_SetElementVisible("NewTaskbar", "TLS", 0) 
  UI_SetElementVisible("NewTaskbar", "RTS", 0) 
  UI_SetElementVisible("NewTaskbar", "TLSD", 0) 
  UI_SetElementVisible("NewTaskbar", "RTSD", 0) 
  UI_SetElementVisible("NewTaskbar", "POH2", 0) 
  UI_SetElementVisible("NewTaskbar", "POH2D", 0) 
  UI_SetElementVisible("NewTaskbar", "LRS", 0)
  UI_SetElementVisible("NewTaskbar", "LPS", 0)
  UI_SetElementVisible("NewTaskbar", "LWS", 0)
  UI_SetElementVisible("NewTaskbar", "LCS", 0)
  UI_SetElementVisible("NewTaskbar", "LMS", 0)
  UI_SetElementVisible("NewTaskbar", "LRSD", 0)
  UI_SetElementVisible("NewTaskbar", "LPSD", 0)
  UI_SetElementVisible("NewTaskbar", "LWSD", 0)
  UI_SetElementVisible("NewTaskbar", "LCSD", 0)
  UI_SetElementVisible("NewTaskbar", "LMSD", 0)
  UI_SetElementVisible("NewTaskbar", "LMSa", 0)
  UI_SetElementVisible("NewTaskbar", "LMSDa", 0)
  UI_SetElementVisible("NewTaskbar", "BC", 0)
  UI_SetElementVisible("NewTaskbar", "BC1", 0)
  UI_SetElementVisible("NewTaskbar", "BCD", 0)
  UI_SetElementVisible("NewTaskbar", "GCB", 0)  
  UI_SetElementVisible("NewTaskbar", "GCB1", 0)
  UI_SetElementVisible("NewTaskbar", "GCBD", 0)
  UI_SetElementVisible("NewTaskbar", "P", 0)  
  UI_SetElementVisible("NewTaskbar", "P1", 0)
  UI_SetElementVisible("NewTaskbar", "PD", 0)
  UI_SetElementVisible("NewTaskbar", "BS", 0)  
  UI_SetElementVisible("NewTaskbar", "BS1", 0)
  UI_SetElementVisible("NewTaskbar", "BSD", 0)
  UI_SetElementVisible("NewTaskbar", "S", 0)
  UI_SetElementVisible("NewTaskbar", "S1", 0)
  UI_SetElementVisible("NewTaskbar", "SD", 0)  
  UI_SetElementVisible("NewTaskbar", "LJ1", 0)
  UI_SetElementVisible("NewTaskbar", "LJ2", 0)
  UI_SetElementVisible("NewTaskbar", "LJ3", 0)
  UI_SetElementVisible("NewTaskbar", "LJ4", 0)
  UI_SetElementVisible("NewTaskbar", "LJ1D", 0)
  UI_SetElementVisible("NewTaskbar", "LJ2D", 0)
  UI_SetElementVisible("NewTaskbar", "LJ3D", 0)
  UI_SetElementVisible("NewTaskbar", "LJ4D", 0)
  UI_SetElementVisible("NewTaskbar", "LJ1a", 0)
  UI_SetElementVisible("NewTaskbar", "LJ2a", 0)
  UI_SetElementVisible("NewTaskbar", "LJ3a", 0)
  UI_SetElementVisible("NewTaskbar", "LJ4a", 0)
  UI_SetElementVisible("NewTaskbar", "LJ1Da", 0)
  UI_SetElementVisible("NewTaskbar", "LJ2Da", 0)
  UI_SetElementVisible("NewTaskbar", "LJ3Da", 0)
  UI_SetElementVisible("NewTaskbar", "LJ4Da", 0)	
	UI_SetElementSize("NewTaskbar", "subsystem5", 32, 24);
  UI_SetElementSize("NewTaskbar", "subsystem6", 32, 24); 
  UI_SetElementSize("NewTaskbar", "subsystem7", 32, 24); 
  UI_SetElementSize("NewTaskbar", "subsystem8", 32, 24); 
  UI_SetElementSize("NewTaskbar", "subsystem9", 32, 24); 
  UI_SetElementSize("NewTaskbar", "subsystem10", 32, 24); 
  UI_SetElementSize("NewTaskbar", "subsystem11", 32, 24); 
  UI_SetElementSize("NewTaskbar", "subsystem12", 32, 24);	
  if interfacespecialcases[playerIndexList] == 0 then	
		UI_SetElementSize("NewTaskbar", "subsystems", 0, 0);		
	end	
	if UI_IsNamedElementVisible("NewTaskbar", "btnChat") == 0 then
		--may be we're loading a game
		if Universe_GameTime() > 10 then
			FX_StartEvent("vortex", "disk")
		end
		UI_SetElementVisible("NewTaskbar", "btnChat", 1) 
		UI_SetElementVisible("NewTaskbar", "btnObjectives", 1)    		   
		UI_SetElementVisible("NewTaskbar", "btnDiplomacy", 1)    
		UI_SetElementVisible("NewTaskbar", "btnRecall", 1) 	
	end		
	exp1 = 0  
  en = 0   	
  --special cases selected to 0, all special case must be calculated at hwsaving[1] == 2
	if hwsaving[1] == 2 then
	  interfacespecialcases[playerIndexList] = 0
	end
	--unit count per interface update    
  local numeromegaliti = 0
	runselected = 0
  if hwsaving[1] == 0 then 	  
		local np = 0  
		local isfull = 0
		while np < Universe_PlayerCount() do  
      --trova num megaliti		
			if Player_IsAlive(np) == 1 then          
        if isfull == 0 then				
					if Player_FillProximitySobGroup("temp", -1, "Player_Ships"..np, 1000000) == 1 then
						if SobGroup_Empty("temp") == 0 then
							numeromegaliti = SobGroup_Count("temp")
							isfull = 1
						end	
					end 
				end	
				--setta tutte le navi vulnerabili e gestisce ru max
        SobGroup_SetInvulnerability("Player_Ships"..np, 0)
        if ((year==0 and gametime<45) or year>0 or (intro==1 and gametime<90)) then
	        RUList[np+1] = Player_GetRU(np)
	        if RUList[np+1] >= RUMaxCapacityList[np+1] then
	          Player_SetRU(np, RUMaxCapacityList[np+1])	
	        end 
	      end  				
			end
			np = np + 1	
		end   
  end  
  runselected = runselected + numeromegaliti/1.5
  local uc = 0  
  while uc < Universe_PlayerCount() do    
    if Player_IsAlive(uc) == 1 then      
      runselected = runselected + pilotpopdisplayList[uc+1]    
    end
    uc = uc + 1	
  end 
  runselected = (runselected/65)*interface --interface fixed to 1.75 
  if runselected > 3*interface then  
    runselected = 3*interface
  elseif runselected < 0.7*interface then 
    runselected = 0.7*interface  
  end     
  
--Mothership
  if nms > 0 then
		for i = 0,nms-1,1 do
			if SobGroup_Empty("splitmotherships"..i) == 0 then
			  SobGroup_RestrictBuildOption("splitmotherships"..i, "hgn_viper_short1")
				--energy consume
				if hwsaving[1] == 0 then 
					energyConsume("splitmotherships"..i,1,2)		      
					if SobGroup_GetHardPointHealth("splitmotherships"..i, "pg") > 0 then
						FX_StartEvent("splitmotherships"..i, "EnergyLow")				       
					end	
					if SobGroup_GetHardPointHealth("splitmotherships"..i, "pg1") > 0 then
						FX_StartEvent("splitmotherships"..i, "EnergyLow1")				        
					end	
				--sundamage	
				elseif hwsaving[1] == 1 and SobGroup_Empty("star_sol") == 0 then
					sundamageinterface = SobGroup_TakeDamageSol("splitmotherships"..i,0.6,runselected)
				--worldbound				
				elseif SobGroup_InWorldBound("splitmotherships"..i, 0) == 0 then			
					SobGroup_SetHealth("splitmotherships"..i, 0)			
				end			
				if SobGroup_AreAnyOfTheseTypes("splitmotherships"..i, "hgn_mothership") == 1 then  
					SobGroup_ForceStayDockedIfDocking("splitmotherships"..i)
					--orders        
					orders("splitmotherships"..i, "parade",0,0) 
          orders("splitmotherships"..i, "parade_support",0,0)
          orders("splitmotherships"..i, "dock",0,0)	
          orders("splitmotherships"..i, "clear",0,0)					
					orders("splitmotherships"..i, "evacuation",50,5,runselected) 
					orders("splitmotherships"..i, "guard",0,0)      		    	
					--heavy ion cannon	      
					if Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "hic3") == 1 then
						if bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] == 5 then
							Player_UnrestrictBuildOption(SobGroup_OwnedBy("splitmotherships"..i), "Hgn_MothershipCannon4")	
							Player_RestrictBuildOption(SobGroup_OwnedBy("splitmotherships"..i), "Hgn_MothershipCannon3")			               
							if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 2") > 0 then
								SobGroup_SetHardPointHealth("splitmotherships"..i, "Weapon 2", 0)		          
								bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] = 6 
							else
								bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] = 7  			          
							end
						elseif bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] == 6 then  	
							SobGroup_CreateSubSystem("splitmotherships"..i, "Hgn_MothershipCannon4")	
							bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] = 7        
						end         
					elseif Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "hic2") == 1 then
						if bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] == 3 then
							Player_UnrestrictBuildOption(SobGroup_OwnedBy("splitmotherships"..i), "Hgn_MothershipCannon3")	
							Player_RestrictBuildOption(SobGroup_OwnedBy("splitmotherships"..i), "Hgn_MothershipCannon2")			               
							if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 2") > 0 then
								SobGroup_SetHardPointHealth("splitmotherships"..i, "Weapon 2", 0)		          
								bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] = 4 
							else
								bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] = 5  			          
							end
						elseif bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] == 4 then  	
							SobGroup_CreateSubSystem("splitmotherships"..i, "Hgn_MothershipCannon3")	
							bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] = 5        
						end     
					elseif Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "hic1") == 1 then
						if bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] == 1 then
							Player_UnrestrictBuildOption(SobGroup_OwnedBy("splitmotherships"..i), "Hgn_MothershipCannon2")	
							Player_RestrictBuildOption(SobGroup_OwnedBy("splitmotherships"..i), "Hgn_MothershipCannon1")			               
							if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 2") > 0 then
								SobGroup_SetHardPointHealth("splitmotherships"..i, "Weapon 2", 0)		          
								bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] = 2 
							else
								bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] = 3  			          
							end
						elseif bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] == 2 then  	
							SobGroup_CreateSubSystem("splitmotherships"..i, "Hgn_MothershipCannon2")	
							bloccoioncannon[SobGroup_OwnedBy("splitmotherships"..i)+1] = 3        
						end   
					else		      
					end
					--dockaggio con sy	     
					if ec_intro_count >= 12 then
						if SobGroup_IsDoingAbility("splitmotherships"..i, AB_Dock) == 1 then        
							SobGroup_AbilityActivate("splitmotherships"..i, AB_Scuttle, 0)		            
						else
							SobGroup_AbilityActivate("splitmotherships"..i, AB_Scuttle, 1)
						end 		
					end					
					if SobGroup_IsDocked("splitmotherships"..i) == 1 then		
						SobGroup_AbilityActivate("splitmotherships"..i, AB_Scuttle, 0) 
						SobGroup_AbilityActivate("splitmotherships"..i, AB_Move, 0) 
						SobGroup_AbilityActivate("splitmotherships"..i, AB_Attack, 0)		
						if SobGroup_GetHardPointHealth("splitmotherships"..i, "msshield") == 0 then
							SobGroup_CreateSubSystem("splitmotherships"..i, "msshield")
						end	    
						--gestione del danno		        
						if SobGroup_HealthPercentage("splitmotherships"..i) <= 0.25 then
							SobGroup_SetInvulnerability("splitmotherships"..i, 1)	
							mscollateraldamage[SobGroup_OwnedBy("splitmotherships"..i)+1] = 1
						else
							SobGroup_SetInvulnerability("splitmotherships"..i, 0) 			        
							if Universe_GameTime() - lastUniverse_GameTime >= 5 then        
								danno = (1-SobGroup_GetHardPointHealth("splitmotherships"..i, "msshield"))		        
								if Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "CapitalHealthUpgrade3") == 1 then
									danno = danno*0.6	
								elseif Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "CapitalHealthUpgrade2") == 1 then
									danno = danno*0.7
								elseif Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "CapitalHealthUpgrade1") == 1 then
									danno = danno*0.8
								else
									danno = danno*0.9
								end				        
								if danno > 0.05 then
									danno = 0.05 
								end  		        
								SobGroup_SetHealth("splitmotherships"..i, SobGroup_HealthPercentage("splitmotherships"..i) - danno)		   
							end   
							if SobGroup_GetHardPointHealth("splitmotherships"..i, "msshield") < 0.95 then
								SobGroup_SetHardPointHealth("splitmotherships"..i, "msshield", 0.95)
							end	                                
						end      	            
						if bloccomsdocking[SobGroup_OwnedBy("splitmotherships"..i)+1] == 0 then	
							FX_StartEvent("splitmotherships"..i, "Docking") 
							if SobGroup_OwnedBy("splitmotherships"..i) == playerIndex and year > 1 then  		           
								Subtitle_Add(Actor_FleetCommand,"The Mothership is docked and standing down",5)
								Sound_SpeechPlay("data:sound\\speech\\nis\\nis_14b\\56146")
							end
							bloccomsdocking[SobGroup_OwnedBy("splitmotherships"..i)+1] = 1
						end  
						--costruzione battle asset		        	      
						if Player_CanResearch(SobGroup_OwnedBy("splitmotherships"..i), "canbuildpoh2" ) == 1 and SobGroup_GetHardPointHealth("splitmotherships"..i, "poh2") == 0 then
							SobGroup_CreateSubSystem("splitmotherships"..i, "poh2")		        
							SobGroup_CreateSubSystem("splitmotherships"..i, "HGN_SCC_6xAC_Turret_cf1")
							SobGroup_CreateSubSystem("splitmotherships"..i, "HGN_SCC_6xAC_Turret_cf2")
							SobGroup_CreateSubSystem("splitmotherships"..i, "HGN_SCC_6xAC_Turret_cf3")
							SobGroup_CreateSubSystem("splitmotherships"..i, "HGN_SCC_6xAC_Turret_cf4")
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_ms_nuclear")
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_ms_armor_bottom")
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_ms_armor_top")
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_ms_armor_bridge")
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_ms_armor_engine")
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_ms_armor_plates")
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_cf_ionbeamturret2")
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_cf_ionbeamturret3")
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_cf_ionbeamturret4")
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_cf_ionbeamturret5")		         
							Ping_LabelVisible(Ping_AddSobGroup("Adv. Pride of Hiigara (Battle Asset)", "name", "splitmotherships"..i), 1)
							if SobGroup_OwnedBy("splitmotherships"..i) == playerIndex then
								Subtitle_Add(Actor_FleetCommand,"Weapon systems fully charged, Mothership battle asset complete",5)
								Sound_SpeechPlay("data:sound\\speech\\missions\\m_15\\47012")
							end  
						end	       
						lastUniverse_GameTimeMSDock[SobGroup_OwnedBy("splitmotherships"..i)+1] = Universe_GameTime()   
					else	    
						if bloccomsdocking[SobGroup_OwnedBy("splitmotherships"..i)+1] == 1 then	  	            
							bloccomsdocking[SobGroup_OwnedBy("splitmotherships"..i)+1] = 0
							FX_StartEvent("splitmotherships"..i, "Launching")
							if SobGroup_OwnedBy("splitmotherships"..i) == playerIndex and year > 1 then	          
								Subtitle_Add(Actor_FleetCommand,"The Mothership is standing by",5) 
								Sound_SpeechPlay("data:sound\\speech\\nis\\nis_01a\\56013")  
							end  
						end      
						if Universe_GameTime() - lastUniverse_GameTimeMSDock[SobGroup_OwnedBy("splitmotherships"..i)+1] >= 40 then		        
							if SobGroup_GetHardPointHealth("splitmotherships"..i, "msshield") > 0 then
								SobGroup_SetHardPointHealth("splitmotherships"..i, "msshield", 0)   	
							end		      
							if ec_intro_count >= 12 then
								SobGroup_AbilityActivate("splitmotherships"..i, AB_Scuttle, 1) 
							end  
							if ec_intro_count >= 8 then  	
								SobGroup_AbilityActivate("splitmotherships"..i, AB_Move, 1) 
							end  
							if ec_intro_count >= 14 then  	
								SobGroup_AbilityActivate("splitmotherships"..i, AB_Attack, 1)    
							end  
							lastUniverse_GameTimeMSDock[SobGroup_OwnedBy("splitmotherships"..i)+1] = Universe_GameTime()            
						end             
					end		        
					--shield sound
					if SobGroup_IsDoingAbility("splitmotherships"..i, AB_DefenseField) == 1 then
						FX_StartEvent("splitmotherships"..i, "shield")	
					end		    	
				else	
					--orders        
					orders("splitmotherships"..i, "parade",0,0)
					orders("splitmotherships"..i, "clear",0,0)	
          orders("splitmotherships"..i, "dock",0,0)	  					
					orders("splitmotherships"..i, "guard",0,0)   	    
				end    
				--selection
				if SobGroup_Selected("splitmotherships"..i) == 1 then	        		
					cleaninterface(interfacecleaned, "splitmotherships"..i)	
					interfacecleaned=interfacecleaned+1
					--speed 				
					UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitmotherships"..i))));
					--race for taskbar	    
					if Player_GetRace(SobGroup_OwnedBy("splitmotherships"..i)) == Race_Hiigaran then
						UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");	        	    
					else
						UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
					end
					if SobGroup_AreAnyOfTheseTypes("splitmotherships"..i, "hgn_mothership") == 1 then 
						--shield eand heavy ion cannon				
						local shield = 0		
						local heavyioncannon = 0  	  
						if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 1") > 0 then 
							shield = 5000
						end  
						if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 2") > 0 then 
							heavyioncannon = 2500            
						end	       
						if Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "MothershipDEFENSEFIELDTIMEUpgrade3" ) == 1 then
							shield = shield * 1.75            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "MothershipDEFENSEFIELDTIMEUpgrade2" ) == 1 then
							shield = shield * 1.5            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "MothershipDEFENSEFIELDTIMEUpgrade1" ) == 1 then
							shield = shield * 1.25       
						end   	   
						if Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "MothershipSHIELDREGENERATIONRATEUpgrade3" ) == 1 then
							shield = shield * 1.9            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "MothershipSHIELDREGENERATIONRATEUpgrade2" ) == 1 then
							shield = shield * 1.6            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "MothershipSHIELDREGENERATIONRATEUpgrade1" ) == 1 then
							shield = shield * 1.3       
						end   	  
						if Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "hic3" ) == 1 then
							heavyioncannon = heavyioncannon * 1.6            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "hic2" ) == 1 then
							heavyioncannon = heavyioncannon * 1.4            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitmotherships"..i), "hic1" ) == 1 then
							heavyioncannon = heavyioncannon * 1.2       
						end 
						floor(shield)
						floor(heavyioncannon)  	  
						UI_SetElementVisible("NewTaskbar", "MSframe", 1)
						UI_SetTextLabelText("NewTaskbar", "shield", ""..shield);   
						UI_SetTextLabelText("NewTaskbar", "heavyioncannon", ""..heavyioncannon);  
						if ((SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 2") > 0 or SobGroup_GetHardPointHealth("splitmotherships"..i, "k3") > 0) and SobGroup_OwnedBy("splitmotherships"..i) == playerIndex) then  
							enablebtnheavyioncannon = 1					  
						end	 					
						--button parade					
						if SobGroup_IsDocked("splitmotherships"..i) == 0 then
							enablebtnparade = 1	
						end		
						--Weapons set		    	    
						if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 3") > 0 then 
							UI_SetElementVisible("NewTaskbar", "TLS", 1) 					        
						else			    				    
							UI_SetElementVisible("NewTaskbar", "TLSD", 1) 	
						end  				  
						if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 7") > 0 then 
							UI_SetElementVisible("NewTaskbar", "RTS", 1) 					       
						else			    				    
							UI_SetElementVisible("NewTaskbar", "RTSD", 1) 	 
						end  
						if SobGroup_GetHardPointHealth("splitmotherships"..i, "poh2") > 0 then 
							UI_SetElementVisible("NewTaskbar", "POH2", 1) 				    			    
						else			    				    
							UI_SetElementVisible("NewTaskbar", "POH2D", 1) 	
						end  			  				  	  					   
					else	
            if SobGroup_GetHardPointHealth("splitmotherships"..i, "c") > 0 and SobGroup_OwnedBy("splitmotherships"..i) == playerIndex then  
							enablebtnheavyioncannon = 1					  
						end						
					end
					--exp, eff, en				
					exp1 = SobGroup_GetHardPointHealth("splitmotherships"..i, "experience") * 10000		 			  		  		  		  	        
					UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1)); 				  	
					eff = -(floor((1 - SobGroup_GetHardPointHealth("splitmotherships"..i, "efficency")) * 10))		 		  		  		  	        
					if eff <= -1 then	
						UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff); 	
					end			  
					en = SobGroup_GetHardPointHealth("splitmotherships"..i, "en")  
					UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));		
					UI_SetElementSize("NewTaskbar", "subsystems", 210, 48);  
				end 
			end	  
		end	
  end		
  
--Research Station
  if nrs > 0 then  	
	  for i = 0,nrs-1,1 do
	    if SobGroup_Empty("splitresearchstations"..i) == 0 then	
			  SobGroup_ForceStayDockedIfDocking("splitresearchstations"..i)	 
				--orders        
        orders("splitresearchstations"..i, "evacuation",20,2,runselected)       
	      orders("splitresearchstations"..i, "guard",0,0)    
        orders("splitresearchstations"..i, "burnresearch",0,0)    				
				--energy consume
        if hwsaving[1] == 1 then       
          energyConsume("splitresearchstations"..i,1,1)	       
        --sundamage	
        elseif hwsaving[1] == 2 and SobGroup_Empty("star_sol") == 0 then
          sundamageinterface = SobGroup_TakeDamageSol("splitresearchstations"..i,0.8,runselected)				
	      end          	               			    
		    if SobGroup_IsDocked("splitresearchstations"..i) == 1 then	
				  SobGroup_AbilityActivate("splitresearchstations"..i, AB_Scuttle, 0) 
	        SobGroup_AbilityActivate("splitresearchstations"..i, AB_Move, 0) 
          SobGroup_AbilityActivate("splitresearchstations"..i, AB_Attack, 0) 
          SobGroup_AbilityActivate("splitresearchstations"..i, AB_Guard, 0) 
		      if SobGroup_GetHardPointHealth("splitresearchstations"..i, "rsshield") == 0 then
		      	SobGroup_CreateSubSystem("splitresearchstations"..i, "rsshield")
		      end	     
					--gestione del danno		       	     
		      if SobGroup_HealthPercentage("splitresearchstations"..i) <= 0.25 then
		        SobGroup_SetInvulnerability("splitresearchstations"..i, 1)	
		        rscollateraldamage[SobGroup_OwnedBy("splitresearchstations"..i)+1] = 1
		      else
		        SobGroup_SetInvulnerability("splitresearchstations"..i, 0)	       
		        if Universe_GameTime() - lastUniverse_GameTime >= 5 then        
			        danno = (1-SobGroup_GetHardPointHealth("splitresearchstations"..i, "rsshield"))		        
			        if Player_HasResearch(SobGroup_OwnedBy("splitresearchstations"..i), "CapitalHealthUpgrade3") == 1 then
			          danno = danno*0.6	
			        elseif Player_HasResearch(SobGroup_OwnedBy("splitresearchstations"..i), "CapitalHealthUpgrade2") == 1 then
			          danno = danno*0.7
			        elseif Player_HasResearch(SobGroup_OwnedBy("splitresearchstations"..i), "CapitalHealthUpgrade1") == 1 then
			          danno = danno*0.8
			        else
			          danno = danno*0.9
			        end				        
			        if danno > 0.06 then
			          danno = 0.06 
			        end  		        
			        SobGroup_SetHealth("splitresearchstations"..i, SobGroup_HealthPercentage("splitresearchstations"..i) - danno)		   
			      end   
		        if SobGroup_GetHardPointHealth("splitresearchstations"..i, "rsshield") < 0.94 then
		          SobGroup_SetHardPointHealth("splitresearchstations"..i, "rsshield", 0.94)
		        end	       
		      end    	        
		      if bloccorsdocking[SobGroup_OwnedBy("splitresearchstations"..i)+1] == 0 then			        
		        FX_StartEvent("splitresearchstations"..i, "Docking")		        
		        bloccorsdocking[SobGroup_OwnedBy("splitresearchstations"..i)+1] = 1		
		        if SobGroup_OwnedBy("splitresearchstations"..i) == playerIndex and year > 1 then        
              Sound_SpeechPlay("data:sound\\speech\\missions\\m_02\\40101")
            end  
		        --cancella ricerche
			      local iRace = Player_GetRace(SobGroup_OwnedBy("splitresearchstations"..i)) + 1
			      dofilepath([[data:scripts/building and research/]] .. races[iRace][1] .. [[/research.lua]])
						for z, iCount in research do
						  if iCount.Name == "instanttech" then
							  break
							end
					    if Player_HasQueuedResearch(SobGroup_OwnedBy("splitresearchstations"..i), iCount.Name) == 1 and 
					       (iCount.Name ~= "solarshield1" or
					        iCount.Name ~= "solarshield2" or
					        iCount.Name ~= "solarshield3" or
					        iCount.Name ~= "remotespaceshield1" or
					        iCount.Name ~= "remotespaceshield2" or
					        iCount.Name ~= "remotespaceshield2" or					        
					        iCount.Name ~= "ShipyardMAXSHIELDUpgrade1" or
					        iCount.Name ~= "ShipyardMAXSHIELDUpgrade2" or
					        iCount.Name ~= "ShipyardMAXSHIELDUpgrade3" or
					        iCount.Name ~= "ShipyardSHIELDREGENERATIONRATEUpgrade1" or
					        iCount.Name ~= "ShipyardSHIELDREGENERATIONRATEUpgrade2" or
					        iCount.Name ~= "ShipyardSHIELDREGENERATIONRATEUpgrade3" or
					        iCount.Name ~= "ShipyardDEFENSEFIELDTIMEUpgrade1" or
					        iCount.Name ~= "ShipyardDEFENSEFIELDTIMEUpgrade2" or
					        iCount.Name ~= "ShipyardDEFENSEFIELDTIMEUpgrade3") then			
					      Player_CancelResearch(SobGroup_OwnedBy("splitresearchstations"..i), iCount.Name)					     	   
					    end
					  end	                      
		      end 		   
		    elseif bloccorsdocking[SobGroup_OwnedBy("splitresearchstations"..i)+1] == 1 then	  	            
		      bloccorsdocking[SobGroup_OwnedBy("splitresearchstations"..i)+1] = 0
		      FX_StartEvent("splitresearchstations"..i, "Launching")
		    else		      		      
	        SobGroup_AbilityActivate("splitresearchstations"..i, AB_Scuttle, 1)    
	        SobGroup_AbilityActivate("splitresearchstations"..i, AB_Move, 1) 
          SobGroup_AbilityActivate("splitresearchstations"..i, AB_Attack, 1)			   
          SobGroup_AbilityActivate("splitresearchstations"..i, AB_Guard, 1)		
          if SobGroup_GetHardPointHealth("splitresearchstations"..i, "rsshield") > 0 then
		      	SobGroup_SetHardPointHealth("splitresearchstations"..i, "rsshield", 0)   	
		      end		           
		    end  
        --powerups				
		    if SobGroup_GetHardPointHealth("splitresearchstations"..i, "powerup_ru") > 0 or
		       SobGroup_GetHardPointHealth("splitresearchstations"..i, "powerup_defense") > 0 or
		       SobGroup_GetHardPointHealth("splitresearchstations"..i, "powerup_speed") > 0 or
		       SobGroup_GetHardPointHealth("splitresearchstations"..i, "powerup_attack") > 0 or
		       SobGroup_GetHardPointHealth("splitresearchstations"..i, "powerup_build") > 0 or
		       SobGroup_GetHardPointHealth("splitresearchstations"..i, "powerup_repair") > 0 then
		      FX_StartEvent("splitresearchstations"..i, "PowerUp")
		    end		
				--ping
		    if SobGroup_OwnedBy("splitresearchstations"..i) == playerIndex then
			    if Player_HasResearch(SobGroup_OwnedBy("splitresearchstations"..i), "instanttech1" ) == 1 then   	          	 			      
		        g = Ping_AddSobGroup("Future Next", "research", "splitresearchstations"..i)
						Ping_LabelVisible(g, 1)		
						Ping_AddDescription(g, 0, "Research "..researchList[SobGroup_OwnedBy("splitresearchstations"..i) + 1])				           
	        elseif Player_HasResearch(SobGroup_OwnedBy("splitresearchstations"..i), "instanttech" ) == 1 then                			      
		        g = Ping_AddSobGroup("Future Next", "research", "splitresearchstations"..i)
						Ping_LabelVisible(g, 1)		
						Ping_AddDescription(g, 0, "Research "..researchList[SobGroup_OwnedBy("splitresearchstations"..i) + 1].."/450")						                
	        else                		      
		        g = Ping_AddSobGroup("Future Next", "research", "splitresearchstations"..i)
						Ping_LabelVisible(g, 1)		
						Ping_AddDescription(g, 0, "Research "..researchList[SobGroup_OwnedBy("splitresearchstations"..i) + 1].."/125")							         
	        end 	
        end	    		 		    
		    if SobGroup_Selected("splitresearchstations"..i) == 1 then
				  cleaninterface(interfacecleaned, "splitresearchstations"..i)	
          interfacecleaned=interfacecleaned+1 
					--speed
		      UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitresearchstations"..i))));
			    --race for taskbar	    
		      if Player_GetRace(SobGroup_OwnedBy("splitresearchstations"..i)) == Race_Hiigaran then
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");		
            en = SobGroup_GetHardPointHealth("splitresearchstations"..i, "en")		 			  		  		  		  	        
						UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));							
		      else
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
		      end
					--exp, eff, en
			    exp1 = SobGroup_GetHardPointHealth("splitresearchstations"..i, "experience") * 10000			 		  		  		   	   
			    UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1)); 			    
			    eff = -(floor((1 - SobGroup_GetHardPointHealth("splitresearchstations"..i, "efficency")) * 10)) 		 		  		  		  	        
			    if eff <= -1 then	
				    UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff); 		       
				  end  		          				
			    UI_SetElementVisible("NewTaskbar", "RSframe", 1) 	   
          if Player_HasResearch(SobGroup_OwnedBy("splitresearchstations"..i), "instanttech1" ) == 1 then
            UI_SetTextLabelText("NewTaskbar", "rs", ""..researchList[SobGroup_OwnedBy("splitresearchstations"..i) + 1]);                    
          elseif Player_HasResearch(SobGroup_OwnedBy("splitresearchstations"..i), "instanttech" ) == 1 then  
            UI_SetTextLabelText("NewTaskbar", "rs", ""..researchList[SobGroup_OwnedBy("splitresearchstations"..i) + 1].."/450");                   
          else 
            UI_SetTextLabelText("NewTaskbar", "rs", ""..researchList[SobGroup_OwnedBy("splitresearchstations"..i) + 1].."/125");	                
          end 		    		    	  
			    UI_SetElementSize("NewTaskbar", "subsystems", 127, 24);
					--button parade
			    if SobGroup_IsDocked("splitresearchstations"..i) == 0 then
			    	enablebtnparade = 1	
			    end	         
				end		     
	    end	        
	  end  
	end		
	
--Weapon Station 
  if nws > 0 then  	
	  for i = 0,nws-1,1 do
	    if SobGroup_Empty("splitweaponstations"..i) == 0 then	
        SobGroup_ForceStayDockedIfDocking("splitweaponstations"..i)				
				--orders          
        orders("splitweaponstations"..i, "evacuation",30,3,runselected)       
	      orders("splitweaponstations"..i, "guard",0,0) 
	      orders("splitweaponstations"..i, "destroyallguns",0,0)	        	     	
				--energy consume
        if hwsaving[1] == 8 then       
          energyConsume("splitweaponstations"..i,1,1)	 
        --sundamage						
        elseif hwsaving[1] == 9 and SobGroup_Empty("star_sol") == 0 then
          sundamageinterface = SobGroup_TakeDamageSol("splitweaponstations"..i,0.8,runselected)				
	      end     	                			    
		    if SobGroup_IsDocked("splitweaponstations"..i) == 1 then	
				  SobGroup_AbilityActivate("splitweaponstations"..i, AB_Scuttle, 0) 
	        SobGroup_AbilityActivate("splitweaponstations"..i, AB_Move, 0) 
          SobGroup_AbilityActivate("splitweaponstations"..i, AB_Attack, 0) 
          SobGroup_AbilityActivate("splitweaponstations"..i, AB_Guard, 0) 
		      if SobGroup_GetHardPointHealth("splitweaponstations"..i, "wsshield") == 0 then
		      	SobGroup_CreateSubSystem("splitweaponstations"..i, "wsshield")
		      end	     
					--gestione del danno		       	     
		      if SobGroup_HealthPercentage("splitweaponstations"..i) <= 0.25 then
		        SobGroup_SetInvulnerability("splitweaponstations"..i, 1)	
		        wscollateraldamage[SobGroup_OwnedBy("splitweaponstations"..i)+1] = 1
		      else
		        SobGroup_SetInvulnerability("splitweaponstations"..i, 0)	       
		        if Universe_GameTime() - lastUniverse_GameTime >= 5 then        
			        danno = (1-SobGroup_GetHardPointHealth("splitweaponstations"..i, "wsshield"))		        
			        if Player_HasResearch(SobGroup_OwnedBy("splitweaponstations"..i), "CapitalHealthUpgrade3") == 1 then
			          danno = danno*0.6	
			        elseif Player_HasResearch(SobGroup_OwnedBy("splitweaponstations"..i), "CapitalHealthUpgrade2") == 1 then
			          danno = danno*0.7
			        elseif Player_HasResearch(SobGroup_OwnedBy("splitweaponstations"..i), "CapitalHealthUpgrade1") == 1 then
			          danno = danno*0.8
			        else
			          danno = danno*0.9
			        end				        
			        if danno > 0.06 then
			          danno = 0.06 
			        end  		        
			        SobGroup_SetHealth("splitweaponstations"..i, SobGroup_HealthPercentage("splitweaponstations"..i) - danno)		   
			      end   
		        if SobGroup_GetHardPointHealth("splitweaponstations"..i, "wsshield") < 0.94 then
		          SobGroup_SetHardPointHealth("splitweaponstations"..i, "wsshield", 0.94)
		        end	       
		      end		      	        
		      if bloccowsdocking[SobGroup_OwnedBy("splitweaponstations"..i)+1] == 0 then			        
		        FX_StartEvent("splitweaponstations"..i, "Docking")		        
		        bloccowsdocking[SobGroup_OwnedBy("splitweaponstations"..i)+1] = 1		
		        if SobGroup_OwnedBy("splitweaponstations"..i) == playerIndex and year > 1 then        
              --Sound_SpeechPlay("data:sound\\speech\\missions\\m_02\\40101")
            end  		                            
		      end 		   
		    elseif bloccowsdocking[SobGroup_OwnedBy("splitweaponstations"..i)+1] == 1 then	  	            
		      bloccowsdocking[SobGroup_OwnedBy("splitweaponstations"..i)+1] = 0
		      FX_StartEvent("splitweaponstations"..i, "Launching")
		    else      
	        SobGroup_AbilityActivate("splitweaponstations"..i, AB_Scuttle, 1)    
	        SobGroup_AbilityActivate("splitweaponstations"..i, AB_Move, 1) 
          SobGroup_AbilityActivate("splitweaponstations"..i, AB_Attack, 1)			   
          SobGroup_AbilityActivate("splitweaponstations"..i, AB_Guard, 1)		
          if SobGroup_GetHardPointHealth("splitweaponstations"..i, "wsshield") > 0 then
		      	SobGroup_SetHardPointHealth("splitweaponstations"..i, "wsshield", 0)   	
		      end		           
		    end		        
		    if SobGroup_OwnedBy("splitweaponstations"..i) == playerIndex then	 			      
	        g = Ping_AddSobGroup("Force Back", "name", "splitweaponstations"..i)
					Ping_LabelVisible(g, 1)					
				end      				 		    
		    if SobGroup_Selected("splitweaponstations"..i) == 1 then
				  cleaninterface(interfacecleaned, "splitweaponstations"..i)	
          interfacecleaned=interfacecleaned+1
					--speed
		      UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitweaponstations"..i))));
			    --race for taskbar	    
		      if Player_GetRace(SobGroup_OwnedBy("splitweaponstations"..i)) == Race_Hiigaran then
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
		        en = SobGroup_GetHardPointHealth("splitweaponstations"..i, "en")		 			  		  		  		  	        
			      UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));		
		      else
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
		      end
			    exp1 = SobGroup_GetHardPointHealth("splitweaponstations"..i, "experience") * 10000			 		  		  		   	   
			    UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1)); 			    
			    eff = -(floor((1 - SobGroup_GetHardPointHealth("splitweaponstations"..i, "efficency")) * 10)) 		 		  		  		  	        
			    if eff <= -1 then	
				    UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff); 		       
				  end     
			    UI_SetElementSize("NewTaskbar", "subsystems", 96, 24);
			    if SobGroup_IsDocked("splitweaponstations"..i) == 0 then
			    	enablebtnparade = 1	
			    end			              
				end		     
	    end	        
	  end  
	end			
	
--Power Station
  if nps > 0 then       	
	  for i = 0,nps-1,1 do
	    if SobGroup_Empty("splitpowerstations"..i) == 0 then
			  SobGroup_Create("hgn_plasma_inhibitor2"..i)
			  if SobGroup_AreAnyOfTheseTypes("splitpowerstations"..i, "hgn_power") == 1 then
					SobGroup_ForceStayDockedIfDocking("splitpowerstations"..i)
					--orders          
					orders("splitpowerstations"..i, "evacuation",20,2,runselected) 
          orders("splitpowerstations"..i, "advpowerdisruptor",0,0)
          orders("splitpowerstations"..i, "powersave",0,0)  					
          orders("splitpowerstations"..i, "clear",0,0)					
					orders("splitpowerstations"..i, "guard",0,0) 	              
					--energy consume
					if hwsaving[1] == 2 then 
						energyConsume("splitpowerstations"..i,1,1)          
					--sundamage						
					elseif hwsaving[1] == 3 and SobGroup_Empty("star_sol") == 0 then
						sundamageinterface = SobGroup_TakeDamageSol("splitpowerstations"..i,0.8,runselected)				
					end	  		      	          			    
					if SobGroup_IsDocked("splitpowerstations"..i) == 1 then	
						SobGroup_AbilityActivate("splitpowerstations"..i, AB_Scuttle, 0) 
						SobGroup_AbilityActivate("splitpowerstations"..i, AB_Move, 0) 
						SobGroup_AbilityActivate("splitpowerstations"..i, AB_Attack, 0) 
						SobGroup_AbilityActivate("splitpowerstations"..i, AB_Guard, 0) 
						if SobGroup_GetHardPointHealth("splitpowerstations"..i, "psshield") == 0 then
							SobGroup_CreateSubSystem("splitpowerstations"..i, "psshield")
						end	     
						--gestione del danno		       	     
						if SobGroup_HealthPercentage("splitpowerstations"..i) <= 0.25 then
							SobGroup_SetInvulnerability("splitpowerstations"..i, 1)	
							pscollateraldamage[SobGroup_OwnedBy("splitpowerstations"..i)+1] = 1
						else
							SobGroup_SetInvulnerability("splitpowerstations"..i, 0)	       
							if Universe_GameTime() - lastUniverse_GameTime >= 5 then        
								danno = (1-SobGroup_GetHardPointHealth("splitpowerstations"..i, "psshield"))		        
								if Player_HasResearch(SobGroup_OwnedBy("splitpowerstations"..i), "CapitalHealthUpgrade3") == 1 then
									danno = danno*0.6	
								elseif Player_HasResearch(SobGroup_OwnedBy("splitpowerstations"..i), "CapitalHealthUpgrade2") == 1 then
									danno = danno*0.7
								elseif Player_HasResearch(SobGroup_OwnedBy("splitpowerstations"..i), "CapitalHealthUpgrade1") == 1 then
									danno = danno*0.8
								else
									danno = danno*0.9
								end				        
								if danno > 0.06 then
									danno = 0.06 
								end  		        
								SobGroup_SetHealth("splitpowerstations"..i, SobGroup_HealthPercentage("splitpowerstations"..i) - danno)		   
							end   
							if SobGroup_GetHardPointHealth("splitpowerstations"..i, "psshield") < 0.94 then
								SobGroup_SetHardPointHealth("splitpowerstations"..i, "psshield", 0.94)
							end	       
						end     		      	        
						if bloccopsdocking[SobGroup_OwnedBy("splitpowerstations"..i)+1] == 0 then			        
							FX_StartEvent("splitpowerstations"..i, "Docking")		        
							bloccopsdocking[SobGroup_OwnedBy("splitpowerstations"..i)+1] = 1		
							if SobGroup_OwnedBy("splitpowerstations"..i) == playerIndex and year > 1 then        
								Sound_SpeechPlay("data:sound\\speech\\nis\\nis_14b\\56145")
							end          
						end             
					elseif bloccopsdocking[SobGroup_OwnedBy("splitpowerstations"..i)+1] == 1 then	  	            
						bloccopsdocking[SobGroup_OwnedBy("splitpowerstations"..i)+1] = 0
						FX_StartEvent("splitpowerstations"..i, "Launching")
					else	      
						SobGroup_AbilityActivate("splitpowerstations"..i, AB_Scuttle, 1)    
						SobGroup_AbilityActivate("splitpowerstations"..i, AB_Move, 1) 
						SobGroup_AbilityActivate("splitpowerstations"..i, AB_Attack, 1)			   
						SobGroup_AbilityActivate("splitpowerstations"..i, AB_Guard, 1)		
						if SobGroup_GetHardPointHealth("splitpowerstations"..i, "psshield") > 0 then
							SobGroup_SetHardPointHealth("splitpowerstations"..i, "psshield", 0)   	
						end		           
					end 
					if SobGroup_GetHardPointHealth("splitpowerstations"..i, "powerup_power") > 0 then
						FX_StartEvent("splitpowerstations"..i, "PowerUp")
					end		
					if SobGroup_GetHardPointHealth("splitpowerstations"..i, "hgn_orders_advpowerdisruptor") > 0 then
						FX_StartEvent("splitpowerstations"..i, "PwrLoc")
					end					
					if SobGroup_Selected("splitpowerstations"..i) == 1 then		           				
						cleaninterface(interfacecleaned, "splitpowerstations"..i)	
						interfacecleaned=interfacecleaned+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitpowerstations"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitpowerstations"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
							en = SobGroup_GetHardPointHealth("splitpowerstations"..i, "en")		 			  		  		  		  	        
							UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));		
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end
						exp1 = SobGroup_GetHardPointHealth("splitpowerstations"..i, "experience") * 10000			 		  		  		   	   
						UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1)); 			    
						eff = -(floor((1 - SobGroup_GetHardPointHealth("splitpowerstations"..i, "efficency")) * 10)) 		 		  		  		  	        
						if eff <= -1 then	
							UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff); 		       
						end				    
						UI_SetElementVisible("NewTaskbar", "PSframe", 1)					
						UI_SetTextLabelText("NewTaskbar", "ps", ""..floor(LastpowerList[SobGroup_OwnedBy("splitpowerstations"..i) + 1]).."/"..floor(LastpowerListStored[SobGroup_OwnedBy("splitpowerstations"..i) + 1]).."/"..floor(LastpowerListMax[SobGroup_OwnedBy("splitpowerstations"..i) + 1]));  					
						UI_SetElementSize("NewTaskbar", "subsystems", 210, 48);
						if SobGroup_IsDocked("splitpowerstations"..i) == 0 then
							enablebtnparade = 1	
						end			             
					end	
				elseif SobGroup_AreAnyOfTheseTypes("splitpowerstations"..i, "hgn_aditional_core") == 1 then
				  SobGroup_ForceStayDockedIfDocking("splitpowerstations"..i)					              
					--energy consume
					if hwsaving[1] == 2 then 
						energyConsume("splitpowerstations"..i,1,1)          
					--sundamage						
					elseif hwsaving[1] == 3 and SobGroup_Empty("star_sol") == 0 then
						sundamageinterface = SobGroup_TakeDamageSol("splitpowerstations"..i,0.8,runselected)				
					end			
					if SobGroup_Selected("splitpowerstations"..i) == 1 then		           				
						cleaninterface(interfacecleaned, "splitpowerstations"..i)	
						interfacecleaned=interfacecleaned+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitpowerstations"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitpowerstations"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
							en = SobGroup_GetHardPointHealth("splitpowerstations"..i, "en")		 			  		  		  		  	        
							UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));		
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end
						exp1 = SobGroup_GetHardPointHealth("splitpowerstations"..i, "experience") * 10000			 		  		  		   	   
						UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1)); 			    
						eff = -(floor((1 - SobGroup_GetHardPointHealth("splitpowerstations"..i, "efficency")) * 10)) 		 		  		  		  	        
						if eff <= -1 then	
							UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff); 		       
						end				    
						UI_SetElementVisible("NewTaskbar", "PSframe", 1)					
						UI_SetTextLabelText("NewTaskbar", "ps", ""..floor(LastpowerList[SobGroup_OwnedBy("splitpowerstations"..i) + 1]).."/"..floor(LastpowerListStored[SobGroup_OwnedBy("splitpowerstations"..i) + 1]).."/"..floor(LastpowerListMax[SobGroup_OwnedBy("splitpowerstations"..i) + 1]));  					
						if SobGroup_IsDocked("splitpowerstations"..i) == 0 then
							enablebtnparade = 1	
						end			             
					end	
				else
          local hasinhibitor = 0				
          if SobGroup_GetActualSpeed("splitpowerstations"..i) >	0.25 and SobGroup_IsDoingAbility("splitpowerstations"..i, AB_Parade) == 0 then			
					  SobGroup_AbilityActivate("splitpowerstations"..i, AB_Move, 0)
						SobGroup_AbilityActivate("splitpowerstations"..i, AB_Parade, 0)
					elseif SobGroup_GetActualSpeed("splitpowerstations"..i) <= 0 then
					  if SobGroup_CanDoAbility("splitpowerstations"..i, AB_Move) == 0 then
							SobGroup_AbilityActivate("splitpowerstations"..i, AB_Lights, 1)
              hasinhibitor = 1              							
              if SobGroup_Empty("hgn_plasma_inhibitor2"..i) == 1 then							
								local sob_position = SobGroup_GetPosition("splitpowerstations"..i)						
								Volume_AddSphere("hi"..i,{sob_position[1],sob_position[2],sob_position[3],},10)
								SobGroup_SpawnNewShipInSobGroup(SobGroup_OwnedBy("splitpowerstations"..i), "hgn_plasma_inhibitor2", "hi"..i, "hgn_plasma_inhibitor2"..i, "hi"..i)
						  end
						end	
					else            					
          end								
				  --energy consume
					if hwsaving[1] == 2 then 
						energyConsume("splitpowerstations"..i,1+hasinhibitor,0)          
					--sundamage						
					elseif hwsaving[1] == 3 and SobGroup_Empty("star_sol") == 0 then
						sundamageinterface = SobGroup_TakeDamageSol("splitpowerstations"..i,0.8,runselected)				
					end			
					if SobGroup_Selected("splitpowerstations"..i) == 1 then		           				
						cleaninterface(interfacecleaned, "splitpowerstations"..i)	
						interfacecleaned=interfacecleaned+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitpowerstations"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitpowerstations"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");	
              en = SobGroup_GetHardPointHealth("splitpowerstations"..i, "en")		 			  		  		  		  	        
							UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));								
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end
						exp1 = SobGroup_GetHardPointHealth("splitpowerstations"..i, "experience") * 10000			 		  		  		   	   
						UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1)); 			    
						eff = -(floor((1 - SobGroup_GetHardPointHealth("splitpowerstations"..i, "efficency")) * 10)) 		 		  		  		  	        
						if eff <= -1 then	
							UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff); 		       
						end						           
					end	
				end
			else
			  SobGroup_TakeDamage("hgn_plasma_inhibitor2"..i, 1)  
        Volume_Delete("hi"..i)				
	    end	        
	  end  
	end			
		     	
--Crew Station
  if ncs > 0 then
	  for i = 0,ncs-1,1 do
	    if SobGroup_Empty("splitcrewstations"..i) == 0 then	 
			  SobGroup_ForceStayDockedIfDocking("splitcrewstations"..i)
				--orders        
        orders("splitcrewstations"..i, "clear",0,0)         
	      orders("splitcrewstations"..i, "guard",0,0) 
	      orders("splitcrewstations"..i, "recruitement",0,0)          	    	    
				--energy consume
        if hwsaving[1] == 3 then 
          energyConsume("splitcrewstations"..i,1,2)	       
        --sundamage						
        elseif hwsaving[1] == 4 and SobGroup_Empty("star_sol") == 0 then
          sundamageinterface = SobGroup_TakeDamageSol("splitcrewstations"..i,0.8,runselected)				
	      end   
        --crew cell dock instant				
		    if SobGroup_IsDoingAbility("splitcrewstations"..i, abilityList[5]) == 1 or
		       SobGroup_IsDoingAbility("splitcrewstations"..i, abilityList[6]) == 1 or
		       SobGroup_IsDoingAbility("splitcrewstations"..i, abilityList[7]) == 1 or
		       SobGroup_IsDoingAbility("splitcrewstations"..i, abilityList[9]) == 1 or		       
		       SobGroup_IsDoingAbility("splitcrewstations"..i, abilityList[24]) == 1 or
		       SobGroup_IsDocked("splitcrewstations"..i) == 1 then 
		      SobGroup_DockSobGroupInstant("hgn_transportcell"..SobGroup_OwnedBy("splitcrewstations"..i), "splitcrewstations"..i) 
		    end 
				--blocco e sblocco moduli ru su support per costruzione rank
        if Player_GetRU(SobGroup_OwnedBy("splitcrewstations"..i)) >= 2100 then	    
			    if SobGroup_Empty("supporter"..SobGroup_OwnedBy("splitcrewstations"..i)) == 0 and SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "2000ru") == 0 then   
			      SobGroup_CreateSubSystem("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "2000ru")            
			    end 
			  elseif SobGroup_IsBuilding("splitcrewstations"..i, "hgn_isLieutenantCore") == 0 then   
			    SobGroup_SetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "2000ru", 0)  	        
			  end				  
			  if Player_GetRU(SobGroup_OwnedBy("splitcrewstations"..i)) >= 3100 then	    
			    if SobGroup_Empty("supporter"..SobGroup_OwnedBy("splitcrewstations"..i)) == 0 and SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "3000ru") == 0 then   
			      SobGroup_CreateSubSystem("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "3000ru")            
			    end 
			  elseif SobGroup_IsBuilding("splitcrewstations"..i, "hgn_isCommanderCore") == 0 then   	    
			    SobGroup_SetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "3000ru", 0)  	        
			  end					  
			  if Player_GetRU(SobGroup_OwnedBy("splitcrewstations"..i)) >= 4100 then	    
			    if SobGroup_Empty("supporter"..SobGroup_OwnedBy("splitcrewstations"..i)) == 0 and SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "4000ru") == 0 then   
			      SobGroup_CreateSubSystem("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "4000ru")            
			    end 
			  elseif SobGroup_IsBuilding("splitcrewstations"..i, "hgn_isCaptainCore") == 0 then   	    
			    SobGroup_SetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "4000ru", 0)  	        
			  end					  
			  if Player_GetRU(SobGroup_OwnedBy("splitcrewstations"..i)) >= 5100 then	    
			    if SobGroup_Empty("supporter"..SobGroup_OwnedBy("splitcrewstations"..i)) == 0 and SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "5000ru") == 0 then   
			      SobGroup_CreateSubSystem("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "5000ru")            
			    end 
			  elseif SobGroup_IsBuilding("splitcrewstations"..i, "hgn_isCommodoreCore") == 0 then   	    
			    SobGroup_SetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "5000ru", 0)  	        
			  end				  
			  if Player_GetRU(SobGroup_OwnedBy("splitcrewstations"..i)) >= 6100 then	    
			    if SobGroup_Empty("supporter"..SobGroup_OwnedBy("splitcrewstations"..i)) == 0 and SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "6000ru") == 0 then   
			      SobGroup_CreateSubSystem("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "6000ru")            
			    end 
			  elseif SobGroup_IsBuilding("splitcrewstations"..i, "hgn_isAdmiralCore") == 0 then   	    
			    SobGroup_SetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "6000ru", 0)  	        
			  end			  
			  if Player_GetRU(SobGroup_OwnedBy("splitcrewstations"..i)) >= 7100 then	    
			    if SobGroup_Empty("supporter"..SobGroup_OwnedBy("splitcrewstations"..i)) == 0 and SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "7000ru") == 0 then   
			      SobGroup_CreateSubSystem("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "7000ru")            
			    end 
			  elseif SobGroup_IsBuilding("splitcrewstations"..i, "hgn_isFleetAdmiralCore") == 0 then   	    
			    SobGroup_SetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "7000ru", 0)  	        
			  end		    
        --utilizza rankflag, una volta acquisito il grado non viene più perso
				--if SobGroup_GetHardPointHealth("splitcrewstations"..i, "isEnsign") == 0 and (rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] >= 1 or rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] == 0) then
					--SobGroup_CreateSubSystem("splitcrewstations"..i, "isEnsignCore")    
				--end 		       				
				if SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "isLieutenant") > 0 then
					if SobGroup_GetHardPointHealth("splitcrewstations"..i, "isLieutenant") == 0 and (rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] >= 2 or rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] == 0) then
						SobGroup_CreateSubSystem("splitcrewstations"..i, "hgn_isLieutenantCore")    
					end 
				end 		      
				if SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "isCommander") > 0 then
					if SobGroup_GetHardPointHealth("splitcrewstations"..i, "isCommander") == 0 and (rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] >= 3 or rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] == 0) then
						SobGroup_CreateSubSystem("splitcrewstations"..i, "hgn_isCommanderCore")  	   
					end     
				end 	      
				if SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "isCaptain") > 0 then
					if SobGroup_GetHardPointHealth("splitcrewstations"..i, "isCaptain") == 0 and (rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] >= 4 or rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] == 0) then
						SobGroup_CreateSubSystem("splitcrewstations"..i, "hgn_isCaptainCore") 
					end  	       
				end 		      
				if SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "isCommodore") > 0 then
					if SobGroup_GetHardPointHealth("splitcrewstations"..i, "isCommodore") == 0 and (rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] >= 5 or rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] == 0) then
						SobGroup_CreateSubSystem("splitcrewstations"..i, "hgn_isCommodoreCore") 	
					end        
				end     
				if SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "isAdmiral") > 0 then
					if SobGroup_GetHardPointHealth("splitcrewstations"..i, "isAdmiral") == 0 and (rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] >= 6 or rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] == 0) then
						SobGroup_CreateSubSystem("splitcrewstations"..i, "hgn_isAdmiralCore")  	 
					end           
				end		      
				if SobGroup_GetHardPointHealth("supporter"..SobGroup_OwnedBy("splitcrewstations"..i), "isFleetAdmiral") > 0 then
					if SobGroup_GetHardPointHealth("splitcrewstations"..i, "isFleetAdmiral") == 0 and (rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] >= 7 or rankflag[SobGroup_OwnedBy("splitcrewstations"..i)+1] == 0) then
						SobGroup_CreateSubSystem("splitcrewstations"..i, "hgn_isFleetAdmiralCore") 	
					end        
				end  
	      if SobGroup_IsDocked("splitcrewstations"..i) == 1 then	
          SobGroup_AbilityActivate("splitcrewstations"..i, AB_Scuttle, 0)   
	        SobGroup_AbilityActivate("splitcrewstations"..i, AB_Move, 0) 
          SobGroup_AbilityActivate("splitcrewstations"..i, AB_Attack, 0)  
          SobGroup_AbilityActivate("splitcrewstations"..i, AB_Guard, 0)  	      
		      if SobGroup_GetHardPointHealth("splitcrewstations"..i, "csshield") == 0 then
		      	SobGroup_CreateSubSystem("splitcrewstations"..i, "csshield")
		      end	   
					--gestione del danno		         	    
		      if SobGroup_HealthPercentage("splitcrewstations"..i) <= 0.25 then
		        SobGroup_SetInvulnerability("splitcrewstations"..i, 1)
		        cscollateraldamage[SobGroup_OwnedBy("splitcrewstations"..i)+1] = 1
		      else
		        SobGroup_SetInvulnerability("splitcrewstations"..i, 0)  	
		        if Universe_GameTime() - lastUniverse_GameTime >= 5 then        
			        danno = (1-SobGroup_GetHardPointHealth("splitcrewstations"..i, "csshield"))		        
			        if Player_HasResearch(SobGroup_OwnedBy("splitcrewstations"..i), "CapitalHealthUpgrade3") == 1 then
			          danno = danno*0.6	
			        elseif Player_HasResearch(SobGroup_OwnedBy("splitcrewstations"..i), "CapitalHealthUpgrade2") == 1 then
			          danno = danno*0.7
			        elseif Player_HasResearch(SobGroup_OwnedBy("splitcrewstations"..i), "CapitalHealthUpgrade1") == 1 then
			          danno = danno*0.8
			        else
			          danno = danno*0.9
			        end				        
			        if danno > 0.06 then
			          danno = 0.06 
			        end  		        
			        SobGroup_SetHealth("splitcrewstations"..i, SobGroup_HealthPercentage("splitcrewstations"..i) - danno)		   
			      end   
		        if SobGroup_GetHardPointHealth("splitcrewstations"..i, "csshield") < 0.94 then
		          SobGroup_SetHardPointHealth("splitcrewstations"..i, "csshield", 0.94)
		        end	   
		      end 		      	         
		      if bloccocsdocking[SobGroup_OwnedBy("splitcrewstations"..i)+1] == 0 then	
		        FX_StartEvent("splitcrewstations"..i, "Docking")		        
		        bloccocsdocking[SobGroup_OwnedBy("splitcrewstations"..i)+1] = 1		
		        if SobGroup_OwnedBy("splitcrewstations"..i) == playerIndex and year > 1 then        
              Sound_SpeechPlay("data:sound\\speech\\missions\\m_02\\40100")
            end  
		      end   	      		      	                
		    elseif bloccocsdocking[SobGroup_OwnedBy("splitcrewstations"..i)+1] == 1 then	  	            
		      bloccocsdocking[SobGroup_OwnedBy("splitcrewstations"..i)+1] = 0
		      FX_StartEvent("splitcrewstations"..i, "Launching")	  
		    else        
	        SobGroup_AbilityActivate("splitcrewstations"..i, AB_Scuttle, 1)   
	        SobGroup_AbilityActivate("splitcrewstations"..i, AB_Move, 1) 
          SobGroup_AbilityActivate("splitcrewstations"..i, AB_Attack, 1)  
          SobGroup_AbilityActivate("splitcrewstations"..i, AB_Guard, 1)   
          if SobGroup_GetHardPointHealth("splitcrewstations"..i, "csshield") > 0 then
		      	SobGroup_SetHardPointHealth("splitcrewstations"..i, "csshield", 0)   	
		      end	          
		    end  		
		    if SobGroup_OwnedBy("splitcrewstations"..i) == playerIndex then	 			      
	        g = Ping_AddSobGroup("Babel East", "crew", "splitcrewstations"..i)
					Ping_LabelVisible(g, 1)		
					Ping_AddDescription(g, 0, "Crew "..pilotpopList[SobGroup_OwnedBy("splitcrewstations"..i) + 1].."/"..pilotrecruitList[SobGroup_OwnedBy("splitcrewstations"..i) + 1].."/"..pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1])
					Ping_AddDescription(g, 1, "Officers "..officerpopList[SobGroup_OwnedBy("splitcrewstations"..i) + 1].."/"..officerrecruitList[SobGroup_OwnedBy("splitcrewstations"..i) + 1].."/"..officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1])		
				end      			    
		    if SobGroup_Selected("splitcrewstations"..i) == 1 then
				  cleaninterface(interfacecleaned, "splitcrewstations"..i)	
          interfacecleaned=interfacecleaned+1
					--speed
		      UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitcrewstations"..i))));
		      --race for taskbar	    
		      if Player_GetRace(SobGroup_OwnedBy("splitcrewstations"..i)) == Race_Hiigaran then
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
		        en = SobGroup_GetHardPointHealth("splitcrewstations"..i, "en")		 			  		  		  		  	        
			      UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));		
		      else
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
		      end		   
		      --rank su taskbar
		      if gradoList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] == "ENSIGN       " then
		        UI_SetElementVisible("NewTaskbar", "rank1", 1)		
		        UI_SetElementVisible("NewTaskbar", "rank2", 0)
		        UI_SetElementVisible("NewTaskbar", "rank3", 0)
		        UI_SetElementVisible("NewTaskbar", "rank4", 0)
		        UI_SetElementVisible("NewTaskbar", "rank5", 0)
		        UI_SetElementVisible("NewTaskbar", "rank6", 0)
		        UI_SetElementVisible("NewTaskbar", "rank7", 0)      
		      elseif gradoList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] == "LIEUTENANT   " then 
		        UI_SetElementVisible("NewTaskbar", "rank1", 0)		
		        UI_SetElementVisible("NewTaskbar", "rank2", 1)
		        UI_SetElementVisible("NewTaskbar", "rank3", 0)
		        UI_SetElementVisible("NewTaskbar", "rank4", 0)
		        UI_SetElementVisible("NewTaskbar", "rank5", 0)
		        UI_SetElementVisible("NewTaskbar", "rank6", 0)
		        UI_SetElementVisible("NewTaskbar", "rank7", 0)  
		      elseif gradoList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] == "COMMANDER    " then 
		        UI_SetElementVisible("NewTaskbar", "rank1", 0)		
		        UI_SetElementVisible("NewTaskbar", "rank2", 0)
		        UI_SetElementVisible("NewTaskbar", "rank3", 1)
		        UI_SetElementVisible("NewTaskbar", "rank4", 0)
		        UI_SetElementVisible("NewTaskbar", "rank5", 0)
		        UI_SetElementVisible("NewTaskbar", "rank6", 0)
		        UI_SetElementVisible("NewTaskbar", "rank7", 0)  
		      elseif gradoList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] == "CAPTAIN      " then 
		        UI_SetElementVisible("NewTaskbar", "rank1", 0)		
		        UI_SetElementVisible("NewTaskbar", "rank2", 0)
		        UI_SetElementVisible("NewTaskbar", "rank3", 0)
		        UI_SetElementVisible("NewTaskbar", "rank4", 1)
		        UI_SetElementVisible("NewTaskbar", "rank5", 0)
		        UI_SetElementVisible("NewTaskbar", "rank6", 0)
		        UI_SetElementVisible("NewTaskbar", "rank7", 0)  
		      elseif gradoList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] == "COMMODORE    " then 
		        UI_SetElementVisible("NewTaskbar", "rank1", 0)		
		        UI_SetElementVisible("NewTaskbar", "rank2", 0)
		        UI_SetElementVisible("NewTaskbar", "rank3", 0)
		        UI_SetElementVisible("NewTaskbar", "rank4", 0)
		        UI_SetElementVisible("NewTaskbar", "rank5", 1)
		        UI_SetElementVisible("NewTaskbar", "rank6", 0)
		        UI_SetElementVisible("NewTaskbar", "rank7", 0)  
		      elseif gradoList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] == "ADMIRAL      " then 
		        UI_SetElementVisible("NewTaskbar", "rank1", 0)		
		        UI_SetElementVisible("NewTaskbar", "rank2", 0)
		        UI_SetElementVisible("NewTaskbar", "rank3", 0)
		        UI_SetElementVisible("NewTaskbar", "rank4", 0)
		        UI_SetElementVisible("NewTaskbar", "rank5", 0)
		        UI_SetElementVisible("NewTaskbar", "rank6", 1)
		        UI_SetElementVisible("NewTaskbar", "rank7", 0)  
		      elseif gradoList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] == "FLEET ADMIRAL" then 
		        UI_SetElementVisible("NewTaskbar", "rank1", 0)		
		        UI_SetElementVisible("NewTaskbar", "rank2", 0)
		        UI_SetElementVisible("NewTaskbar", "rank3", 0)
		        UI_SetElementVisible("NewTaskbar", "rank4", 0)
		        UI_SetElementVisible("NewTaskbar", "rank5", 0)
		        UI_SetElementVisible("NewTaskbar", "rank6", 0)
		        UI_SetElementVisible("NewTaskbar", "rank7", 1)  
		      end		      		  
				  UI_SetElementVisible("NewTaskbar", "CSframe", 1)  
				  UI_SetTextLabelText("NewTaskbar", "cscrew", ""..pilotpopList[SobGroup_OwnedBy("splitcrewstations"..i) + 1].."/"..pilotrecruitList[SobGroup_OwnedBy("splitcrewstations"..i) + 1].."/"..pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1]);    		  	
			  	UI_SetTextLabelText("NewTaskbar", "csofficer", ""..officerpopList[SobGroup_OwnedBy("splitcrewstations"..i) + 1].."/"..officerrecruitList[SobGroup_OwnedBy("splitcrewstations"..i) + 1].."/"..officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1]);		    
			    UI_SetTextLabelText("NewTaskbar", "cscrewcell", ""..Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitcrewstations"..i), "hgn_transportcell"));	    			    
			    exp1 = SobGroup_GetHardPointHealth("splitcrewstations"..i, "experience") * 10000			      
				  UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1));  				  
				  eff = -(floor((1 - SobGroup_GetHardPointHealth("splitcrewstations"..i, "efficency")) * 10)) 		      
				  if eff <= -1 then	
				    UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff);    		    		  
				  end	  
				  UI_SetElementSize("NewTaskbar", "subsystems", 210, 48); 
				  if SobGroup_IsDocked("splitcrewstations"..i) == 0 then 
				  	enablebtnparade = 1		
				  end			           
				end  			
			end	
		end	
	end		    
	
--Crew/Evacuation Cell	
	for pi = 0,5,1 do
	  if hwsaving[1] == 6 then
			if ntc[pi+1] > 0 then 
        for i = 0,(ntc[pi+1]-1),1 do  
					if SobGroup_Empty("splitothers"..pi .. tostring(i)) == 0 then 					
						--sundamage	
						if SobGroup_Empty("star_sol") == 0 then        
							sundamageinterface = SobGroup_TakeDamageSol("splitothers"..pi .. tostring(i),0.6,runselected)          	
						end							
						if SobGroup_Selected("splitothers"..pi .. tostring(i)) == 1 then		
							cleaninterface(interfacecleaned, "splitothers"..pi .. tostring(i))	
							interfacecleaned=interfacecleaned+1
							--speed
							UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitothers"..pi .. tostring(i)))));
							--race for taskbar	    
							if Player_GetRace(SobGroup_OwnedBy("splitothers"..pi .. tostring(i))) == Race_Hiigaran then
								UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
							else
								UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
							end			  
							UI_SetElementVisible("NewTaskbar", "crewcellframe", 1)
              if SobGroup_AreAnyOfTheseTypes("splitothers"..pi .. tostring(i), "evac") == 1 then							
								pilot = SobGroup_GetHardPointHealth("splitothers"..pi .. tostring(i), "pilot") * 100			   		       	      
								UI_SetTextLabelText("NewTaskbar", "pilotcrewcell", ""..floor(pilot));    
								officer = SobGroup_GetHardPointHealth("splitothers"..pi .. tostring(i), "officer") * 100			    	       	      
								UI_SetTextLabelText("NewTaskbar", "officercrewcell", ""..floor(officer));       
							else
                if Player_HasResearch(pi, "isai" ) == 1 then
									UI_SetTextLabelText("NewTaskbar", "pilotcrewcell", ""..floor(pilotrecruiterList[pi+1]/2));    			    	       	      
									UI_SetTextLabelText("NewTaskbar", "officercrewcell", ""..floor(officerrecruiterList[pi+1]/2)); 
								else  		       	      
									UI_SetTextLabelText("NewTaskbar", "pilotcrewcell", ""..pilotrecruiterList[pi+1]);    			    	       	      
									UI_SetTextLabelText("NewTaskbar", "officercrewcell", ""..officerrecruiterList[pi+1]);      	    	      	
								end							  
							end
						end			
					end
				end	
			end
		end
	end	  
	
--Refinery		    
	if hwsaving[1] == 7 then
		if nmr > 0 then 
			for i = 0,nmr - 1,1 do	
				if SobGroup_Empty("splitmobilerefineries"..i) == 0 then				
					--sundamage
					if SobGroup_Empty("star_sol") == 0 then        
						sundamageinterface = SobGroup_TakeDamageSol("splitmobilerefineries"..i,0.8,runselected)          	
					end		  				
					if SobGroup_Selected("splitmobilerefineries"..i) == 1 then	 	
					  cleaninterface(interfacecleaned, "splitmobilerefineries"..i)
						interfacecleaned=interfacecleaned+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitmobilerefineries"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitmobilerefineries"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end			    
						enablebtnparade = 1						
					end   
				end	  
			end	       
		end	  
	end	
  
--Resource Collector	 	
  if hwsaving[1] == 9 then
		if nrc > 0 then 
			for i = 0,nrc - 1,1 do		 
				if SobGroup_Empty("splitresourcecollectors"..i) == 0 then 				
					--sundamage
					if SobGroup_Empty("star_sol") == 0 then        
						sundamageinterface = SobGroup_TakeDamageSol("splitresourcecollectors"..i,0.3,runselected)          	
					end  	 						 
					if SobGroup_IsDocked("splitresourcecollectors"..i) == 1 then	      
						SobGroup_AbilityActivate("splitresourcecollectors"..i, AB_Scuttle, 0)						
						SobGroup_SetInvulnerability("splitresourcecollectors"..i, 1)		          			
					else	      
						SobGroup_AbilityActivate("splitresourcecollectors"..i, AB_Scuttle, 1)
						SobGroup_SetInvulnerability("splitresourcecollectors"..i, 0)
					end            	  
					if SobGroup_Selected("splitresourcecollectors"..i) == 1 then	
					  cleaninterface(interfacecleaned, "splitresourcecollectors"..i)	
            interfacecleaned=interfacecleaned+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitresourcecollectors"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitresourcecollectors"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end
						if SobGroup_AreAnyOfTheseTypes("splitresourcecollectors"..i, "hgn_resourcecollector") == 1 then			 				  				  			  
							ruload = 300
							rurate = 3.7							
							rudropoff = 7.9	 
							ruratemining = 4	
						elseif SobGroup_AreAnyOfTheseTypes("splitresourcecollectors"..i, "hgn_salvagecollector") == 1 then
							ruload = 120
							rurate = 1.56							
							rudropoff = 3.16	 
							ruratemining = 2
						elseif SobGroup_AreAnyOfTheseTypes("splitresourcecollectors"..i, "vgr_resourcecollector") == 1 then
							ruload = 275
							rurate = 3.9							
							rudropoff = 8.7	 
							ruratemining = 4
						end						
						if Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "ResourceCollectorRURATEUpgrade3" ) == 1 then			      
							rurate = rurate * 1.8    							    
						elseif Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "ResourceCollectorRURATEUpgrade2" ) == 1 then
							rurate = rurate * 1.5            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "ResourceCollectorRURATEUpgrade1" ) == 1 then			    
							rurate = rurate * 1.25     	          
						end   	      
						if Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "ResourceCollectorRUCAPUpgrade3" ) == 1 then
							ruload = ruload * 1.8            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "ResourceCollectorRUCAPUpgrade2" ) == 1 then
							ruload = ruload * 1.5            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "ResourceCollectorRUCAPUpgrade1" ) == 1 then
							ruload = ruload * 1.25       
						end  	      
						if Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "ResourceCollectorRUDROPOFFUpgrade3" ) == 1 then
							rudropoff = rudropoff * 1.8           
						elseif Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "ResourceCollectorRUDROPOFFUpgrade2" ) == 1 then
							rudropoff = rudropoff * 1.5            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "ResourceCollectorRUDROPOFFUpgrade1" ) == 1 then
							rudropoff = rudropoff * 1.25       
						end 	   
						if Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "resourcecollectorextraction3" ) == 1 then
							ruratemining = ruratemining * 1.8   
						elseif Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "resourcecollectorextraction2" ) == 1 then
							ruratemining = ruratemining * 1.5            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitresourcecollectors"..i), "resourcecollectorextraction1" ) == 1 then			    
							ruratemining = ruratemining * 1.25     	          
						end 			  
						UI_SetElementVisible("NewTaskbar", "ruframe", 1)     	      
						UI_SetTextLabelText("NewTaskbar", "rurate", ""..floor(rurate));   
						UI_SetTextLabelText("NewTaskbar", "ruratemining", ""..floor(ruratemining));  
						UI_SetTextLabelText("NewTaskbar", "ruload", ""..floor(ruload));   
						UI_SetTextLabelText("NewTaskbar", "rudropoff", ""..floor(rudropoff));  
            if SobGroup_IsDocked("splitresourcecollectors"..i) == 0 then						
						  enablebtnparade = 1				
            end						
					end 			
				end  
			end	            				
		end	
	end	
  
--Trade Container  
  if hwsaving[1] == 0 then  
		if ntrc > 0 then 
			for i = 0,ntrc - 1,1 do	
				if SobGroup_Empty("splitcontainers"..i) == 0 then				
					--orders        
					orders("splitcontainers"..i, "clear",0,0)   					
					orders("splitcontainers"..i, "trade",0,0)	 
					orders("splitcontainers"..i, "evacuation",4,0,runselected)
					--energy consume							      
					energyConsume("splitcontainers"..i,1,1)	       
					--sundamage	
					if SobGroup_Empty("star_sol") == 0 then
						sundamageinterface = SobGroup_TakeDamageSol("splitcontainers"..i,0.6,runselected)				
					end										
					if SobGroup_Selected("splitcontainers"..i) == 1 then
						cleaninterface(interfacecleaned, "splitcontainers"..i)	
						interfacecleaned=interfacecleaned+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitcontainers"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitcontainers"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");							
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");						
						end	 			 
						en = SobGroup_GetHardPointHealth("splitcontainers"..i, "en")		 			  		  		  		  	        
						UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));						
						UI_SetElementVisible("NewTaskbar", "containerruframe", 1)  				       	      
						UI_SetTextLabelText("NewTaskbar", "containerruload", ""..tradeList[SobGroup_OwnedBy("splitcontainers"..i) + 1]);  			          	 	    	
						enablebtnparade = 1						   
					end     
				end	
			end	       
		end 
  end		
    
--Mine Container  
  if hwsaving[1] == 2 then
		if nmc > 0 then 
			for i = 0,nmc - 1,1 do	
				if SobGroup_Empty("splitminecontainers"..i) == 0 then					
					--Sundamage
					if SobGroup_Empty("star_sol") == 0 then        
						sundamageinterface = SobGroup_TakeDamageSol("splitminecontainers"..i,0.8,runselected)          	
					end		  										
					if SobGroup_Selected("splitminecontainers"..i) == 1 then	
					  cleaninterface(interfacecleaned, "splitminecontainers"..i)	
            interfacecleaned=interfacecleaned+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitminecontainers"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitminecontainers"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end 			  
						UI_SetElementVisible("NewTaskbar", "minecontainerruframe", 1)  				       	      
						UI_SetTextLabelText("NewTaskbar", "minecontainerrurate", ""..minecontainerrurateDisplayList[SobGroup_OwnedBy("splitminecontainers"..i) + 1]);  				     
						UI_SetTextLabelText("NewTaskbar", "minecontainerruload", ""..minecontainerloadDisplayList[SobGroup_OwnedBy("splitminecontainers"..i) + 1]);   
						UI_SetTextLabelText("NewTaskbar", "minecontainerrudropoff", ""..minecontainerdropoffDisplayList[SobGroup_OwnedBy("splitminecontainers"..i) + 1]);  			       	 	    	
						enablebtnparade = 1							
					end     
				end	
			end	       
		end	 
  end	
  
--Mining Base  	
	if hwsaving[1] == 5 then
	  --no owner
		if SobGroup_Empty("megalithnoowner") == 0 then	  
			if megalithnoownercount == 0 then  
				megalithnoownercount = SobGroup_SplitGroupFromGroup("megalithnoowner", "megalithnoowner", SobGroup_Count("megalithnoowner"), "splitter") 	    
			end
			for i = 0,(megalithnoownercount - 1),1 do		
				if SobGroup_Empty("megalithnoowner"..i) == 0 then	  	 		  
					if SobGroup_Selected("megalithnoowner"..i) == 1 then
					  cleaninterface(interfacecleaned, "megalithnoowner"..i)	
            interfacecleaned=interfacecleaned+2
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("megalithnoowner"..i))));
						--race for taskbar			      
						UI_SetTextLabelText("NewTaskbar", "unitrace", "None");		      			  
						UI_SetElementVisible("NewTaskbar", "MBru", 1)		
						if SobGroup_PlayerIsInSensorRange("megalithnoowner"..i, playerIndex) == 1 then		
							availableru = SobGroup_GetHardPointHealth("megalithnoowner"..i, "ru") * 100000   				  		    	  
							UI_SetTextLabelText("NewTaskbar", "availableru", ""..floor(availableru));  
							UI_SetTextLabelText("NewTaskbar", "collectorinside", "0" ); 
							UI_SetTextLabelText("NewTaskbar", "containerinside", "0" ); 	 
						else			      
							UI_SetTextLabelText("NewTaskbar", "availableru", "??");  
							UI_SetTextLabelText("NewTaskbar", "collectorinside", "??"); 
							UI_SetTextLabelText("NewTaskbar", "containerinside", "??"); 	 
						end		    
						break
					end
				end  
			end  
		end		
		--owner	
		if nmb > 0 then
			for i = 0,nmb-1,1 do  
				if SobGroup_Empty("splitminingbases"..i) == 0 then	 
          SobGroup_AbilityActivate("splitminingbases"..i, AB_Lights, 1)				
					if SobGroup_Selected("splitminingbases"..i) == 1 then	
					  cleaninterface(interfacecleaned, "splitminingbases"..i)	
            interfacecleaned=interfacecleaned+2
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitminingbases"..i))));
						--race for taskbar	    
						UI_SetTextLabelText("NewTaskbar", "unitrace", "None");
						UI_SetElementVisible("NewTaskbar", "MBru", 1) 
						if SobGroup_PlayerIsInSensorRange("splitminingbases"..i, playerIndex) == 1 or AreAllied(playerIndex, SobGroup_OwnedBy("splitminingbases"..i)) == 1 then    		
							availableru = SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") * 100000      			      	  
							UI_SetTextLabelText("NewTaskbar", "availableru", ""..floor(availableru));  
							UI_SetTextLabelText("NewTaskbar", "collectorinside", ""..SobGroup_Count("hgn_resourcecollector_insidemegalith"..i)); 
							UI_SetTextLabelText("NewTaskbar", "containerinside", ""..SobGroup_Count("hgn_minecontainer_insidemegalith"..i));  	   
						else
							UI_SetTextLabelText("NewTaskbar", "availableru", "??");  
							UI_SetTextLabelText("NewTaskbar", "collectorinside", "??"); 
							UI_SetTextLabelText("NewTaskbar", "containerinside", "??");  	      
						end  
						break     
					end   
				end  
			end    	    	    
		end		
		--debris
		if MaxCount[2] > 0 then
			for i = 0,MaxCount[2],1 do  
				if SobGroup_Empty("debris"..i) == 0 then	 	
					if SobGroup_Selected("debris"..i) == 1 then			      
					  cleaninterface(interfacecleaned, "debris"..i)	
            interfacecleaned=interfacecleaned+2
						UI_SetTextLabelText("NewTaskbar", "unitrace", "None");
						break     
					end   
				end  
			end    		      	    
		end		
		--asteroidbelt
		if MaxCount[3] > 0 then
			for i = 0,MaxCount[3],1 do  
				if SobGroup_Empty("asteroidbelt"..i) == 0 then	 	
					if SobGroup_Selected("asteroidbelt"..i) == 1 then			      
					  cleaninterface(interfacecleaned, "asteroidbelt"..i)	
            interfacecleaned=interfacecleaned+2
						UI_SetTextLabelText("NewTaskbar", "unitrace", "None");
						break     
					end   
				end  
			end    		      	    
		end		
		--megalite
		if MaxCount[4] > 0 then
			for i = 0,MaxCount[4],1 do  
				if SobGroup_Empty("megalite"..i) == 0 then						
					if SobGroup_Selected("megalite"..i) == 1 then			      
					  cleaninterface(interfacecleaned, "megalite"..i)	
            interfacecleaned=interfacecleaned+2
						UI_SetTextLabelText("NewTaskbar", "unitrace", "None");
						break     
					end   
				end  
			end    		      	    
		end		
		--planet
		if MaxCount[5] > 0 then
			for i = 0,MaxCount[5],1 do  
				if SobGroup_Empty("planet"..i) == 0 then	 	
					if SobGroup_Selected("planet"..i) == 1 then			      
					  cleaninterface(interfacecleaned, "planet"..i)	
            interfacecleaned=interfacecleaned+2
						UI_SetTextLabelText("NewTaskbar", "unitrace", "None");
						break     
					end   
				end  
			end    		      	    
		end
	end	
	
--Juggernaut	 
  if hwsaving[1] == 2 then
		if nj > 0 then  	                                                  
			for i = 0,nj-1,1 do    
				if SobGroup_Empty("splitjuggernaughts"..i) == 0 then	
				  SobGroup_ForceStayDockedIfDocking("splitjuggernaughts"..i) 
					--sundamage
					if SobGroup_Empty("star_sol") == 0 then        
						sundamageinterface = SobGroup_TakeDamageSol("splitjuggernaughts"..i,0.7,runselected)          	
					end		    					     
					if SobGroup_IsDocked("splitjuggernaughts"..i) == 1 then
						if SobGroup_GetHardPointHealth("splitjuggernaughts"..i, "jspeed") > 0.5 then
							FX_StartEvent("splitjuggernaughts"..i, "Docking")
						end		  		              
						if SobGroup_HealthPercentage("splitjuggernaughts"..i) <= 0.25 then
							SobGroup_SetInvulnerability("splitjuggernaughts"..i, 1)	
						else
							SobGroup_SetInvulnerability("splitjuggernaughts"..i, 0)	  
						end             	 
						SobGroup_MakeSelectable("splitjuggernaughts"..i, 0)
						SobGroup_SetHardPointHealth("splitjuggernaughts"..i, "jspeed", 0) 
					else
						if SobGroup_GetHardPointHealth("splitjuggernaughts"..i, "jspeed") < 0.5 then
							FX_StartEvent("splitjuggernaughts"..i, "Launching")
						end		      
						SobGroup_MakeSelectable("splitjuggernaughts"..i, 1)  
						SobGroup_SetHardPointHealth("splitjuggernaughts"..i, "jspeed", 1)
					end                                   
					if SobGroup_Selected("splitjuggernaughts"..i) == 1 then	   
					  cleaninterface(interfacecleanedspecial, "splitjuggernaughts"..i)	
            interfacecleanedspecial = interfacecleanedspecial+1            
						interfacespecialcases[playerIndexList] = interfacespecialcases[playerIndexList]+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitjuggernaughts"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitjuggernaughts"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end 	
            --detonation frame/range						
						DetonationPower = 128000	      
						if Player_HasResearch(SobGroup_OwnedBy("splitjuggernaughts"..i), "DetonationPower2" ) == 1 then
							DetonationPower = DetonationPower * 2.1            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitjuggernaughts"..i), "DetonationPower1" ) == 1 then
							DetonationPower = DetonationPower * 1.5            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitjuggernaughts"..i), "DetonationPower" ) == 1 then
							DetonationPower = DetonationPower * 1.25       
						end 	
						DetonationRange = 4500	      
						if Player_HasResearch(SobGroup_OwnedBy("splitjuggernaughts"..i), "DetonationRange2" ) == 1 then
							DetonationRange = DetonationRange * 1.5           
						elseif Player_HasResearch(SobGroup_OwnedBy("splitjuggernaughts"..i), "DetonationRange1" ) == 1 then
							DetonationRange = DetonationRange * 1.3            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitjuggernaughts"..i), "DetonationRange" ) == 1 then
							DetonationRange = DetonationRange * 1.15       
						end 	
						UI_SetElementVisible("NewTaskbar", "juggernaughtframe", 1)	
						floor(DetonationPower)       	      
						UI_SetTextLabelText("NewTaskbar", "juggernaughtpower", ""..DetonationPower);   	    
						floor(DetonationRange)       	      
						UI_SetTextLabelText("NewTaskbar", "juggernaughtrange", ""..DetonationRange); 
						--exp, eff
						exp1 = SobGroup_GetHardPointHealth("splitjuggernaughts"..i, "experience") * 10000		  	   	        
						UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1)); 
						eff = -(floor((1 - SobGroup_GetHardPointHealth("splitjuggernaughts"..i, "efficency")) * 10)) 		 		  		  		  	        
						if eff <= -1 then	
							UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff);	   	
						end				  	  	
						UI_SetElementSize("NewTaskbar", "subsystems", 32, 48);
            if SobGroup_IsDocked("splitjuggernaughts"..i) == 0 then							
							enablebtnparade = 1 		  
            end 							
					end  	  
				end  		  		  
			end	 
		end  
	end	
	
--Nuclear Bomb	
  if hwsaving[1] == 6 then
		if nnb > 0 then  	                                                  
			for i = 0,nnb-1,1 do  
				if SobGroup_Empty("splitnuclearbombs"..i) == 0 then	  
				  SobGroup_ForceStayDockedIfDocking("splitnuclearbombs"..i)	  
					--sundamage
					if SobGroup_Empty("star_sol") == 0 then        
						sundamageinterface = SobGroup_TakeDamageSol("splitnuclearbombs"..i,0.5,runselected)          	
					end					                                      
					if SobGroup_Selected("splitnuclearbombs"..i) == 1 then	  
					  cleaninterface(interfacecleaned, "splitnuclearbombs"..i)	
            interfacecleaned=interfacecleaned+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitnuclearbombs"..i))));  
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitnuclearbombs"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end		
            --detonation/range						
						DetonationPower = 192000	      
						if Player_HasResearch(SobGroup_OwnedBy("splitnuclearbombs"..i), "NBDetonationPower2" ) == 1 then
							DetonationPower = DetonationPower * 2.1            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitnuclearbombs"..i), "NBDetonationPower1" ) == 1 then
							DetonationPower = DetonationPower * 1.5            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitnuclearbombs"..i), "NBDetonationPower" ) == 1 then
							DetonationPower = DetonationPower * 1.25       
						end 	
						DetonationRange = 8250	      
						if Player_HasResearch(SobGroup_OwnedBy("splitnuclearbombs"..i), "NBDetonationRange2" ) == 1 then
							DetonationRange = DetonationRange * 1.5           
						elseif Player_HasResearch(SobGroup_OwnedBy("splitnuclearbombs"..i), "NBDetonationRange1" ) == 1 then
							DetonationRange = DetonationRange * 1.3            
						elseif Player_HasResearch(SobGroup_OwnedBy("splitnuclearbombs"..i), "NBDetonationRange" ) == 1 then
							DetonationRange = DetonationRange * 1.15       
						end 	
						UI_SetElementVisible("NewTaskbar", "juggernaughtframe", 1)	
						floor(DetonationPower)       	      
						UI_SetTextLabelText("NewTaskbar", "juggernaughtpower", ""..DetonationPower);   	    
						floor(DetonationRange)       	      
						UI_SetTextLabelText("NewTaskbar", "juggernaughtrange", ""..DetonationRange); 								
					end    	  			  
				end  	  
			end	 
		end
  end	
  
--Destroyer
  if hwsaving[1] == 2 then
		if nd > 0 then					
			for i = 0,nd-1,1 do     
				if SobGroup_Empty("splitdestroyers"..i) == 0 then	  			
					--sundamage
					if SobGroup_Empty("star_sol") == 0 then        
						sundamageinterface = SobGroup_TakeDamageSol("splitdestroyers"..i,0.7,runselected)          	
					end		
					if SobGroup_AreAnyOfTheseTypes("splitdestroyers"..i, "hgn_smasher") == 1 then				
						--docked ships
						SobGroup_Clear("temp")	
						SobGroup_Clear("temp1")		          			
						SobGroup_GetSobGroupDockedWithGroup("splitdestroyers"..i, "temp")	      	
						SobGroup_FillShipsByType("temp1", "temp", "hgn_juggernaught")
						if SobGroup_Count("temp1") == 2 then	
							SobGroup_SetHardPointHealth("splitdestroyers"..i, "speed", 0.6)
						elseif SobGroup_Count("temp1") == 1 then
							SobGroup_SetHardPointHealth("splitdestroyers"..i, "speed", 0.8)	
						else
							SobGroup_SetHardPointHealth("splitdestroyers"..i, "speed", 1)
						end 					
          end						
					if SobGroup_Selected("splitdestroyers"..i) == 1 then	
					  cleaninterface(interfacecleanedspecial, "splitdestroyers"..i)	  
            interfacecleanedspecial = interfacecleanedspecial+1						
						interfacespecialcases[playerIndexList] = interfacespecialcases[playerIndexList]+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitdestroyers"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitdestroyers"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end    
						--exp, eff
						exp1 = SobGroup_GetHardPointHealth("splitdestroyers"..i, "experience") * 10000			 		  		  		   	   	        
						UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1)); 
						eff = -(floor((1 - SobGroup_GetHardPointHealth("splitdestroyers"..i, "efficency")) * 10)) 		 		  		  		  	        
						if eff <= -1 then	
							UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff);	   		       
						end		            					
						if Player_GetRace(SobGroup_OwnedBy("splitdestroyers"..i)) == Race_Hiigaran then
						  --icon weapons
							if SobGroup_AreAnyOfTheseTypes("splitdestroyers"..i, "hgn_cruisera") == 1 then
								if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "ImprovedTorpedoCruiseraIcon") == 1 then
									UI_SetElementVisible("NewTaskbar", "abilities", 1) 
									UI_SetElementVisible("NewTaskbar", "torpedo", 1)
									UI_SetTextLabelText("NewTaskbar", "torpedotext", "Torpedo");
								end  				
							elseif SobGroup_AreAnyOfTheseTypes("splitdestroyers"..i, "hgn_cruiserb") == 1 then				    
								if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "ImprovedTorpedoCruiserbIcon") == 1 then
									UI_SetElementVisible("NewTaskbar", "abilities1", 1)
									UI_SetElementSize("NewTaskbar", "monster", 66, 15);	
									UI_SetTextLabelText("NewTaskbar", "monstertext", "Mine");
								end	              
							else				    			  
								if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "ImprovedTorpedoDestroyerIcon") == 1 then
									UI_SetElementVisible("NewTaskbar", "abilities", 1)
									UI_SetElementVisible("NewTaskbar", "torpedo", 1)
									UI_SetTextLabelText("NewTaskbar", "torpedotext", "Torpedo");
								end  				
							end  
							if SobGroup_AreAnyOfTheseTypes("splitdestroyers"..i, "hgn_missiledestroyer") == 1 and Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "ImprovedCallistoMissileDestroyer") == 1 and SobGroup_OwnedBy("splitdestroyers"..i) == playerIndex then
								enablebtncallisto = 1								
							end							 
              if SobGroup_AreAnyOfTheseTypes("splitdestroyers"..i, "hgn_smasher") == 1 and Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "ImprovedTorpedoSmasher") == 1 and SobGroup_OwnedBy("splitdestroyers"..i) == playerIndex then						
								enablebtnnuclear = 1														
              end		
              UI_SetElementSize("NewTaskbar", "subsystems", 32, 24);							
						else
							if SobGroup_AreAnyOfTheseTypes("splitdestroyers"..i, "vgr_destroyer") == 1 then
							  UI_SetElementSize("NewTaskbar", "subsystems", 32, 24);
								if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "ImprovedTorpedoDestroyer") == 1 then
									UI_SetElementVisible("NewTaskbar", "abilities1", 1)
									UI_SetElementSize("NewTaskbar", "fusionm", 66, 15);					      
									UI_SetTextLabelText("NewTaskbar", "fusiontext", "Fusion");			        
								end
								if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "MineDestroyer") == 1 then
									UI_SetElementVisible("NewTaskbar", "abilities1", 1)
									UI_SetElementSize("NewTaskbar", "monster", 66, 15);
									UI_SetTextLabelText("NewTaskbar", "monstertext", "Mine");
								end
							elseif SobGroup_AreAnyOfTheseTypes("splitdestroyers"..i, "vgr_pulsedestroyer") == 1 then
							  UI_SetElementSize("NewTaskbar", "subsystems", 32, 24);
								if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "ImprovedTorpedoPulseDestroyer") == 1 then
									UI_SetElementVisible("NewTaskbar", "abilities1", 1)
									UI_SetElementSize("NewTaskbar", "fusionm", 66, 15);					      
									UI_SetTextLabelText("NewTaskbar", "fusiontext", "Fusion");			        
								end
								if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "MinePulseDestroyer") == 1 then
									UI_SetElementVisible("NewTaskbar", "abilities1", 1)
									UI_SetElementSize("NewTaskbar", "monster", 66, 15);
									UI_SetTextLabelText("NewTaskbar", "monstertext", "Mine");
								end	
							elseif SobGroup_AreAnyOfTheseTypes("splitdestroyers"..i, "vgr_cruiser") == 1 then
							  UI_SetElementSize("NewTaskbar", "subsystems", 32, 24);
								if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "ImprovedTorpedoCruiser") == 1 then
									UI_SetElementVisible("NewTaskbar", "abilities1", 1)
									UI_SetElementSize("NewTaskbar", "fusionm", 66, 15);					      
									UI_SetTextLabelText("NewTaskbar", "fusiontext", "Fusion");			        
								end
								if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "ImprovedTorpedoCruiser1") == 1 then
									UI_SetElementVisible("NewTaskbar", "abilities1", 1)
									UI_SetElementSize("NewTaskbar", "fusionm1", 66, 15);					      
									UI_SetTextLabelText("NewTaskbar", "fusiontext1", "Heavy Fusion");
								end
							elseif SobGroup_AreAnyOfTheseTypes("splitdestroyers"..i, "vgr_lightcruiser") == 1 then
							  UI_SetElementSize("NewTaskbar", "subsystems", 32, 24);
								if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "ImprovedTorpedoLightCruiser") == 1 then
									UI_SetElementVisible("NewTaskbar", "abilities1", 1)
									UI_SetElementSize("NewTaskbar", "fusionm", 66, 15);					      
									UI_SetTextLabelText("NewTaskbar", "fusiontext", "Fusion");			        
								end								
							elseif SobGroup_AreAnyOfTheseTypes("splitdestroyers"..i, "vgr_artilleryship") == 1 then
								UI_SetElementSize("NewTaskbar", "subsystems", 64, 24); 
							end					    
						end	            							
						enablebtnparade = 1	 							
					end  
				end  
			end		
		end	
	end	
	
--Battlecruisers   
  if nbc > 0 then
	  for i = 0,nbc-1,1 do      
	    if SobGroup_Empty("splitbattlecruisers"..i) == 0 then
				--energy consume
        if hwsaving[1] == 4 then        
          energyConsume("splitbattlecruisers"..i,1,1)          	 
        elseif hwsaving[1] == 5 and SobGroup_Empty("star_sol") == 0 then
          sundamageinterface = SobGroup_TakeDamageSol("splitbattlecruisers"..i,0.7,runselected)				
	      end   
        --shuttle				
	      if SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "hgn_tanker,hgn_lighttanker") == 1 then				
					--orders
          orders("splitbattlecruisers"..i, "clear",0,0)   
					orders("splitbattlecruisers"..i, "patcher",0,0)            
          orders("splitbattlecruisers"..i, "patcherlaunch",0,0)            		  					
	        orders("splitbattlecruisers"..i, "evacuation",20,2,runselected)	            
		      orders("splitbattlecruisers"..i, "guard",0,0)  
          --docked ships
          SobGroup_Clear("temp")	
          SobGroup_Clear("temp1")		          			
	      	SobGroup_GetSobGroupDockedWithGroup("splitbattlecruisers"..i, "temp")	      	
		    	SobGroup_FillShipsByType("temp1", "temp", "hgn_juggernaught")
					if SobGroup_Count("temp1") == 4 then	
						SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "speed", 0.52) 
					elseif SobGroup_Count("temp1") == 3 then	
						SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "speed", 0.64) 
					elseif SobGroup_Count("temp1") == 2 then	
						SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "speed", 0.76)
					elseif SobGroup_Count("temp1") == 1 then
						SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "speed", 0.88)	
					else
						SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "speed", 1)
					end			
        --battlecruiser					
		    elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "hgn_battlecruiser") == 1 then
		      --orders        	 
        	orders("splitbattlecruisers"..i, "clear",0,0)          
          orders("splitbattlecruisers"..i, "dock",0,0)						
	        orders("splitbattlecruisers"..i, "evacuation",30,3,runselected)	            
		      orders("splitbattlecruisers"..i, "guard",0,0) 
		      orders("splitbattlecruisers"..i, "destroyallguns",0,0)		
          --experience upgrades					
	      	if (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 500 then	   
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "500exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "500exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Heavy Guided Plazma Bomb Tubes", 0)
				      end	
			      end
			      if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "400exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "400exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "300exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "300exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")			      	
					  end    
					  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end         	  
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 400 then	
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "400exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "400exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Heavy Guided Plazma Bomb Tubes", 0)				      	
				      end	
			      end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "300exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "300exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")			      	
					  end    
					  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end                 	  
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 300 then
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "300exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "300exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Weapon IonBeam 1", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Weapon IonBeam 2", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "RailBeam 1", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "RailBeam 2", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Weapon Rail Beam Back", 0)				      	
				      end	
			      end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 200 then
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "RailBeam 1", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "RailBeam 2", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Weapon Rail Beam Back", 0)
				      end	
			      end
			      if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end  
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 100 then
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Rapid Turret 1", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Rapid Turret 2", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Rapid Turret 3", 0)				      		
				      end			      
			      end	      
	      	else
	      	end		      	
					SobGroup_Clear("temp"..SobGroup_OwnedBy("splitbattlecruisers"..i))	
	      	if ((Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1) and
					   (SobGroup_IsDoingAbility("splitbattlecruisers"..i, abilityList[2]) == 1) and 
	      	   (SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy("splitbattlecruisers"..i), "smallcapitalenemies"..SobGroup_OwnedBy("splitbattlecruisers"..i), "splitbattlecruisers"..i, 12000) == 1) and
	      	   (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitbattlecruisers"..i), "hgn_viper_short") < 2) and
	      	   (Player_GetRU(SobGroup_OwnedBy("splitbattlecruisers"..i)) > 5000)) then 
	      	  SobGroup_CreateShip("splitbattlecruisers"..i, "hgn_viper_short")
						SobGroup_CreateShip("splitbattlecruisers"..i, "hgn_viper_short1")
	      	  Player_SetRU(SobGroup_OwnedBy("splitbattlecruisers"..i), Player_GetRU(SobGroup_OwnedBy("splitbattlecruisers"..i)) - 1500)
	      	end	
        --battleship					
	      elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "hgn_battleship") == 1 then
	        --Orders        	 
        	orders("splitbattlecruisers"..i, "clear",0,0)           
          orders("splitbattlecruisers"..i, "dock",0,0)						
	        orders("splitbattlecruisers"..i, "evacuation",45,5,runselected)	            
		      orders("splitbattlecruisers"..i, "guard",0,0) 
		      orders("splitbattlecruisers"..i, "destroyallguns",0,0)	
          --experience upgrades					
	      	if (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 500 then	   
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "500exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "500exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Heavy Guided Plazma Bomb Tubes", 0)
				      end	
			      end
			      if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "400exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "400exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "300exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "300exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")			      	
					  end    
					  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end         	  
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 400 then	
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "400exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "400exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
			      	  SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Weapon IonBeam 1", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Weapon IonBeam 2", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Heavy Guided Plazma Bomb Tubes", 0)				      	
				      end	
			      end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "300exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "300exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")			      	
					  end    
					  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end                 	  
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 300 then
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "300exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "300exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Weapon IonBeam 1", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Weapon IonBeam 2", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "RailBeam 1", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "RailBeam 2", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "RailBeam 3", 0)				      	
				      end	
			      end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 200 then
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "RailBeam 1", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "RailBeam 2", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "RailBeam 3", 0)
				      end	
			      end
			      if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end  
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 100 then
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Rapid Turret 1", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Rapid Turret 2", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Rapid Turret 3", 0)				      		
				      end			      
			      end	      
	      	else
	      	end	
					--missiles x ai
					SobGroup_Clear("temp"..SobGroup_OwnedBy("splitbattlecruisers"..i))	
	      	if ((Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1) and
	      	   (SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy("splitbattlecruisers"..i), "smallcapitalenemies"..SobGroup_OwnedBy("splitbattlecruisers"..i), "splitbattlecruisers"..i, 12000) == 1) and
						 (SobGroup_IsDoingAbility("splitbattlecruisers"..i, abilityList[2]) == 1) and
	      	   (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitbattlecruisers"..i), "hgn_viper_short") < 2) and
	      	   (Player_GetRU(SobGroup_OwnedBy("splitbattlecruisers"..i)) > 5000)) then 
	      	  SobGroup_CreateShip("splitbattlecruisers"..i, "hgn_viper_short")
						SobGroup_CreateShip("splitbattlecruisers"..i, "hgn_viper_short1")
	      	  Player_SetRU(SobGroup_OwnedBy("splitbattlecruisers"..i), Player_GetRU(SobGroup_OwnedBy("splitbattlecruisers"..i)) - 1500)
	      	end	 
        --vortex 					
	      elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "hgn_vortex") == 1 then
	        --orders        		 
        	orders("splitbattlecruisers"..i, "clear",0,0)   					
          orders("splitbattlecruisers"..i, "dock",0,0)	
	        orders("splitbattlecruisers"..i, "evacuation",35,4,runselected)	            
		      orders("splitbattlecruisers"..i, "guard",0,0) 
		      orders("splitbattlecruisers"..i, "destroyallguns",0,0)	
          --experience upgrades					
	      	if (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 500 then	   
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "500exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "500exp")			      	
			      end
			      if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "400exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "400exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "300exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "300exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")			      	
					  end    
					  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end         	  
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 400 then	
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "400exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "400exp")			      	
			      end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "300exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "300exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")			      	
					  end    
					  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end                 	  
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 300 then
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "300exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "300exp")			      	
			      end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")			      	
					  end
            if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 200 then
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "200exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "200exp")			      	
			      end
			      if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
					    SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")			      	
					  end       	  
	      	elseif (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000) > 100 then
	      	  if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "100exp") == 0 then
			      	SobGroup_CreateSubSystem("splitbattlecruisers"..i, "100exp")
			      	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Rapid Turret 1", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Rapid Turret 2", 0)
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Rapid Turret 3", 0)	
				      	SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Rapid Turret 4", 0)
				      end					      			      
			      end	      
	      	else
	      	end	
					--calcola combat asset x Vortex
	        if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "Kinetic 2") == 0 then          
		        if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "Kinetic 1") > 0 then			          
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon1")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon2")    
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon3")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon4")   
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon5")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon6")
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon7")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon8")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon9")    
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon10")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vcannon11")  		          
		          SobGroup_RestrictBuildOption("splitbattlecruisers"..i, "hgn_vhcannonx3")
		          SobGroup_RestrictBuildOption("splitbattlecruisers"..i, "hgn_vhcannonx6")				                 
		        elseif SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "Kinetic 1b") > 0 then		          
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx31")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx32")    
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx33")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx34")   
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx35")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx36")
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx37")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx38")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx39")    
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx310")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx311") 		          
		          SobGroup_RestrictBuildOption("splitbattlecruisers"..i, "hgn_vcannon")
		          SobGroup_RestrictBuildOption("splitbattlecruisers"..i, "hgn_vhcannonx6")				                
		        elseif SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "Kinetic 1c") > 0 then 
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx61")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx62")    
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx63")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx64")   
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx65")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx66")
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx67")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx68")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx69")    
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx610")  
		          SobGroup_CreateSubSystem("splitbattlecruisers"..i, "hgn_vhcannonx611")   	
		          SobGroup_RestrictBuildOption("splitbattlecruisers"..i, "hgn_vcannon")
		          SobGroup_RestrictBuildOption("splitbattlecruisers"..i, "hgn_vhcannonx3")			                               
		        end  	                            
		      end	
				--vgr bc
        elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "vgr_battlecruiser") == 1 then
				  --missiles x ai
					SobGroup_Clear("temp"..SobGroup_OwnedBy("splitbattlecruisers"..i))
					if ((Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1) and
					   (SobGroup_IsDoingAbility("splitbattlecruisers"..i, abilityList[2]) == 1) and 
	      	   (SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy("splitbattlecruisers"..i), "smallcapitalenemies"..SobGroup_OwnedBy("splitbattlecruisers"..i), "splitbattlecruisers"..i, 12000) == 1) and
	      	   (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitbattlecruisers"..i), "vgr_cruse1") < 1) and
	      	   (Player_GetRU(SobGroup_OwnedBy("splitbattlecruisers"..i)) > 5000)) then 
	      	  SobGroup_CreateShip("splitbattlecruisers"..i, "vgr_cruse1")						
	      	  Player_SetRU(SobGroup_OwnedBy("splitbattlecruisers"..i), Player_GetRU(SobGroup_OwnedBy("splitbattlecruisers"..i)) - 750)
	      	end	    
					--orders  					
		      orders("splitbattlecruisers"..i, "guard",0,0)          
          orders("splitbattlecruisers"..i, "dock",0,0)	
          orders("splitbattlecruisers"..i, "clear",0,0)	
        --vgr mbc
        elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "vgr_missilebattlecruiser") == 1 then
				  --missiles x ai
					SobGroup_Clear("temp"..SobGroup_OwnedBy("splitbattlecruisers"..i))
					if ((Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1) and
					   (SobGroup_IsDoingAbility("splitbattlecruisers"..i, abilityList[2]) == 1) and 
	      	   (SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy("splitbattlecruisers"..i), "smallcapitalenemies"..SobGroup_OwnedBy("splitbattlecruisers"..i), "splitbattlecruisers"..i, 12000) == 1) and
	      	   (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitbattlecruisers"..i), "vgr_cruse1") < 1) and
	      	   (Player_GetRU(SobGroup_OwnedBy("splitbattlecruisers"..i)) > 5000)) then 
	      	  SobGroup_CreateShip("splitbattlecruisers"..i, "vgr_cruse1")						
	      	  Player_SetRU(SobGroup_OwnedBy("splitbattlecruisers"..i), Player_GetRU(SobGroup_OwnedBy("splitbattlecruisers"..i)) - 750)
	      	end	    
					--orders  					
		      orders("splitbattlecruisers"..i, "guard",0,0)          
          orders("splitbattlecruisers"..i, "dock",0,0)	
          orders("splitbattlecruisers"..i, "clear",0,0)          	
        --vgr battleship 					
        elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "vgr_alkhalid, vgr_sinner") == 1 then
					--orders                   
		      orders("splitbattlecruisers"..i, "guard",0,0)           
          orders("splitbattlecruisers"..i, "dock",0,0)	
          orders("splitbattlecruisers"..i, "clear",0,0)					
		    end			                                          
		    if SobGroup_Selected("splitbattlecruisers"..i) == 1 then	
				  cleaninterface(interfacecleaned, "splitbattlecruisers"..i)	
          interfacecleaned=interfacecleaned+1
					--speed
		      UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitbattlecruisers"..i))));
		      --race for taskbar	    
		      if Player_GetRace(SobGroup_OwnedBy("splitbattlecruisers"..i)) == Race_Hiigaran then
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");		        
		      else
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
		      end   
          --exp, eff, en					
		      exp1 = SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "experience") * 10000			 		  		  		   	   	        
			    UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1));			    
			    eff = -(floor((1 - SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "efficency")) * 10)) 		 		  		  		  	        
				  if eff <= -1 then	
				    UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff);	   		         		  
				  end			
          en = SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "en")		 			  		  		  		  	        
			    UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));							
				  UI_SetElementSize("NewTaskbar", "subsystems", 210, 48);  
					enablebtnparade = 1
          --icon weapons				  
				  if SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "vgr_battlecruiser") == 1 then		    			    	  
			    	UI_SetElementSize("NewTaskbar", "subsystem9", 0, 0); 
			    	UI_SetElementSize("NewTaskbar", "subsystem10", 0, 0);  	
			    	UI_SetElementSize("NewTaskbar", "subsystem11", 0, 0); 
			    	UI_SetElementSize("NewTaskbar", "subsystem12", 0, 0);  		
			    	if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "ImprovedTorpedoBattlecruiser") == 1 then
			    	  UI_SetElementVisible("NewTaskbar", "abilities1", 1)
			    	  UI_SetElementSize("NewTaskbar", "fusionm", 66, 15);				      
				      UI_SetTextLabelText("NewTaskbar", "fusiontext", "Fusion");
				    end	 						
				  elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "vgr_alkhalid") == 1 then  
				    if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "ImprovedTorpedoBattleship") == 1 then
				      UI_SetElementVisible("NewTaskbar", "abilities1", 1)
				      UI_SetElementSize("NewTaskbar", "fusionm", 66, 15);				      
				      UI_SetTextLabelText("NewTaskbar", "fusiontext", "Fusion");
				    end	    
				    if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "MineBattleship") == 1 then
				      UI_SetElementVisible("NewTaskbar", "abilities1", 1)
				      UI_SetElementSize("NewTaskbar", "monster", 66, 15);	
				      UI_SetTextLabelText("NewTaskbar", "monstertext", "Mine");
				    end	
				    if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "FreackerBattleship") == 1 then
				      UI_SetElementVisible("NewTaskbar", "abilities1", 1)
				      UI_SetElementSize("NewTaskbar", "freacker", 66, 15);	
				      UI_SetTextLabelText("NewTaskbar", "bombtext", "Per. Bomb");
							if SobGroup_OwnedBy("splitbattlecruisers"..i) == playerIndex then
								enablebtnperforate = 1																					 
							end
				    end	    	    				
			    elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "hgn_battleship") == 1 then
			      if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "Heavy Guided Plazma Bomb Tubes Rear") > 0 and SobGroup_OwnedBy("splitbattlecruisers"..i) == playerIndex then
				      enablebtnnuclear = 1					      
				    end			       	
			    elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "hgn_tanker") == 1 then
			      UI_SetElementVisible("NewTaskbar", "patcherframe", 1)	 						
					  UI_SetTextLabelText("NewTaskbar", "patcher", ""..Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitbattlecruisers"..i), "hgn_patcher")); 								
					  if (SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "w1") > 0 or SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "w2") > 0) and (SobGroup_OwnedBy("splitbattlecruisers"..i) == playerIndex) then  
				      enablebtnnuclear = 1					  
				    end		 
			    	UI_SetElementSize("NewTaskbar", "subsystems", 160, 24); 			
			    	if SobGroup_Count("temp1") == 1 then  
			    	  UI_SetElementVisible("NewTaskbar", "LJ1", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ2D", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ3D", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ4D", 1) 
			    	elseif SobGroup_Count("temp1") == 2 then
			    	  UI_SetElementVisible("NewTaskbar", "LJ1", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ2", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ3D", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ4D", 1) 
			    	elseif SobGroup_Count("temp1") == 3 then
			    	  UI_SetElementVisible("NewTaskbar", "LJ1", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ2", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ3", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ4D", 1) 
			    	elseif SobGroup_Count("temp1") == 4 then
			    	  UI_SetElementVisible("NewTaskbar", "LJ1", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ2", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ3", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ4", 1) 
			    	else
			    	  UI_SetElementVisible("NewTaskbar", "LJ1D", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ2D", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ3D", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ4D", 1) 
			    	end	         						
					elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "hgn_lighttanker") == 1 then
						UI_SetElementVisible("NewTaskbar", "patcherframe", 1)	 						
						UI_SetTextLabelText("NewTaskbar", "patcher", ""..Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitbattlecruisers"..i), "hgn_patcher")); 								
						UI_SetElementSize("NewTaskbar", "subsystems", 160, 24);
						if SobGroup_Count("temp1") == 1 then  
			    	  UI_SetElementVisible("NewTaskbar", "LJ3", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ4D", 1)			    	  
			    	elseif SobGroup_Count("temp1") == 2 then
			    	  UI_SetElementVisible("NewTaskbar", "LJ3", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ4", 1)			    	      	
			    	else
			    	  UI_SetElementVisible("NewTaskbar", "LJ3D", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ4D", 1)			    	 
			    	end	         
						if SobGroup_OwnedBy("splitbattlecruisers"..i) == playerIndex and SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "n") > 0 then  
							enablebtnnuclear = 1					  
						end						
			    elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "hgn_vortex") == 1 then		
			      if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "Kinetic 1") > 0 then	
			        UI_SetElementVisible("NewTaskbar", "la", 1) 	
			      else
			        UI_SetElementVisible("NewTaskbar", "la", 0) 	
			      end  
			      if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "Kinetic 1b") > 0 then	
			        UI_SetElementVisible("NewTaskbar", "sa", 1) 	
			      else
			        UI_SetElementVisible("NewTaskbar", "sa", 0) 	
			      end    	
			      if SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "Kinetic 1c") > 0 then	
			        UI_SetElementVisible("NewTaskbar", "ha", 1) 	
			      else
			        UI_SetElementVisible("NewTaskbar", "ha", 0) 	
			      end  
            if SobGroup_OwnedBy("splitbattlecruisers"..i) == playerIndex then						
							enablebtnnuclear = 1	
            end 							
		      elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "vgr_dreadnaught") == 1 then    
		        UI_SetElementSize("NewTaskbar", "subsystems", 64, 24);  
					elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "vgr_missilebattlecruiser") == 1 then    
		        UI_SetElementSize("NewTaskbar", "subsystems", 160, 24);  	
          elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "vgr_am") == 1 then    
		        UI_SetElementSize("NewTaskbar", "subsystems", 32, 24); 				
					elseif SobGroup_AreAnyOfTheseTypes("splitbattlecruisers"..i, "vgr_sinner") == 1 then    
		        UI_SetElementSize("NewTaskbar", "subsystems", 96, 24); 					
			    end             
	      end  	      				  
	    end 	    	          
	  end       	    
	end		  
	                                    
--Shipyard	
  if nsy > 0 then		
		for i = 0,nsy-1,1 do       
		  if SobGroup_Empty("splitshipyards"..i) == 0 then			  		
				--energy consume
        if hwsaving[1] == 5 then         
          energyConsume("splitshipyards"..i,1,2)	
          if SobGroup_GetHardPointHealth("splitshipyards"..i, "pg") > 0 then
            FX_StartEvent("splitshipyards"..i, "EnergyLow")                
          end	  
          if SobGroup_GetHardPointHealth("splitshipyards"..i, "pg1") > 0 then
            FX_StartEvent("splitshipyards"..i, "EnergyLow1")                
          end	  
          if SobGroup_GetHardPointHealth("splitshipyards"..i, "pg2") > 0 then
            FX_StartEvent("splitshipyards"..i, "EnergyLow2")               
          end	  
          if SobGroup_GetHardPointHealth("splitshipyards"..i, "pg3") > 0 then
            FX_StartEvent("splitshipyards"..i, "EnergyLow3")          
          end	            
        elseif hwsaving[1] == 6 and SobGroup_Empty("star_sol") == 0 then
          sundamageinterface = SobGroup_TakeDamageSol("splitshipyards"..i,0.6,runselected)				
	      elseif SobGroup_InWorldBound("splitshipyards"..i, 0) == 0 then 
	        SobGroup_SetHealth("splitshipyards"..i, 0)
	      end	
				--Shipyard Gujkyng 
		    if SobGroup_AreAnyOfTheseTypes("splitshipyards"..i, "hgn_shipyard_g") == 1 then			      
		      --Orders
		      orders("splitshipyards"..i, "clear",0,0)   					
        	orders("splitshipyards"..i, "parade",0,0)
					orders("splitshipyards"..i, "parade_support",0,0)
          orders("splitshipyards"..i, "dock",0,0)	
        	orders("splitshipyards"..i, "evacuation",40,3,runselected)        	           
		      orders("splitshipyards"..i, "guard",0,0) 		      
		      orders("splitshipyards"..i, "gujkingdisable",0,0)
		      orders("splitshipyards"..i, "gujkingenable",0,0)	        	
					--weapons set
          if SobGroup_GetHardPointHealth("splitshipyards"..i, "bs2") == 0 then          
		        if SobGroup_GetHardPointHealth("splitshipyards"..i, "bs1") > 0 then			      			          
		          SobGroup_CreateSubSystem("splitshipyards"..i, "bs2")  
		          SobGroup_CreateSubSystem("splitshipyards"..i, "bs3")  
		          SobGroup_CreateSubSystem("splitshipyards"..i, "bs4")   			
		          SobGroup_CreateSubSystem("splitshipyards"..i, "bs5")  
		          SobGroup_CreateSubSystem("splitshipyards"..i, "bs6")   	
		          SobGroup_CreateSubSystem("splitshipyards"..i, "bs7")   	
		          SobGroup_CreateSubSystem("splitshipyards"..i, "bs8")   			                          
		        end  	                            
		      end	            	
        	--collateral damage	e altri fattoi legati al dockaggio navi  
          SobGroup_Clear("temp")					
		      SobGroup_GetSobGroupDockedWithGroup("splitshipyards"..i, "temp")		
          --mothership      
			    if SobGroup_AreAnyOfTheseTypes("temp", "hgn_mothership") == 1 then									    
			      if mscollateraldamage[SobGroup_OwnedBy("splitshipyards"..i)+1] > 0 then
			        SobGroup_TakeDamage("splitshipyards"..i, 0.00190*runselected)
			        mscollateraldamage[SobGroup_OwnedBy("splitshipyards"..i)+1] = 0
			      end			    
			      if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") == 0 then
			      	SobGroup_CreateSubSystem("splitshipyards"..i, "msdocker")
			      end				      
			      SobGroup_AbilityActivate("splitshipyards"..i, AB_Parade, 0)			      
			      if SobGroup_IsBuilding("splitshipyards"..i, "canbuildpoh2") == 1 then
				      FX_StartEvent("hgn_mothership"..SobGroup_OwnedBy("splitshipyards"..i), "Upgrading")
				    end
			    else
			      SobGroup_SetHardPointHealth("splitshipyards"..i, "msdocker", 0)			      
			      SobGroup_AbilityActivate("splitshipyards"..i, AB_Parade, 1)			      		      
			    end   
					--research station
			    if SobGroup_AreAnyOfTheseTypes("temp", "hgn_researchstation") == 1 and SobGroup_Count("hgn_researchstation"..SobGroup_OwnedBy("splitshipyards"..i)) > 0 then
	  	      if rscollateraldamage[SobGroup_OwnedBy("splitshipyards"..i)+1] > 0 then
			        SobGroup_TakeDamage("splitshipyards"..i, 0.00140*runselected)
			        rscollateraldamage[SobGroup_OwnedBy("splitshipyards"..i)+1] = 0
			      end			    
			      if SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") == 0 then
			      	SobGroup_CreateSubSystem("splitshipyards"..i, "rsdocker")
			      end				      
			    else
			      SobGroup_SetHardPointHealth("splitshipyards"..i, "rsdocker", 0)   				      
			    end
          --power station					
			    if SobGroup_AreAnyOfTheseTypes("temp", "hgn_power") == 1 and SobGroup_Count("hgn_power"..SobGroup_OwnedBy("splitshipyards"..i)) > 0 then
						if pscollateraldamage[SobGroup_OwnedBy("splitshipyards"..i)+1] > 0 then
			        SobGroup_TakeDamage("splitshipyards"..i, 0.00140*runselected)
			        pscollateraldamage[SobGroup_OwnedBy("splitshipyards"..i)+1] = 0
			      end			    
			      if SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") == 0 then
			      	SobGroup_CreateSubSystem("splitshipyards"..i, "psdocker")
			      end				      
			    else
			      SobGroup_SetHardPointHealth("splitshipyards"..i, "psdocker", 0)   				      
			    end
					--weapon station
			    if SobGroup_AreAnyOfTheseTypes("temp", "hgn_combatbase") == 1 and SobGroup_Count("hgn_combatbase"..SobGroup_OwnedBy("splitshipyards"..i)) > 0 then
	          if wscollateraldamage[SobGroup_OwnedBy("splitshipyards"..i)+1] > 0 then
			        SobGroup_TakeDamage("splitshipyards"..i, 0.00140*runselected)
			        wscollateraldamage[SobGroup_OwnedBy("splitshipyards"..i)+1] = 0
			      end			    
			      if SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") == 0 then
			      	SobGroup_CreateSubSystem("splitshipyards"..i, "wsdocker")
			      end				      
			    else
			      SobGroup_SetHardPointHealth("splitshipyards"..i, "wsdocker", 0)   				      
			    end		
          --crew station					
			    if SobGroup_AreAnyOfTheseTypes("temp", "hgn_crewstation") == 1 and SobGroup_Count("hgn_crewstation"..SobGroup_OwnedBy("splitshipyards"..i)) > 0 then
			      if cscollateraldamage[SobGroup_OwnedBy("splitshipyards"..i)+1] > 0 then
			        SobGroup_TakeDamage("splitshipyards"..i, 0.00140*runselected)
			        cscollateraldamage[SobGroup_OwnedBy("splitshipyards"..i)+1] = 0
			      end			    
			      if SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") == 0 then
			      	SobGroup_CreateSubSystem("splitshipyards"..i, "csdocker")
			      end				      
			    else
			      SobGroup_SetHardPointHealth("splitshipyards"..i, "csdocker", 0)   				      
			    end 	    			    
			    if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitshipyards"..i), "hgn_mothership") == 0 then 
			      SobGroup_SetHardPointHealth("splitshipyards"..i, "canbuildpoh2", 0)
			    elseif ((Player_CanResearch(SobGroup_OwnedBy("splitshipyards"..i), "canbuildpoh2" ) == 1 or SobGroup_GetHardPointHealth("hgn_mothership"..SobGroup_OwnedBy("splitshipyards"..i), "poh2") > 0) and SobGroup_GetHardPointHealth("splitshipyards"..i, "canbuildpoh2") == 0) then
			      SobGroup_CreateSubSystem("splitshipyards"..i, "canbuildpoh2")			      
			    end		
					--ping Gujking formation	
          local gname = i+1  
          if SobGroup_OwnedBy("splitshipyards"..i) == playerIndex then	 
	          g = Ping_AddSobGroup("Command Shipyard "..gname, "name1", "splitshipyards"..i)	   
					  Ping_LabelVisible(g, 1)					  		    			    
				    if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
						   SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
						   SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
						   SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
						   SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then						  	
					    Ping_AddDescription(g, 0, "Command Formation") 			
						else					  
					    Ping_AddDescription(g, 0, " ") 					    										  
					  end				
					end  
					--special attack e ping			    		    	    
			    if SobGroup_GetHardPointHealth("splitshipyards"..i, "bc") > 0 then
			      if SobGroup_OwnedBy("splitshipyards"..i) == playerIndex then
				      g = Ping_AddSobGroup("Command Shipyard (Balkaan Cannon) "..gname, "name1", "splitshipyards"..i)	   
					    Ping_LabelVisible(g, 1)	
					  end  		    
			      if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then
					    SobGroup_AbilityActivate("splitshipyards"..i, AB_SpecialAttack, 1)	
					    SobGroup_AbilityActivate("splitshipyards"..i, AB_Targeting, 1)
					    if SobGroup_OwnedBy("splitshipyards"..i) == playerIndex then
					      Ping_AddDescription(g, 0, "Command Formation")	
					    end  		 		    			    	    						  
					  else
						  SobGroup_AbilityActivate("splitshipyards"..i, AB_SpecialAttack, 0) 
						  SobGroup_AbilityActivate("splitshipyards"..i, AB_Targeting, 0)
						  if SobGroup_OwnedBy("splitshipyards"..i) == playerIndex then		
						    Ping_AddDescription(g, 0, " ")
						  end  
						end  								  
				  end	
					--emp plasma cannon			    		    	    
			    if SobGroup_GetHardPointHealth("splitshipyards"..i, "gcb") > 0 then			          
			      if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then					    
					    SobGroup_AbilityActivate("splitshipyards"..i, AB_Targeting, 1)					    		 		    			    	    						  
					  else						  
						  SobGroup_AbilityActivate("splitshipyards"..i, AB_Targeting, 0)							  
						end  								  
				  end	
					--pulser 1			    		    	    
			    if SobGroup_GetHardPointHealth("splitshipyards"..i, "pulser") > 0 then			          
			      if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then					    
					    SobGroup_AbilityActivate("splitshipyards"..i, AB_Targeting, 1)					    		 		    			    	    						  
					  else						  
						  SobGroup_AbilityActivate("splitshipyards"..i, AB_Targeting, 0)							  
						end  								  
				  end			
					--pulser 3			    		    	    
			    if SobGroup_GetHardPointHealth("splitshipyards"..i, "pulser2") > 0 then			          
			      if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then					    
					    SobGroup_AbilityActivate("splitshipyards"..i, AB_Targeting, 1)					    		 		    			    	    						  
					  else						  
						  SobGroup_AbilityActivate("splitshipyards"..i, AB_Targeting, 0)							  
						end  								  
				  end			
					--autogun set			    		    	    
			    if SobGroup_GetHardPointHealth("splitshipyards"..i, "bs1") > 0 then			          
			      if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
					     SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then					    
					    SobGroup_AbilityActivate("splitshipyards"..i, AB_Targeting, 1)					    		 		    			    	    						  
					  else						  
						  SobGroup_AbilityActivate("splitshipyards"..i, AB_Targeting, 0)							  
						end  								  
				  end						
					--caso in cui si lancia una o più navi
		      if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
				     SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
				     SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
				     SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
				     SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then				       		    
					else
					  if SobGroup_GetHardPointHealth("splitshipyards"..i, "boost3") > 0 then
			      	SobGroup_SetHardPointHealth("splitshipyards"..i, "boost3", 0)   	
			      elseif SobGroup_GetHardPointHealth("splitshipyards"..i, "boost2") > 0 then
			      	SobGroup_SetHardPointHealth("splitshipyards"..i, "boost2", 0)   	
			      elseif SobGroup_GetHardPointHealth("splitshipyards"..i, "boost1") > 0 then
			      	SobGroup_SetHardPointHealth("splitshipyards"..i, "boost1", 0)   
			      elseif SobGroup_GetHardPointHealth("splitshipyards"..i, "hgn_orders_solarshield") > 0 then
			      	SobGroup_SetHardPointHealth("splitshipyards"..i, "hgn_orders_solarshield", 0)  
			      elseif SobGroup_GetHardPointHealth("splitshipyards"..i, "hgn_orders_remotespaceshield") > 0 then
			      	SobGroup_SetHardPointHealth("splitshipyards"..i, "hgn_orders_remotespaceshield", 0)   		 			
			      end	   		  				    										
			    end		
        --shipyard					
		    elseif SobGroup_AreAnyOfTheseTypes("splitshipyards"..i, "hgn_shipyard") == 1 then		  		      
		      --orders		      
        	orders("splitshipyards"..i, "parade",0,0)
					--orders("splitshipyards"..i, "parade_support",0,0)
					orders("splitshipyards"..i, "clear",0,0)
          orders("splitshipyards"..i, "dock",0,0)	
        	orders("splitshipyards"..i, "evacuation",40,3,runselected)        	           
		      orders("splitshipyards"..i, "guard",0,0) 	      
					--ping
          local gname = i+1  
          if SobGroup_OwnedBy("splitshipyards"..i) == playerIndex then	 
	          g = Ping_AddSobGroup("Basic Shipyard "..gname, "name1", "splitshipyards"..i)	   
					  Ping_LabelVisible(g, 1)					  		    			    
				    Ping_AddDescription(g, 0, " ") 				  			
					end  					
				--battle shipyard	
        elseif SobGroup_AreAnyOfTheseTypes("splitshipyards"..i, "hgn_battleshipyard") == 1 then		  		      
		      --orders		      
        	orders("splitshipyards"..i, "parade",0,0)
					--orders("splitshipyards"..i, "parade_support",0,0)
					orders("splitshipyards"..i, "clear",0,0)
          orders("splitshipyards"..i, "dock",0,0)	
        	orders("splitshipyards"..i, "evacuation",40,3,runselected)        	           
		      orders("splitshipyards"..i, "guard",0,0) 	      					
        --vgr shipyard					
		    else
					--orders		      
        	orders("splitshipyards"..i, "parade",0,0)     
          orders("splitshipyards"..i, "clear",0,0)					
          orders("splitshipyards"..i, "dock",0,0)						
		      orders("splitshipyards"..i, "guard",0,0) 
		    end		    
		    if SobGroup_Selected("splitshipyards"..i) == 1 then	  		      
				  cleaninterface(interfacecleaned, "splitshipyards"..i)	
          interfacecleaned=interfacecleaned+1
		      --speed		      
          UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitshipyards"..i))));
          --race for taskbar
		      if Player_GetRace(SobGroup_OwnedBy("splitshipyards"..i)) == Race_Hiigaran then
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");		        				  
		      else
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
		      end  
          --exp, eff, en					
			    exp1 = SobGroup_GetHardPointHealth("splitshipyards"..i, "experience") * 10000			 		  		  		   	   	        
				  UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1));					  	
				  eff = -(floor((1 - SobGroup_GetHardPointHealth("splitshipyards"..i, "efficency")) * 10)) 		 		  		  		  	        
				  if eff <= -1 then	
				    UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff);	   	  
				  end			
          en = SobGroup_GetHardPointHealth("splitshipyards"..i, "en")	     
					UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));						
				  UI_SetElementSize("NewTaskbar", "subsystems", 210, 48); 
          --icon shipyard guyking					
				  if SobGroup_AreAnyOfTheseTypes("splitshipyards"..i, "hgn_shipyard_g") == 1 then				    
				    if SobGroup_GetHardPointHealth("splitshipyards"..i, "evacuation") == 0 and SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") == 0 then	          
		          enablebtnparade = 1
		        end	 
						--dockaggi
		        if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 then 
				    	UI_SetElementVisible("NewTaskbar", "LMS", 1) 					    		     			    
				  	else     				    	
				    	UI_SetElementVisible("NewTaskbar", "LMSD", 1) 	
				  	end  			      
		        if SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then 
				    	UI_SetElementVisible("NewTaskbar", "LRS", 1) 					    				     			    
				  	else     				    	
				    	UI_SetElementVisible("NewTaskbar", "LRSD", 1) 			
				  	end 
				  	if SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 then 
				    	UI_SetElementVisible("NewTaskbar", "LPS", 1) 					    				     			    
				  	else     				    	
				    	UI_SetElementVisible("NewTaskbar", "LPSD", 1) 			
				  	end  
				  	if SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 then 
				    	UI_SetElementVisible("NewTaskbar", "LWS", 1) 					    				     			    
				  	else     				    	
				    	UI_SetElementVisible("NewTaskbar", "LWSD", 1) 			
				  	end  	 		 	
				  	if SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 then 
				    	UI_SetElementVisible("NewTaskbar", "LCS", 1)				    				     			    
				  	else     				    	
				    	UI_SetElementVisible("NewTaskbar", "LCSD", 1)	
				  	end 
            --balcan cannon						
						if SobGroup_GetHardPointHealth("splitshipyards"..i, "bc") > 0 then
				      if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then
						    UI_SetElementVisible("NewTaskbar", "BC", 1) 						    
						    if SobGroup_OwnedBy("splitshipyards"..i) == playerIndex then
						      enablebtnheavyioncannon = 1
						    end						    
							else
							  UI_SetElementVisible("NewTaskbar", "BC1", 1) 		  				    										
					    end		
					  else
					    UI_SetElementVisible("NewTaskbar", "BCD", 1)  				  
					  end 		
            --blaster						
					  if SobGroup_GetHardPointHealth("splitshipyards"..i, "gcb") > 0 then
				      if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then
						    UI_SetElementVisible("NewTaskbar", "GCB", 1) 										    			    
							else
							  UI_SetElementVisible("NewTaskbar", "GCB1", 1) 		  				    										
					    end		
					  else
					    UI_SetElementVisible("NewTaskbar", "GCBD", 1)  				  
					  end 	
						--pulsers
					  if SobGroup_GetHardPointHealth("splitshipyards"..i, "pulser") > 0 or SobGroup_GetHardPointHealth("splitshipyards"..i, "pulser2") > 0 then		
					    if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then
						    UI_SetElementVisible("NewTaskbar", "P", 1) 										    			    
							else
							  UI_SetElementVisible("NewTaskbar", "P1", 1) 		  				    										
					    end		
					  else
					    UI_SetElementVisible("NewTaskbar", "PD", 1)  				  
					  end 
            --suppressors					
					  if SobGroup_GetHardPointHealth("splitshipyards"..i, "bs1") > 0 then					  
				      if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
						     SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then
						    UI_SetElementVisible("NewTaskbar", "BS", 1) 										    			    
							else
							  UI_SetElementVisible("NewTaskbar", "BS1", 1) 		  				    										
					    end		
					  else
					    UI_SetElementVisible("NewTaskbar", "BSD", 1)  				  
					  end 	
            --mass shield						
					  --if SobGroup_GetHardPointHealth("splitshipyards"..i, "shield") > 0 then
				      --if SobGroup_GetHardPointHealth("splitshipyards"..i, "msdocker") > 0 and
						     --SobGroup_GetHardPointHealth("splitshipyards"..i, "csdocker") > 0 and
						     --SobGroup_GetHardPointHealth("splitshipyards"..i, "psdocker") > 0 and
						     --SobGroup_GetHardPointHealth("splitshipyards"..i, "wsdocker") > 0 and
						     --SobGroup_GetHardPointHealth("splitshipyards"..i, "rsdocker") > 0 then
						    --UI_SetElementVisible("NewTaskbar", "S", 1)   		    
							--else
							  --UI_SetElementVisible("NewTaskbar", "S1", 1) 		  				    										
					    --end		
					  --else
					    --UI_SetElementVisible("NewTaskbar", "SD", 1)  				  
					  --end 
          else
				  	enablebtnparade = 1 	
				  end	  		        	         
	      end  
			end  
		end	
	end	
	
--Command Fortress	
  if ncf > 0 then		
		for i = 0,ncf-1,1 do   
		  if SobGroup_Empty("splitcommandfortresses"..i) == 0 then 		 
        --ark 		  
			  if SobGroup_AreAnyOfTheseTypes("splitcommandfortresses"..i, "hgn_ark") == 1 then
					--orders
          orders("splitcommandfortresses"..i, "clear",0,0)   
        	orders("splitcommandfortresses"..i, "parade",0,0)						
          orders("splitcommandfortresses"..i, "dock",0,0)	
        	orders("splitcommandfortresses"..i, "evacuation",60,6,runselected)
        	orders("splitcommandfortresses"..i, "guard",0,0) 		      
					--energy consume
	        if hwsaving[1] == 6 then        
	          energyConsume("splitcommandfortresses"..i,1,0)           
	        elseif hwsaving[1] == 7 and SobGroup_Empty("star_sol") == 0 then
						sundamageinterface = SobGroup_TakeDamageSol("splitcommandfortresses"..i,0.4,runselected)				
					end        	
          SobGroup_Clear("temp")	   					
			  	SobGroup_GetSobGroupDockedWithGroup("splitcommandfortresses"..i, "temp")
			  	SobGroup_FillShipsByType("temp1", "temp", "hgn_juggernaught")  			  	
			  	if SobGroup_Count("temp1") > 0 then
			  	  if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "disablehyperspace") == 0 then
			      	SobGroup_CreateSubSystem("splitcommandfortresses"..i, "disablehyperspace")
			      end	
			    else
			      SobGroup_SetHardPointHealth("splitcommandfortresses"..i, "disablehyperspace", 0)  
			  	end
        --command fortress					
			  elseif SobGroup_AreAnyOfTheseTypes("splitcommandfortresses"..i, "hgn_commandfortress") == 1 then	
					--orders
					orders("splitcommandfortresses"..i, "clear",0,0)           					
          orders("splitcommandfortresses"..i, "dock",0,0)	
        	orders("splitcommandfortresses"..i, "evacuation",60,6,runselected)	
        	orders("splitcommandfortresses"..i, "guard",0,0) 		       	
					--energy consume
	        if hwsaving[1] == 6 then        
	          energyConsume("splitcommandfortresses"..i,1,2)           
	        elseif hwsaving[1] == 7 and SobGroup_Empty("star_sol") == 0 then
						sundamageinterface = SobGroup_TakeDamageSol("splitcommandfortresses"..i,0.4,runselected)				
					end   				      
					--anti-radiation
		      if Player_HasResearch(SobGroup_OwnedBy("splitcommandfortresses"..i), "CFRadiationDefenseField") == 1 then 	
		        if SobGroup_IsDoingAbility("splitcommandfortresses"..i, AB_DefenseField) == 1 then	       
		          SobGroup_AbilityActivate("splitcommandfortresses"..i, AB_DefenseFieldShield, 1)
		        else
		          SobGroup_AbilityActivate("splitcommandfortresses"..i, AB_DefenseFieldShield, 0)
		        end
		      else
		        SobGroup_AbilityActivate("splitcommandfortresses"..i, AB_DefenseFieldShield, 0)
		      end		
        --orbital station					
		    elseif SobGroup_AreAnyOfTheseTypes("splitcommandfortresses"..i, "hgn_battlestation") == 1 then				 
					--orders        
          orders("splitcommandfortresses"..i, "clear",0,0)                  
					orders("splitcommandfortresses"..i, "evacuation",10,1,runselected)					
          orders("splitcommandfortresses"..i, "dock",0,0)	
					orders("splitcommandfortresses"..i, "guard",0,0) 	      
					orders("splitcommandfortresses"..i, "hyperspaceinhibitor",0,0)		     
					--energy consume
	        if hwsaving[1] == 6 then        
	          energyConsume("splitcommandfortresses"..i,1,1)           
	        elseif hwsaving[1] == 7 and SobGroup_Empty("star_sol") == 0 then
						sundamageinterface = SobGroup_TakeDamageSol("splitcommandfortresses"..i,0.4,runselected)				
					end   
	        SobGroup_AbilityActivate("splitcommandfortresses"..i, AB_Lights, 1)	
          --vgr command fortress					
			  elseif SobGroup_AreAnyOfTheseTypes("splitcommandfortresses"..i, "vgr_commandfortress") == 1 then					
					--orders		      
					orders("splitcommandfortresses"..i, "clear",0,0)   
        	orders("splitcommandfortresses"..i, "parade",0,0)        	           
		      orders("splitcommandfortresses"..i, "guard",0,0) 	
          orders("splitcommandfortresses"..i, "dock",0,0)					
					--energy consume
	        if hwsaving[1] == 6 then        
	          energyConsume("splitcommandfortresses"..i,1,2)           
	        elseif hwsaving[1] == 7 and SobGroup_Empty("star_sol") == 0 then
						sundamageinterface = SobGroup_TakeDamageSol("splitcommandfortresses"..i,0.4,runselected)				
					end					
				end					    
			  if SobGroup_Selected("splitcommandfortresses"..i) == 1 then	
				  cleaninterface(interfacecleaned, "splitcommandfortresses"..i)	
          interfacecleaned=interfacecleaned+1
					--speed
			    UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitcommandfortresses"..i))));
			    --race for taskbar	    
		      if Player_GetRace(SobGroup_OwnedBy("splitcommandfortresses"..i)) == Race_Hiigaran then
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");		        
		      else
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
		      end    
          --exp, eff, en					
			    exp1 = SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "experience") * 10000			 		  		  		   	   	        
				  UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1));					  	  
				  eff = -(floor((1 - SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "efficency")) * 10)) 
				  if eff <= -1 then		 		  		  		  	        
				    UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff);	   	  
				  end				
          en = SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "en")		 			  		  		  		  	        
			    UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));							
				  if SobGroup_AreAnyOfTheseTypes("splitcommandfortresses"..i, "hgn_commandfortress") == 1 then 						  
					  UI_SetElementSize("NewTaskbar", "subsystems", 210, 48);			   
					  UI_SetElementSize("NewTaskbar", "subsystem11", 0, 0); 
					  UI_SetElementSize("NewTaskbar", "subsystem12", 0, 0);    
					  if (SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 37") > 0 or SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 38") > 0 or SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 39") > 0) and SobGroup_OwnedBy("splitcommandfortresses"..i) == playerIndex then  
				      enablebtnnuclear = 1					  
				    end	
				  elseif SobGroup_AreAnyOfTheseTypes("splitcommandfortresses"..i, "hgn_battlestation") == 1 then 			 
					  UI_SetElementSize("NewTaskbar", "subsystems", 210, 24);
					  MaxCivCap = 2000    
				    if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "cb1") > 0 then
		          MaxCivCap = MaxCivCap + 2000
		        end				
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "cb2") > 0 then
		          MaxCivCap = MaxCivCap + 2000
		        end				
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "cb3") > 0 then
		          MaxCivCap = MaxCivCap + 2000
		        end				
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "cb4") > 0 then
		          MaxCivCap = MaxCivCap + 2000
		        end				
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "cb5") > 0 then
		          MaxCivCap = MaxCivCap + 2000
		        end	
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "cb6") > 0 then
		          MaxCivCap = MaxCivCap + 2000
		        end
		        orbitalstationPop = floor(SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "pop")*100000)
				    if orbitalstationPop > MaxCivCap then
				      orbitalstationPop = MaxCivCap
				    end						
					  UI_SetElementVisible("NewTaskbar", "OSframe", 1)						  
					  UI_SetTextLabelText("NewTaskbar", "oscivilian", ""..orbitalstationPop.."/"..MaxCivCap);					  			  
					elseif SobGroup_AreAnyOfTheseTypes("splitcommandfortresses"..i, "hgn_ark") == 1 then   
				    if Player_HasResearch(SobGroup_OwnedBy("splitcommandfortresses"..i), "ImprovedTorpedoArk") == 1 or Player_HasResearch(SobGroup_OwnedBy("splitcommandfortresses"..i), "nuclear3") == 1 then
				      if SobGroup_OwnedBy("splitcommandfortresses"..i) == playerIndex then
								enablebtnnuclear = 1
              end								
				      UI_SetElementVisible("NewTaskbar", "abilities", 1)				      
				      UI_SetElementVisible("NewTaskbar", "torpedo", 1)
					    UI_SetTextLabelText("NewTaskbar", "torpedotext", "Nuclear");			    	
				    end
				  	UI_SetElementSize("NewTaskbar", "subsystems", 192, 24);						  	
				  	if SobGroup_Count("temp1") == 1 then  
			    	  UI_SetElementVisible("NewTaskbar", "LJ1a", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ2Da", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ3Da", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ4Da", 1) 
			    	elseif SobGroup_Count("temp1") == 2 then
			    	  UI_SetElementVisible("NewTaskbar", "LJ1a", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ2a", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ3Da", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ4Da", 1) 
			    	elseif SobGroup_Count("temp1") == 3 then
			    	  UI_SetElementVisible("NewTaskbar", "LJ1a", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ2a", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ3a", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ4Da", 1) 
			    	elseif SobGroup_Count("temp1") == 4 then
			    	  UI_SetElementVisible("NewTaskbar", "LJ1a", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ2a", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ3a", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ4a", 1) 
			    	else
			    	  UI_SetElementVisible("NewTaskbar", "LJ1Da", 1) 
			    	  UI_SetElementVisible("NewTaskbar", "LJ2Da", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ3Da", 1)
			    	  UI_SetElementVisible("NewTaskbar", "LJ4Da", 1) 
			    	end					    	 		    	        		    		  		    			  	
					else 				  	  
				    UI_SetElementSize("NewTaskbar", "subsystems", 192, 24);				  
				  end 	      
	      end  
			end  
		end		
	end	
	
--Carrier / Light Carrier   
  if nc > 0 then         
	  for i = 0,nc-1,1 do  
	    if SobGroup_Empty("splitcarriers"..i) == 0 then	    
				--energy consume
        if hwsaving[1] == 7 then       
          energyConsume("splitcarriers"..i,1,2)          
					if SobGroup_GetHardPointHealth("splitcarriers"..i, "pg") > 0 then
						FX_StartEvent("splitcarriers"..i, "EnergyLow")					       
					end	
				--sundamage	
				elseif hwsaving[1] == 8 and SobGroup_Empty("star_sol") == 0 then
					sundamageinterface = SobGroup_TakeDamageSol("splitcarriers"..i,0.8,runselected)			
				--worldbound	
				elseif SobGroup_InWorldBound("splitcarriers"..i, 0) == 0 then 
	        SobGroup_SetHealth("splitcarriers"..i, 0)
	      end
				--scaver
	      if SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_scaver") == 1 then	
          SobGroup_ForceStayDockedIfDocking("splitcarriers"..i)		
          --miner missiles					
					SobGroup_Clear("temp"..SobGroup_OwnedBy("splitcarriers"..i))	
					if ((Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "isai" ) == 1) and					   
	      	   (SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy("splitcarriers"..i), "AsteroidSmasher", "splitcarriers"..i, 8000) == 1) and
	      	   (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitcarriers"..i), "hgn_minermissile") < 3) and
	      	   (Player_GetRU(SobGroup_OwnedBy("splitcarriers"..i)) > 5000)) then 
	      	  SobGroup_CreateShip("splitcarriers"..i, "hgn_minermissile")
						SobGroup_CreateShip("splitcarriers"..i, "hgn_minermissile1")
	      	  --Player_SetRU(SobGroup_OwnedBy("splitcarriers"..i), Player_GetRU(SobGroup_OwnedBy("splitcarriers"..i)) - 1500)
	      	end					
					--orders 
					orders("splitcarriers"..i, "clear",0,0)        	        	
        	orders("splitcarriers"..i, "evacuation",15,1,runselected)
        	orders("splitcarriers"..i, "guard",0,0) 		      
		      orders("splitcarriers"..i, "fusion",0,0)  
        elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "vgr_scaver") == 1 then	          		
          --miner missiles					
					SobGroup_Clear("temp"..SobGroup_OwnedBy("splitcarriers"..i))	
					if ((Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "isai" ) == 1) and					   
	      	   (SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy("splitcarriers"..i), "AsteroidSmasher", "splitcarriers"..i, 8000) == 1) and
	      	   (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitcarriers"..i), "vgr_minermissile") < 3) and
	      	   (Player_GetRU(SobGroup_OwnedBy("splitcarriers"..i)) > 5000)) then 
	      	  SobGroup_CreateShip("splitcarriers"..i, "vgr_minermissile")						
	      	  --Player_SetRU(SobGroup_OwnedBy("splitcarriers"..i), Player_GetRU(SobGroup_OwnedBy("splitcarriers"..i)) - 1500)
	      	end					
					--orders 
					orders("splitcarriers"..i, "clear",0,0)        	        	        	
        	orders("splitcarriers"..i, "guard",0,0) 		      
		      orders("splitcarriers"..i, "fusion",0,0) 					
        --carrier					
	      elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_carrier") == 1 then	
	        --orders
	        orders("splitcarriers"..i, "clear",0,0)   
        	orders("splitcarriers"..i, "parade",0,0)						
          orders("splitcarriers"..i, "dock",0,0)	
        	orders("splitcarriers"..i, "evacuation",30,2,runselected)
        	orders("splitcarriers"..i, "guard",0,0) 
        --fleet carrier					
				elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_spacecarrier") == 1 then	
	        --orders	        
					orders("splitcarriers"..i, "clear",0,0)
        	orders("splitcarriers"..i, "evacuation",30,2,runselected)
        	orders("splitcarriers"..i, "guard",0,0) 						
          orders("splitcarriers"..i, "dock",0,0)	
				--light carrier	
	      elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_lightcarrier") == 1 then
	        --orders
	        orders("splitcarriers"..i, "clear",0,0)   
        	orders("splitcarriers"..i, "parade",0,0)					
          orders("splitcarriers"..i, "dock",0,0)	
        	orders("splitcarriers"..i, "evacuation",10,1,runselected)	
        	orders("splitcarriers"..i, "guard",0,0)   
        --battle carrier					
	      elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_battlecarrier") == 1 then
	        --orders
	        orders("splitcarriers"..i, "clear",0,0)   
        	orders("splitcarriers"..i, "parade",0,0)						
          orders("splitcarriers"..i, "dock",0,0)	
        	orders("splitcarriers"..i, "evacuation",30,3,runselected)
        	orders("splitcarriers"..i, "guard",0,0)  
        --vgr carrier  					
				elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "vgr_carrier,vgr_lightcarrier") == 1 then	
				  --miner missiles
				  SobGroup_Clear("temp"..SobGroup_OwnedBy("splitcarriers"..i))	
					if ((Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "isai" ) == 1) and					   
	      	   (SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy("splitcarriers"..i), "AsteroidSmasher", "splitcarriers"..i, 8000) == 1) and
	      	   (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitcarriers"..i), "vgr_minermissile") < 3) and
	      	   (Player_GetRU(SobGroup_OwnedBy("splitcarriers"..i)) > 5000)) then 
	      	  SobGroup_CreateShip("splitcarriers"..i, "vgr_minermissile")						
	      	  --Player_SetRU(SobGroup_OwnedBy("splitcarriers"..i), Player_GetRU(SobGroup_OwnedBy("splitcarriers"..i)) - 1500)
	      	end					
	        --orders	        
					orders("splitcarriers"..i, "clear",0,0)
        	orders("splitcarriers"..i, "parade",0,0)	           
          orders("splitcarriers"..i, "dock",0,0)						
        	orders("splitcarriers"..i, "guard",0,0) 	
        elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "vgr_battlecarrier") == 1 then	
	        --Orders	        
					orders("splitcarriers"..i, "clear",0,0)
        	orders("splitcarriers"..i, "parade",0,0)	             
          orders("splitcarriers"..i, "dock",0,0)						
        	orders("splitcarriers"..i, "guard",0,0) 					
	      end
		    if SobGroup_Selected("splitcarriers"..i) == 1 then	   
				  cleaninterface(interfacecleaned, "splitcarriers"..i)	
          interfacecleaned=interfacecleaned+1
		      UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitcarriers"..i))));
		      --race for taskbar	    
		      if Player_GetRace(SobGroup_OwnedBy("splitcarriers"..i)) == Race_Hiigaran then
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");		        
		      else
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
		      end   
          --exp, eff, en					
			    exp1 = SobGroup_GetHardPointHealth("splitcarriers"..i, "experience") * 10000			 		  		  		   	   	        
			    UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1)); 			    
			    eff = -(floor((1 - SobGroup_GetHardPointHealth("splitcarriers"..i, "efficency")) * 10)) 		
			    if eff <= -1 then	 		  		  		  	        
				    UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff);	   	  		  
				  end				  
					en = SobGroup_GetHardPointHealth("splitcarriers"..i, "en")		 			  		  		  		  	        
				  UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));
		      if SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_lightcarrier") == 1 then 
		        UI_SetElementSize("NewTaskbar", "subsystem7", 0, 0);  
				    UI_SetElementSize("NewTaskbar", "subsystem8", 0, 0); 
		        UI_SetElementSize("NewTaskbar", "subsystem9", 0, 0);  
				    UI_SetElementSize("NewTaskbar", "subsystem10", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem11", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem12", 0, 0);         	            	    
		      elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_carrier") == 1 then 		
		        UI_SetElementSize("NewTaskbar", "subsystem12", 0, 0); 			    	
					elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_spacecarrier") == 1 then
            UI_SetElementSize("NewTaskbar", "subsystem5", 0, 0);  
			      UI_SetElementSize("NewTaskbar", "subsystem6", 0, 0);  						
		        UI_SetElementSize("NewTaskbar", "subsystem7", 0, 0);  
			      UI_SetElementSize("NewTaskbar", "subsystem8", 0, 0);  	
			      UI_SetElementSize("NewTaskbar", "subsystem9", 0, 0);  
						UI_SetElementSize("NewTaskbar", "subsystem10", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem11", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem12", 0, 0);  		    				     
				  elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_battlecarrier") == 1 then 	
				    UI_SetElementSize("NewTaskbar", "subsystem12", 0, 0);			    				     
				  elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_scaver,vgr_scaver") == 1 then 	 	        
		        UI_SetElementVisible("NewTaskbar", "Sframe", 1) 
		        UI_SetTextLabelText("NewTaskbar", "lblResourceUnits", ""..Player_GetRU(SobGroup_OwnedBy("splitcarriers"..i)).."/"..RUMaxCapacityList[SobGroup_OwnedBy("splitcarriers"..i)+1]);	      		       	      
		        ff=0
				    if SobGroup_IsDocked("splitcarriers"..i) == 0 and
				       SobGroup_GetHardPointHealth("splitcarriers"..i, "hgn_orders_fusion") == 0 and
				       SobGroup_GetHardPointHealth("splitcarriers"..i, "Fusion") > 0 then				       
					    if Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "Scaverautogenres3") == 1 then ff=120					           
					    elseif Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "Scaverautogenres2") == 1 then ff=90			      
					    elseif Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "Scaverautogenres1") == 1 then ff=60									      
					    elseif SobGroup_GetHardPointHealth("splitcarriers"..i, "Fusion") > 0 then ff=30				  			        
				      end				      	      
					  end		        
			      UI_SetTextLabelText("NewTaskbar", "Sfusion", ""..ff.."/"..fusionList[SobGroup_OwnedBy("splitcarriers"..i) + 1]);
				    if SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_scaver") == 1 then
							UI_SetElementSize("NewTaskbar", "subsystem10", 0, 0);
						end 
				    UI_SetElementSize("NewTaskbar", "subsystem11", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem12", 0, 0); 
					elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "vgr_lightcarrier") == 1 then
					  if Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "ImprovedTorpedoLightCarrier") == 1 then
			    	  UI_SetElementVisible("NewTaskbar", "abilities1", 1)
			    	  UI_SetElementSize("NewTaskbar", "fusionm", 66, 15);				      
				      UI_SetTextLabelText("NewTaskbar", "fusiontext", "Fusion");
				    end	 			
						UI_SetElementSize("NewTaskbar", "subsystem10", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem11", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem12", 0, 0); 	
				  elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "vgr_carrier") == 1 then				    
			      UI_SetElementSize("NewTaskbar", "subsystem9", 0, 0);  
						UI_SetElementSize("NewTaskbar", "subsystem10", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem11", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem12", 0, 0); 
			    elseif SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "vgr_battlecarrier") == 1 then 			
            if Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "ImprovedTorpedoBattleCarrier") == 1 then
			    	  UI_SetElementVisible("NewTaskbar", "abilities1", 1)
			    	  UI_SetElementSize("NewTaskbar", "fusionm", 66, 15);				      
				      UI_SetTextLabelText("NewTaskbar", "fusiontext", "Fusion");
				    end	 									
			      UI_SetElementSize("NewTaskbar", "subsystem8", 0, 0);  	
			      UI_SetElementSize("NewTaskbar", "subsystem9", 0, 0);  
						UI_SetElementSize("NewTaskbar", "subsystem10", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem11", 0, 0); 
				    UI_SetElementSize("NewTaskbar", "subsystem12", 0, 0); 
			    end 			  
				  UI_SetElementSize("NewTaskbar", "subsystems", 210, 48); 	
          enablebtnparade = 1 	       
	      end  
			end  	       
		end	
  end	
  
--Hyperspace Station	  	
  if nhs > 0 then  	
	  for i = 0,nhs-1,1 do
	    if SobGroup_Empty("splithyperspacestations"..i) == 0 then 			
	      --orders
	      orders("splithyperspacestations"..i, "clear",0,0)                  
        orders("splithyperspacestations"..i, "evacuation",10,1,runselected)				
        orders("splithyperspacestations"..i, "dock",0,0)	
        orders("splithyperspacestations"..i, "guard",0,0) 	      
	      orders("splithyperspacestations"..i, "hyperspaceinhibitor",0,0)		      
				--energy consume
        if hwsaving[1] == 8 then        
          energyConsume("splithyperspacestations"..i,1,2)	      
        --sundamage					
        elseif hwsaving[1] == 9 and SobGroup_Empty("star_sol") == 0 then
					sundamageinterface = SobGroup_TakeDamageSol("splithyperspacestations"..i,0.8,runselected)				
				end      
		    if SobGroup_Selected("splithyperspacestations"..i) == 1 then
				  cleaninterface(interfacecleaned, "splithyperspacestations"..i)	
          interfacecleaned=interfacecleaned+1
					--speed
		      UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splithyperspacestations"..i))));
		      --race for taskbar	    
		      if Player_GetRace(SobGroup_OwnedBy("splithyperspacestations"..i)) == Race_Hiigaran then
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
		        en = SobGroup_GetHardPointHealth("splithyperspacestations"..i, "en")		 			  		  		  		  	        
			      UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));	
		      else
		        UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
		      end   
			    exp1 = SobGroup_GetHardPointHealth("splithyperspacestations"..i, "experience") * 10000			 		  		  		   	   
			    UI_SetTextLabelText("NewTaskbar", "experience", ""..floor(exp1)); 			    	
			    eff = -(floor((1 - SobGroup_GetHardPointHealth("splithyperspacestations"..i, "efficency")) * 10)) 		 		  		  		  	        
			    if eff <= -1 then	
				    UI_SetTextLabelText("NewTaskbar", "efficency", ""..eff); 		       
				  end			        
		    end    
		  end  
	  end  
	end		
	
--Platform
  if np > 0 then         
	  for i = 0,np-1,1 do 	    
	    if SobGroup_Empty("splitplatforms"..i) == 0 then 	  
			  SobGroup_ForceStayDockedIfDocking("splitplatforms"..i)	 
				--sundamage
        if SobGroup_Empty("star_sol") == 0 and hwsaving[1] == 7 then        
          sundamageinterface = SobGroup_TakeDamageSol("splitplatforms"..i,0.8,runselected)          	
        end		   				  
	      if SobGroup_AreAnyOfTheseTypes("splitplatforms"..i, "hgn_massiveturret") == 0 then		
          --patchers
	        if SobGroup_AreAnyOfTheseTypes("splitplatforms"..i, "hgn_patcher, vgr_patcher") == 1 then	
					  if Player_HasResearch(SobGroup_OwnedBy("splitplatforms"..i), "isai" ) == 0 then
							--if SobGroup_IsDoingAbility("splitplatforms"..i, abilityList[1]) == 0 and --move 
							   --SobGroup_IsDoingAbility("splitplatforms"..i, abilityList[4]) == 0 and --stop
                 --SobGroup_IsDoingAbility("splitplatforms"..i, abilityList[6]) == 0 and --retire
								 --SobGroup_IsDoingAbility("splitplatforms"..i, abilityList[9]) == 0 and --dock 
								 --SobGroup_IsDoingAbility("splitplatforms"..i, abilityList[12]) == 0 and --parade 
								 --SobGroup_IsDoingAbility("splitplatforms"..i, abilityList[13]) == 0 then --repair
							  --SobGroup_RepairSobGroup("splitplatforms"..i, "Player_Ships"..SobGroup_OwnedBy("splitplatforms"..i))
							--end
						else	
							SobGroup_RepairSobGroup("splitplatforms"..i, "Player_Ships"..SobGroup_OwnedBy("splitplatforms"..i))
						end	
			    end  					
				  --adv sentinel
	        if SobGroup_AreAnyOfTheseTypes("splitplatforms"..i, "hgn_artillerysentinel") == 1 then	
					  --unable asset construction if modules are present
						if SobGroup_GetHardPointHealth("splitplatforms"..i, "k1") == 0 and
               SobGroup_GetHardPointHealth("splitplatforms"..i, "k2") == 0 and
							 SobGroup_GetHardPointHealth("splitplatforms"..i, "k3") == 0 and
							 SobGroup_GetHardPointHealth("splitplatforms"..i, "k4") == 0 then
							SobGroup_CreateSubSystemCheck("splitplatforms"..i, "canbuildassets", "canbuildassets") 
						else
						  SobGroup_SetHardPointHealth("splitplatforms"..i, "canbuildassets", 0)
						end		
						--set asset to 0 (UI) if one module is recycled/destroyed
						if SobGroup_GetHardPointHealth("splitplatforms"..i, "k1") > 0 or
               SobGroup_GetHardPointHealth("splitplatforms"..i, "k2") > 0 or
							 SobGroup_GetHardPointHealth("splitplatforms"..i, "k3") > 0 or
							 SobGroup_GetHardPointHealth("splitplatforms"..i, "k4") > 0 then
							SobGroup_SetHardPointHealth("splitplatforms"..i, "hgn_orders_buildasset1", 0)
							SobGroup_SetHardPointHealth("splitplatforms"..i, "hgn_orders_buildasset2", 0)
							SobGroup_SetHardPointHealth("splitplatforms"..i, "hgn_orders_buildasset3", 0)						
						end		
	          --orders                     
			      orders("splitplatforms"..i, "evacuation",20,1,runselected) 			      
			      orders("splitplatforms"..i, "destroyallguns",0,0)
						orders("splitplatforms"..i, "buildasset1",0,0,runselected)
						orders("splitplatforms"..i, "buildasset2",0,0,runselected)
						orders("splitplatforms"..i, "buildasset3",0,0,runselected)
						--energy consume
			      if hwsaving[1] == 9 then 	     
              energyConsume("splitplatforms"..i,1,1)	              
            end  
            if SobGroup_IsDocked("splitplatforms"..i) == 1 then			            
							SobGroup_MakeSelectable("splitplatforms"..i, 0)			      
							if SobGroup_HealthPercentage("splitplatforms"..i) <= 0.25 then
								SobGroup_SetInvulnerability("splitplatforms"..i, 1)	
							else
								SobGroup_SetInvulnerability("splitplatforms"..i, 0)	  
							end 		      
						else        
							SobGroup_MakeSelectable("splitplatforms"..i, 1)			      
						end			    			      
			    end  				        
			    if SobGroup_Selected("splitplatforms"..i) == 1 then		
					  cleaninterface(interfacecleaned, "splitplatforms"..i)	
            interfacecleaned=interfacecleaned+1
						--speed
			      UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitplatforms"..i))));
			      --race for taskbar	    
			      if Player_GetRace(SobGroup_OwnedBy("splitplatforms"..i)) == Race_Hiigaran then
			        UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
			      else
			        UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
			      end  
			      if SobGroup_AreAnyOfTheseTypes("splitplatforms"..i, "hgn_artillerysentinel") == 1 then	
				      en = SobGroup_GetHardPointHealth("splitplatforms"..i, "en")		 			  		  		  		  	        
				      UI_SetTextLabelText("NewTaskbar", "energy", ""..floor((en-0.5)*1000));	
              UI_SetElementSize("NewTaskbar", "subsystems", 128, 24);     							
			     	end			      		  
					  enablebtnparade = 1			        
					end	
        --massive turret					
        else	             	
		      if SobGroup_CanDoAbility("splitplatforms"..i, AB_Move) == 1 then
		        SobGroup_AbilityActivate("splitplatforms"..i, AB_Attack, 0)
		      else
		        SobGroup_AbilityActivate("splitplatforms"..i, AB_Attack, 1)
		      end
		      if SobGroup_Selected("splitplatforms"..i) == 1 then		
					  cleaninterface(interfacecleaned, "splitplatforms"..i)	
            interfacecleaned=interfacecleaned+1
						--speed
			      UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitplatforms"..i))));
			      --race for taskbar	    
			      if Player_GetRace(SobGroup_OwnedBy("splitplatforms"..i)) == Race_Hiigaran then
			        UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
			      else
			        UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
			      end  			           
					end					     
		    end			  			
			end			
		end		                   				
  end	

--Fighter	
  if hwsaving[1] == 1 then
		for z = 1,6,1 do
			for i = 0,nfi[z]-1,1 do  	 		  
				if SobGroup_Empty("splitfighters"..(z-1) .. tostring(i)) == 0	then			
					--sundamage
					if SobGroup_Empty("star_sol") == 0 then        
						sundamageinterface = SobGroup_TakeDamageSol("splitfighters"..(z-1) .. tostring(i),0.9,runselected)          	
					end		    	       
					if SobGroup_Selected("splitfighters"..(z-1) .. tostring(i)) == 1 then		
					  cleaninterface(interfacecleaned, "splitfighters"..(z-1) .. tostring(i))	
            interfacecleaned=interfacecleaned+1
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitfighters"..(z-1) .. tostring(i)))));
						--race for taskbar	    
						if Player_GetRace(z-1) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end 
            --special weapon button 						
						if ((SobGroup_AreAnyOfTheseTypes("splitfighters"..(z-1) .. tostring(i), "hgn_hft, hgn_hftl") == 1 and Player_HasResearch(playerIndex, "ImprovedCallistoAvenger" ) == 1) or
						   (SobGroup_AreAnyOfTheseTypes("splitfighters"..(z-1) .. tostring(i), "hgn_lbomber, hgn_lbomberl") == 1 and Player_HasResearch(playerIndex, "lbomberEMPAbility" ) == 1)) and
							 z-1 == playerIndex then 	   
							enablebtncallisto = 1														 
						end  
						enablebtnparade = 1
					end  					    
				end		      
			end		                   				
		end
  end  
  
--Core
  if hwsaving[1] == 9 then
		for z = 0,(Universe_PlayerCount()-1),1 do	        
			if Player_IsAlive(z) == 1 then    
				if Player_GetRace(z) == Race_Hiigaran then
					if SobGroup_Empty("hgn_core"..z) == 0 then	
            SobGroup_ForceStayDockedIfDocking("hgn_core"..z) 
						SobGroup_AllowPassiveActionsAlways("hgn_core"..z, 1)					
						--sundamage
						if SobGroup_Empty("star_sol") == 0 then        
							sundamageinterface = SobGroup_TakeDamageSol("hgn_core"..z,0.6,runselected)          	
						end		   										
						if SobGroup_Selected("hgn_core"..z) == 1 then		
						  cleaninterface(interfacecleaned, "hgn_core"..z)	
              interfacecleaned=interfacecleaned+1	
							--speed
							UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("hgn_core"..z))));					   
							--race
							if Player_GetRace(SobGroup_OwnedBy("hgn_core"..z)) == Race_Hiigaran then
								UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
							else
								UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
							end   			  
							enablebtnparade = 1	    															
						end	 				
					end	  	
				end
			end
		end	 
  end 	
  
--Corvette
  if hwsaving[1] == 3 then
		for z = 1,6,1 do
			for i = 0,nco[z]-1,1 do  	 		  
				if SobGroup_Empty("splitcorvettes"..(z-1) .. tostring(i)) == 0	then	
					--sundamage
					if SobGroup_Empty("star_sol") == 0 then        
						sundamageinterface = SobGroup_TakeDamageSol("splitcorvettes"..(z-1) .. tostring(i),0.9,runselected)          	
					end						
					if SobGroup_Selected("splitcorvettes"..(z-1) .. tostring(i)) == 1 then	
					  cleaninterface(interfacecleaned, "splitcorvettes"..(z-1) .. tostring(i))	
            interfacecleaned=interfacecleaned+1	
						--speed
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitcorvettes"..(z-1) .. tostring(i)))));
						--race for taskbar	    
						if Player_GetRace(z-1) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end   				  
						enablebtnparade = 1							
					end		
				end		
			end		                   				
		end	
  end  

--sonde  
  if hwsaving[1] == 4 then	
	  for z = 1,6,1 do
			for i = 0,nonp[z]-1,1 do  	 		  
				if SobGroup_Empty("splitothersnoparade"..(z-1) .. tostring(i)) == 0	then 
				  --sundamage
					if SobGroup_Empty("star_sol") == 0 then        
						sundamageinterface = SobGroup_TakeDamageSol("splitothersnoparade"..(z-1) .. tostring(i),0.4,runselected)          	
					end						          
         	if SobGroup_Selected("splitothersnoparade"..(z-1) .. tostring(i)) == 1 then	
						cleaninterface(interfacecleaned, "splitothersnoparade"..(z-1) .. tostring(i))	
						interfacecleaned=interfacecleaned+1
            --speed 						
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitothersnoparade"..(z-1) .. tostring(i)))));
						--race for taskbar	    
						if Player_GetRace(z-1) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end						
					end						
				end		             
			end 
		end		
  end  
  
--Frigate	
  if hwsaving[1] == 8 then
		if nf > 0 then				
			for i = 0,nf-1,1 do         
				if SobGroup_Empty("splitfrigates"..i) == 0 then 	
					--sundamage
					if SobGroup_Empty("star_sol") == 0 then        
						sundamageinterface = SobGroup_TakeDamageSol("splitfrigates"..i,0.9,runselected)          	
					end																		 
					if SobGroup_Selected("splitfrigates"..i) == 1 then
					  cleaninterface(interfacecleaned, "splitfrigates"..i)	
            interfacecleaned=interfacecleaned+1
            --speed						
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitfrigates"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitfrigates"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end   
						--special weapons button	        
						if SobGroup_AreAnyOfTheseTypes("splitfrigates"..i, "hgn_torpedofrigate") == 1 and Player_HasResearch(playerIndex, "ImprovedCallistoTorpedo" ) == 1 and SobGroup_OwnedBy("splitfrigates"..i) == playerIndex then 	   
							enablebtncallisto = 1																					
						end	        
						if SobGroup_AreAnyOfTheseTypes("splitfrigates"..i, "vgr_infiltratorfrigate") == 1 and Player_HasResearch(playerIndex, "PerforateAbility" ) == 1 and SobGroup_OwnedBy("splitfrigates"..i) == playerIndex then
							enablebtnperforate = 1																					 
						end
						--if SobGroup_AreAnyOfTheseTypes("splitfrigates"..i, "vgr_commandfrigate") == 1 then
						  --UI_SetElementSize("NewTaskbar", "subsystems", 32, 24);																									 
						--end						
            enablebtnparade = 1 						
					end		     
				end  
			end		  
		end	
	end
	
--Missiles	
  if hwsaving[1] == 7 then
		if nnb > 0 then				
			for i = 0,nnb-1,1 do         
				if SobGroup_Empty("splitnuclearbombs"..i) == 0 then 																				 
					if SobGroup_Selected("splitnuclearbombs"..i) == 1 then
					  cleaninterface(interfacecleaned, "splitnuclearbombs"..i)	
            interfacecleaned=interfacecleaned+1
            --speed						
						UI_SetTextLabelText("NewTaskbar", "unitactualspeed", ""..floor(sqrt(SobGroup_GetActualSpeed("splitnuclearbombs"..i))));
						--race for taskbar	    
						if Player_GetRace(SobGroup_OwnedBy("splitnuclearbombs"..i)) == Race_Hiigaran then
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Hiigaran");
						else
							UI_SetTextLabelText("NewTaskbar", "unitrace", "Vaygr");
						end 								
					end		     
				end  
			end		  
		end	
	end	

--medals		
	if exp1 >= 500 then
    UI_SetElementVisible("NewTaskbar", "medal5", 1) 
  end  
  if exp1 >= 400 then
    UI_SetElementVisible("NewTaskbar", "medal4", 1) 
  end  
  if exp1 >= 300 then
    UI_SetElementVisible("NewTaskbar", "medal3", 1) 
  end  
  if exp1 >= 200 then
    UI_SetElementVisible("NewTaskbar", "medal2", 1) 
  end  
  if exp1 >= 100 then
    UI_SetElementVisible("NewTaskbar", "medal1", 1) 
  end
  	
--timing	
  if Universe_GameTime() - lastUniverse_GameTime >= 5 then	          
    lastUniverse_GameTime = Universe_GameTime()      
  end      	

--hwsaving update	
	hwsaving[1] = hwsaving[1] + 1
	
--energy	  
  if hwsaving[1] >= 10 then  
    for z = 0,(Universe_PlayerCount()-1),1 do	        
	    if Player_IsAlive(z) == 1 then    
		  	if Player_GetRace(z) == Race_Hiigaran then		    
			    --no supero limiti
					if powerList[z+1] < -99 then
			      powerList[z+1] = -99
			    end   
			    if powerList[z+1] > 99 then
			      powerList[z+1] = 99
			    end			  
			    --aumenta il totale di energia e no supero limiti 
			    powerListStored[z+1] = powerListStored[z+1] + powerList[z+1]
					if powerListStored[z+1] < 0 then
					  powerListStored[z+1] = 0	  
					end 
					if powerListStored[z+1] >= powerListMax[z+1] then
					  powerListStored[z+1] = powerListMax[z+1]
					end					
				  --setta l'effetto dell'energia su sottosistema/flotta
				  multiplier = powerListStored[z+1]/2000				  
				  multiplier = multiplier*energysensitivity
				  if multiplier < 0 then
				    multiplier = 0
				  end
				  if multiplier > 1 then
				    multiplier = 1
				  end
			    if Player_HasResearch(z, "isai" ) == 0 then
			      SobGroup_SetHardPointHealth("supporter"..z, "energy", multiplier)
			      --in questo modo la ps costruisce sempre alla stessa velocità
			      if SobGroup_Count("hgn_power"..z) > 0 then
			        SobGroup_SetHardPointHealth("hgn_power"..z, "energycontro", multiplier)
			      end  
			    else
			      SobGroup_SetHardPointHealth("supporter"..z, "energy", 0.5)
			    end	
          --x ui
					multiplierbuild = floor((multiplier-0.5)*140)
					multiplierspeed = floor((multiplier-0.5)*40)					
					--overcharge				  
				  if SobGroup_Count("hgn_power"..z) > 0 then	
				    if SobGroup_OwnedBy("hgn_power"..z) == playerIndex then	
					    g = Ping_AddSobGroup("Brazer Core ", "energy", "hgn_power"..z)
							Ping_LabelVisible(g, 1)		
							Ping_AddDescription(g, 0, "Energy " .. floor(powerList[z+1]) .. "/" .. floor(powerListStored[z+1]) .. "/" .. floor(powerListMax[z+1]))
						end	
						if multiplier >= 0.5 then						  
						  if SobGroup_OwnedBy("hgn_power"..z) == playerIndex then
								Ping_AddDescription(g, 2, "Build Rate +" .. multiplierbuild .. "%") 
							end								
							if SobGroup_OwnedBy("hgn_power"..z) == playerIndex then
								Ping_AddDescription(g, 3, "Navigation/Attack +" .. multiplierspeed .. "%")  
							end									
						elseif multiplier < 0.5 then						  
						  if SobGroup_OwnedBy("hgn_power"..z) == playerIndex then
						  	Ping_AddDescription(g, 2, "Build Rate " .. multiplierbuild .. "%")		
						  end							  
						  if SobGroup_OwnedBy("hgn_power"..z) == playerIndex then
								Ping_AddDescription(g, 3, "Navigation/Attack " .. multiplierspeed .. "%")	
							end								
						end			
				    --damage su power station      
				    if powerList[z+1] < 0 then						  
				      damage = floor(-0.001*powerList[z+1]*1000) 
				      if SobGroup_IsDocked("hgn_power"..z) == 1 then
							  --SobGroup_TakeDamage("hgn_power"..z, -0.00025*powerList[z+1]*runselected)
							elseif SobGroup_GetHardPointHealth("hgn_power"..z, "hgn_orders_powersave") > 0 then
								SobGroup_TakeDamage("hgn_power"..z, -0.00025*powerList[z+1]*runselected)		    	
							else
					      SobGroup_TakeDamage("hgn_power"..z, -0.0005*powerList[z+1]*runselected)
					    end				    
					    if damage >= 1 then
					      if SobGroup_OwnedBy("hgn_power"..z) == playerIndex then						   
									Ping_AddDescription(g, 1, "OVERCHARGE " .. damage .. "%") 	
								end					   
							end								
							--malfunzionamento sistemi in overcharge
							if powerListStored[z+1] <= 10 then
							  if nsy > 0 then		
									for i = 0,nsy-1,1 do       
										if SobGroup_Empty("splitshipyards"..i) == 0 then	
										  if SobGroup_AreAnyOfTheseTypes("splitshipyards"..i, "hgn_shipyard_g") == 1 then
												if SobGroup_GetHardPointHealth("splitshipyards"..i, "boost1") > 0 then		 
													SobGroup_SetHardPointHealth("splitshipyards"..i, "boost1", 0)	        
												end	
												if SobGroup_GetHardPointHealth("splitshipyards"..i, "boost2") > 0 then		 
													SobGroup_SetHardPointHealth("splitshipyards"..i, "boost2", 0)	        
												end	
												if SobGroup_GetHardPointHealth("splitshipyards"..i, "boost3") > 0 then		 
													SobGroup_SetHardPointHealth("splitshipyards"..i, "boost3", 0)	        
												end	
												if SobGroup_GetHardPointHealth("splitshipyards"..i, "hgn_orders_solarshield") > 0 then		 
													SobGroup_SetHardPointHealth("splitshipyards"..i, "hgn_orders_solarshield", 0)	        
												end	
												if SobGroup_GetHardPointHealth("splitshipyards"..i, "hgn_orders_remotespaceshield") > 0 then		 
													SobGroup_SetHardPointHealth("splitshipyards"..i, "hgn_orders_remotespaceshield", 0)	        
												end		
                      end 												
										end
									end
                end								
								if ntrc > 0 then 
									for i = 0,ntrc - 1,1 do	
										if SobGroup_Empty("splitcontainers"..i) == 0 then	
										  if SobGroup_GetHardPointHealth("splitcontainers"..i, "engine_boost_container") > 0 then		 
												SobGroup_SetHardPointHealth("splitcontainers"..i, "engine_boost_container", 0)	        
											end	
										end
									end
                end									
              end						            
						else  
						  if SobGroup_OwnedBy("hgn_power"..z) == playerIndex then
								Ping_AddDescription(g, 1, "OVERCHARGE None") 	
							end				
						end              
						--powerup
						if SobGroup_GetHardPointHealth(("hgn_power"..z), "powerup_power") > 0 then
							SobGroup_TakeDamage("hgn_power"..z, 0.03*runselected)
						end		  	    
					end
					--interface
					if z == playerIndex and ((year==0 and gametime<55) or year>0 or intro==1) then   					  
				    UI_SetTextLabelText("ResourceMenu", "powerList", ""..floor(powerList[z+1])); 
				    UI_SetTextLabelText("ResourceMenu", "powerListMax", ""..floor(powerListMax[z+1]));
				    UI_SetTextLabelText("UnitCapInfoPopup", "energy", ""..floor(powerList[z+1]).."/"..floor(powerListStored[z+1]).."/"..floor(powerListMax[z+1]));
            UI_SetTextLabelText("EnergyMenu", "lblbuild", ""..floor(powerListManager[z+1].build)); 
						UI_SetTextLabelText("EnergyMenu", "lblsensor", ""..floor(powerListManager[z+1].sensor)); 
						UI_SetTextLabelText("EnergyMenu", "lblmove", ""..floor(powerListManager[z+1].move)); 
						UI_SetTextLabelText("EnergyMenu", "lblattack", ""..floor(powerListManager[z+1].attack)); 
						UI_SetTextLabelText("EnergyMenu", "lblhyperspace", ""..floor(powerListManager[z+1].hyperspace)); 
						UI_SetTextLabelText("EnergyMenu", "lbldefensefield", ""..floor(powerListManager[z+1].defensefield));  	
						UI_SetTextLabelText("EnergyMenu", "lblcloak", ""..floor(powerListManager[z+1].cloak)); 
						UI_SetTextLabelText("EnergyMenu", "lblspace", ""..floor(powerListManager[z+1].space)); 
						UI_SetTextLabelText("EnergyMenu", "lblfusion", ""..floor(powerListManager[z+1].fusion)); 
						UI_SetTextLabelText("EnergyMenu", "lblresearch", ""..floor(powerListManager[z+1].research)); 
						UI_SetTextLabelText("EnergyMenu", "lblmisc", ""..floor(powerListManager[z+1].misc)); 
            UI_SetTextLabelText("EnergyMenu", "lblproduction", ""..floor(powerListManager[z+1].production)); 	
						UI_SetTextLabelText("EnergyMenu", "lblenergysummary", ""..floor(powerList[z+1]).."/"..floor(powerListStored[z+1]).."/"..floor(powerListMax[z+1]));						
				    if multiplier >= 0.5 then						  		
              UI_SetTextLabelText("EnergyMenu", "lblbuildrate", "+"..multiplierbuild .. "%");															 
							UI_SetTextLabelText("EnergyMenu", "lblnavigationattack", "+"..multiplierspeed .. "%");															
						elseif multiplier < 0.5 then						  
						  UI_SetTextLabelText("EnergyMenu", "lblbuildrate", ""..multiplierbuild .. "%");								  
						  UI_SetTextLabelText("EnergyMenu", "lblnavigationattack", ""..multiplierspeed .. "%");										
						end								
						--bar
				    for i = 1,21,1 do
				      if powerListStored[z+1] >= (powerListMax[z+1]/21)*i then
				        UI_SetElementVisible("ResourceMenu", "FrameEnergyLevel_"..i, 1)   
				      else
				        UI_SetElementVisible("ResourceMenu", "FrameEnergyLevel_"..i, 0) 
				      end  
				    end			    
				  end	  
				--Vaygr	    
			  else				    
					if Player_HasResearch(z, "energyproduction10" ) == 1 then
						powerList[z+1] = floor(powerList[z+1]+(8.5*10)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(8.5*10))
						powerListMax[z+1] = powerListMax[z+1]+(100*10)           
					elseif Player_HasResearch(z, "energyproduction9" ) == 1 then
						powerList[z+1] = floor(powerList[z+1]+(8.05*9)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(8.05*9))
						powerListMax[z+1] = powerListMax[z+1]+(100*9)         
					elseif Player_HasResearch(z, "energyproduction8" ) == 1 then
					  powerList[z+1] = floor(powerList[z+1]+(7.6*8)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(7.6*8))
						powerListMax[z+1] = powerListMax[z+1]+(100*8)     
					elseif Player_HasResearch(z, "energyproduction7" ) == 1 then
					  powerList[z+1] = floor(powerList[z+1]+(7.15*7)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(7.15*7))
						powerListMax[z+1] = powerListMax[z+1]+(100*7)     
					elseif Player_HasResearch(z, "energyproduction6" ) == 1 then
					  powerList[z+1] = floor(powerList[z+1]+(6.7*6)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(6.7*6))
						powerListMax[z+1] = powerListMax[z+1]+(100*6)     
					elseif Player_HasResearch(z, "energyproduction5" ) == 1 then
					  powerList[z+1] = floor(powerList[z+1]+(6.25*5)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(6.25*5))
						powerListMax[z+1] = powerListMax[z+1]+(100*5)     
					elseif Player_HasResearch(z, "energyproduction4" ) == 1 then
					  powerList[z+1] = floor(powerList[z+1]+(5.8*4)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(5.8*4))
						powerListMax[z+1] = powerListMax[z+1]+(100*4)     
					elseif Player_HasResearch(z, "energyproduction3" ) == 1 then
					  powerList[z+1] = floor(powerList[z+1]+(5.35*3)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(5.35*3))
						powerListMax[z+1] = powerListMax[z+1]+(100*3)     
					elseif Player_HasResearch(z, "energyproduction2" ) == 1 then
					  powerList[z+1] = floor(powerList[z+1]+(4.9*2)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(4.9*2))
						powerListMax[z+1] = powerListMax[z+1]+(100*2)     
					elseif Player_HasResearch(z, "energyproduction1" ) == 1 then	
					  powerList[z+1] = floor(powerList[z+1]+(4.45*1)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(4.45*1))
						powerListMax[z+1] = powerListMax[z+1]+(100*1)   
          else
            powerList[z+1] = floor(powerList[z+1]+(4*0)) 
						powerListManager[z+1].production = floor(powerListManager[z+1].production+(4*0))
						powerListMax[z+1] = powerListMax[z+1]+(100*0)  					
					end  	
				  --no supero limiti
				  if powerList[z+1] < -99 then
			      powerList[z+1] = -99
			    end   
			    if powerList[z+1] > 99 then
			      powerList[z+1] = 99
			    end     			  
			    --aumenta il totale di energia e no supero limiti 
			    powerListStored[z+1] = powerListStored[z+1] + powerList[z+1]
					if powerListStored[z+1] < 0 then
					  powerListStored[z+1] = 0	  
					end 
					if powerListStored[z+1] >= powerListMax[z+1] then
					  powerListStored[z+1] = powerListMax[z+1]
					end          
				  --setta l'effetto dell'energia su sottosistema/flotta
				  multiplier = powerListStored[z+1]/2000				  
				  multiplier = multiplier*energysensitivity
				  if multiplier < 0 then
				    multiplier = 0
				  end
				  if multiplier > 1 then
				    multiplier = 1
				  end	  
			    if Player_HasResearch(z, "isai" ) == 0 then
			      SobGroup_SetHardPointHealth("supporter"..z, "energy", multiplier)			      
			    else
			      SobGroup_SetHardPointHealth("supporter"..z, "energy", 0.5)
			    end	
					--x ui
					multiplierbuild = floor((multiplier-0.5)*140)
					multiplierspeed = floor((multiplier-0.5)*40)
          --interface					
					if z == playerIndex and ((year==0 and gametime<55) or year>0 or intro==1) then   					  
				    UI_SetTextLabelText("ResourceMenu", "powerList", ""..floor(powerList[z+1])); 
				    UI_SetTextLabelText("ResourceMenu", "powerListMax", ""..floor(powerListMax[z+1]));
				    UI_SetTextLabelText("UnitCapInfoPopup", "energy", ""..floor(powerList[z+1]).."/"..floor(powerListStored[z+1]).."/"..floor(powerListMax[z+1]));
            UI_SetTextLabelText("EnergyMenu", "lblbuild", ""..floor(powerListManager[z+1].build)); 
						UI_SetTextLabelText("EnergyMenu", "lblsensor", ""..floor(powerListManager[z+1].sensor)); 
						UI_SetTextLabelText("EnergyMenu", "lblmove", ""..floor(powerListManager[z+1].move)); 
						UI_SetTextLabelText("EnergyMenu", "lblattack", ""..floor(powerListManager[z+1].attack)); 
						UI_SetTextLabelText("EnergyMenu", "lblhyperspace", ""..floor(powerListManager[z+1].hyperspace)); 
						UI_SetTextLabelText("EnergyMenu", "lbldefensefield", ""..floor(powerListManager[z+1].defensefield));  	
						UI_SetTextLabelText("EnergyMenu", "lblcloak", ""..floor(powerListManager[z+1].cloak)); 
						UI_SetTextLabelText("EnergyMenu", "lblspace", ""..floor(powerListManager[z+1].space)); 
						UI_SetTextLabelText("EnergyMenu", "lblfusion", ""..floor(powerListManager[z+1].fusion)); 
						UI_SetTextLabelText("EnergyMenu", "lblresearch", ""..floor(powerListManager[z+1].research)); 
						UI_SetTextLabelText("EnergyMenu", "lblmisc", ""..floor(powerListManager[z+1].misc)); 
            UI_SetTextLabelText("EnergyMenu", "lblproduction", ""..floor(powerListManager[z+1].production)); 	
						UI_SetTextLabelText("EnergyMenu", "lblenergysummary", ""..floor(powerList[z+1]).."/"..floor(powerListStored[z+1]).."/"..floor(powerListMax[z+1]));						
				    if multiplier >= 0.5 then						  		
              UI_SetTextLabelText("EnergyMenu", "lblbuildrate", "+"..multiplierbuild .. "%");															 
							UI_SetTextLabelText("EnergyMenu", "lblnavigationattack", "+"..multiplierspeed .. "%");															
						elseif multiplier < 0.5 then						  
						  UI_SetTextLabelText("EnergyMenu", "lblbuildrate", ""..multiplierbuild .. "%");								  
						  UI_SetTextLabelText("EnergyMenu", "lblnavigationattack", ""..multiplierspeed .. "%");										
						end			
						--bar
				    for i = 1,21,1 do
				      if powerListStored[z+1] >= (powerListMax[z+1]/21)*i then
				        UI_SetElementVisible("ResourceMenu", "FrameEnergyLevel_"..i, 1)   
				      else
				        UI_SetElementVisible("ResourceMenu", "FrameEnergyLevel_"..i, 0) 
				      end  
				    end			    
				  end		  					
			  end		
				--serve per display taskbar power station e computerspy
				LastpowerList[z+1] = powerList[z+1]			
				LastpowerListStored[z+1] = powerListStored[z+1]
				LastpowerListMax[z+1] = powerListMax[z+1]					
				--default
				powerList[z+1] = 4 
				powerListMax[z+1] = 1000
        --UI energy manager	        		    				
        powerListManager[z+1].build = 0	        
        powerListManager[z+1].sensor = 0        
        powerListManager[z+1].move = 0
        powerListManager[z+1].attack = 0 
        powerListManager[z+1].hyperspace = 0	
        powerListManager[z+1].defensefield = 0
        powerListManager[z+1].cloak = 0
        powerListManager[z+1].space = 0
        powerListManager[z+1].fusion = 0
        powerListManager[z+1].research = 0         
        powerListManager[z+1].misc = 0 	
        powerListManager[z+1].production = 4				
			end  
		end		
		hwsaving[1] = 0  
  end   

	--weapon/misc buttons
  if enablebtnparade == 1 then
    UI_SetElementEnabled("NewTaskbar", "btnParade", 1)
  else
    UI_SetElementEnabled("NewTaskbar", "btnParade", 0)
  end  
  if enablebtncallisto == 1 then
    UI_SetElementEnabled("NewTaskbar", "btnCallisto", 1)
  else
    UI_SetElementEnabled("NewTaskbar", "btnCallisto", 0)
  end  
  if enablebtnperforate == 1 then
    UI_SetElementEnabled("NewTaskbar", "btnPerforate", 1)
  else
    UI_SetElementEnabled("NewTaskbar", "btnPerforate", 0)
  end  
  if enablebtnheavyioncannon == 1 then
    UI_SetElementEnabled("NewTaskbar", "btnHeavyIonCannon", 1)
  else
    UI_SetElementEnabled("NewTaskbar", "btnHeavyIonCannon", 0)
  end  
  if enablebtnnuclear == 1 then
    UI_SetElementEnabled("NewTaskbar", "btnNuclear", 1)
  else
    UI_SetElementEnabled("NewTaskbar", "btnNuclear", 0)
  end
	
	--serve per pulire selezione sottosistemi se non c'è nulla di selezionato
	interfacecleanedtot[playerIndexList] = interfacecleanedtot[playerIndexList] + interfacecleaned + interfacecleanedspecial
	if hwsaving[1] == 0 then
		if interfacecleanedtot[playerIndexList] == 0 then
		  cleaninterface(0, "empty")		
			UI_SetElementVisible("NewTaskbar", "sundamagetextred", 0)
			UI_SetElementVisible("NewTaskbar", "sundamagetextblu", 0)			
			UI_SetElementVisible("NewTaskbar", "sundamagetext", 1)
      UI_SetTextLabelText("NewTaskbar", "sundamagetext", "---");			
		else
      interfacecleanedtot[playerIndexList] = 0		
		end
	end	
	
	--if at least one ship is selected, clear special selection
	if interfacecleaned > 0 or interfacecleanedspecial > 1 then
	  interfacespecialcases[playerIndexList] = 0
	end
	
	--no temp/rad if ship selected > 1
	if interfacecleaned + interfacecleanedspecial > 1 then	
    UI_SetElementVisible("NewTaskbar", "radtext", 1)
		UI_SetTextLabelText("NewTaskbar", "radtext", "---");		
		UI_SetElementVisible("NewTaskbar", "sundamagetextred", 0)
		UI_SetElementVisible("NewTaskbar", "sundamagetextblu", 0)			
		UI_SetElementVisible("NewTaskbar", "sundamagetext", 1)
		UI_SetTextLabelText("NewTaskbar", "sundamagetext", "---");				
	end	
	

 	Rule_Remove("selected")
	Rule_AddInterval("selected", runselected)
end	

function UpdateIcon(Screen, UnitInterface, UnitList)	
  UI_SetTextLabelText(Screen, UnitInterface, "x"..UnitList); 	 
end	  

function powerup(unit, powerup, powerup_unlocker, cost, time, counter, n, ship, energy)      
  if SobGroup_GetHardPointHealth(unit, powerup) > 0 then    
    counter[SobGroup_OwnedBy(unit)+1] = counter[SobGroup_OwnedBy(unit)+1] + 1
    if counter[SobGroup_OwnedBy(unit)+1] == 1 then
      powerListStored[SobGroup_OwnedBy(unit)+1] = powerListStored[SobGroup_OwnedBy(unit)+1] - energy
    elseif counter[SobGroup_OwnedBy(unit)+1] >= time then
      counter[SobGroup_OwnedBy(unit)+1] = 0			                
      for z = 0,n-1,1 do
        if SobGroup_Empty(ship..z) == 0 then
          if SobGroup_OwnedBy(ship..z) == SobGroup_OwnedBy(unit) then		            
            SobGroup_SetHardPointHealth(ship..z, powerup, 0)                
          end  
        end  
      end            	        		        
    end  
  else      
    if Player_GetRU(SobGroup_OwnedBy(unit)) >= cost and powerListStored[SobGroup_OwnedBy(unit)+1] > energy then	    
      if SobGroup_GetHardPointHealth(unit, powerup_unlocker) == 0 then   
	      SobGroup_CreateSubSystem(unit, powerup_unlocker)            
	    end 
	  elseif SobGroup_IsBuilding(unit, powerup) == 0 then    	    
	    SobGroup_SetHardPointHealth(unit, powerup_unlocker, 0)  	        
	  end		      
  end	     
end

--rad damage--------------------------------------------------------------------------------------------------

function SobGroup_TakeDamageRad(ship)   
  UI_SetElementVisible("NewTaskbar", "radtext", 1)
	UI_SetTextLabelText("NewTaskbar", "radtext", "---");	    				
  if SobGroup_OwnedBy(ship) ~= Universe_CurrentPlayer() then    
    return nil 
  end  
	if ec_intro_count < 6 then
		return nil 
  end	
	local raddamage = 0
	if SobGroup_AreAnySquadronsInsideNebula(ship, "nebula_damage7") == 1 then
	  raddamage = 7
	elseif SobGroup_AreAnySquadronsInsideNebula(ship, "nebula_damage6") == 1 then
	  raddamage = 6
	elseif SobGroup_AreAnySquadronsInsideNebula(ship, "nebula_damage5") == 1 then
	  raddamage = 5
	elseif SobGroup_AreAnySquadronsInsideNebula(ship, "nebula_damage4") == 1 then
	  raddamage = 4
	elseif SobGroup_AreAnySquadronsInsideNebula(ship, "nebula_damage3") == 1 then
	  raddamage = 3	
	else
	  raddamage = 0
	end				
	if SobGroup_Selected(ship) == 1 then	     
		UI_SetElementVisible("NewTaskbar", "radtext", 1)		
		UI_SetTextLabelText("NewTaskbar", "radtext", raddamage);		 
	end	
end	

--sun damage--------------------------------------------------------------------------------------------------

function SobGroup_TakeDamageSol(ship,damagemultiplier,runselectedmultiplier)
  if SobGroup_Selected(ship) == 1 then   
		UI_SetElementVisible("NewTaskbar", "sundamagetextred", 0)
		UI_SetElementVisible("NewTaskbar", "sundamagetextblu", 0)
		UI_SetElementVisible("NewTaskbar", "sundamagetext", 1)
		UI_SetTextLabelText("NewTaskbar", "sundamagetext", "---");					
	end 	
	if Player_HasResearch(SobGroup_OwnedBy(ship), "isai" ) == 1 then    
    return nil 
  end  
	if ec_intro_count < 6 then
		return nil 
  end			
  sundamage = 0
	isinorbit = "(SAFE)"
	--pianeti
  if SobGroup_IsDocked(ship) == 1 and Universe_GameTime() > 10 then
  elseif SobGroup_Empty("planet_mercury") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_mercury") <= 42000 then	  
  elseif SobGroup_Empty("planet_venus") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_venus") <= 57000 then	  
  elseif SobGroup_Empty("planet_earth") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_earth") <= 57000 then	  
  elseif SobGroup_Empty("planet_moon") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_moon") <= 42000 then	  
  elseif SobGroup_Empty("planet_mars") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_mars") <= 57000 then	  
  elseif SobGroup_Empty("planet_jupiter") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_jupiter") <= 112000 then	  
  elseif SobGroup_Empty("planet_europa") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_europa") <= 42000 then	  
  elseif SobGroup_Empty("planet_io") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_io") <= 42000 then	  
  elseif SobGroup_Empty("planet_callisto") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_callisto") <= 42000 then	  
  elseif SobGroup_Empty("planet_ganymeade") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_ganymeade") <= 42000 then	  
  elseif SobGroup_Empty("planet_saturn") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_saturn") <= 112000 then	  
  elseif SobGroup_Empty("planet_uranus") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_uranus") <= 72000 then	  
  elseif SobGroup_Empty("planet_neptune") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_neptune") <= 72000 then	  
  elseif SobGroup_Empty("planet_pluto") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_pluto") <= 42000 then  	  
  --open space  
	--Hiigaran
  elseif Player_GetRace(SobGroup_OwnedBy(ship)) == Race_Hiigaran then 
	  isinorbit = "(SPACE)"		
    sundamagebalancer = 1.25
		remotespacebalancer = 1.2			
    hassolarshield = 1
    hasremotespaceshield = 1
		--orbital station	
		SobGroup_Clear("temp"..SobGroup_OwnedBy(ship))
    if SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy(ship), "orbitalstationallies"..SobGroup_OwnedBy(ship), ship, 17000) == 1 then		      		
		  isinorbit = "(SAFE)"
      hassolarshield = 0
      hasremotespaceshield = 0 
    --guyking sy    	
    else		  
      distance = 1000
	    while distance < 7000 do
			  SobGroup_Clear("temp"..SobGroup_OwnedBy(ship))
	      if SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy(ship), "hgn_shipyard_g"..SobGroup_OwnedBy(ship), ship, distance) == 1 then				        
	        if SobGroup_GetHardPointHealth("temp"..SobGroup_OwnedBy(ship), "hgn_orders_solarshield") > 0 then
	          if Player_HasResearch(SobGroup_OwnedBy(ship), "solarshield3" ) == 1 then
	          	hassolarshield = 0.6
	          elseif Player_HasResearch(SobGroup_OwnedBy(ship), "solarshield2" ) == 1 then	
	          	hassolarshield = 0.7
	          elseif Player_HasResearch(SobGroup_OwnedBy(ship), "solarshield1" ) == 1 then	
	          	hassolarshield = 0.8
	          else
	            hassolarshield = 0.9	
	          end
	        end 
	        if SobGroup_GetHardPointHealth("temp"..SobGroup_OwnedBy(ship), "hgn_orders_remotespaceshield") > 0 then
	          if Player_HasResearch(SobGroup_OwnedBy(ship), "remotespaceshield3" ) == 1 then
	          	hasremotespaceshield = 0.6
	          elseif Player_HasResearch(SobGroup_OwnedBy(ship), "remotespaceshield2" ) == 1 then	
	          	hasremotespaceshield = 0.7
	          elseif Player_HasResearch(SobGroup_OwnedBy(ship), "remotespaceshield1" ) == 1 then	
	          	hasremotespaceshield = 0.8
	          else
	            hasremotespaceshield = 0.9	
	          end						
	        end        				              				        
	      end           
	      distance = distance + 1000
	    end
      --fleet carrier  
      distance = 700
	    while distance < 2800 do
			  SobGroup_Clear("temp"..SobGroup_OwnedBy(ship))
	      if SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy(ship), "hgn_spacecarrier"..SobGroup_OwnedBy(ship), ship, distance) == 1 then				        
	        if SobGroup_IsDoingAbility("temp"..SobGroup_OwnedBy(ship), abilityList[25]) == 1 then
					  hassolarshield = 0.75 
            hasremotespaceshield = 0.75	     
            break						
	        end 	        
	      end           
	      distance = distance + 800
	    end			
    end    		    						    		
    --damages
		if SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 250000 then 
	    sundamage = 0.213
			SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer) 
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 300000 then 
	    sundamage = 0.18	  	  
			SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 350000 then	
	    sundamage = 0.144	    
	    SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 400000 then
	    sundamage = 0.112	   
	    SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer) 
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 450000 then
	  	sundamage = 0.084	  
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)  
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 500000 then
	  	sundamage = 0.06	
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)    
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 550000 then
	  	sundamage = 0.04	  
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)  
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 600000 then
	  	sundamage = 0.024	
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)    
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 650000 then
	  	sundamage = 0.012	
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)    
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 700000 then
	  	sundamage = 0.004	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)   
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 750000 then 
	  	--no damage    
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1000000 then 
	  	--no damage
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1050000 then 
	  	sundamage = 0.004	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)   
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1100000 then 
	  	sundamage = 0.012	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)      
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1150000 then 
	  	sundamage = 0.024	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)      
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1200000 then 
	  	sundamage = 0.04	  
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)     
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1250000 then 
	  	sundamage = 0.06	
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)       
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1300000 then 
	  	sundamage = 0.084	
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)       
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1350000 then 
	  	sundamage = 0.112	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer) 
		elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1400000 then 
	  	sundamage = 0.144	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)	
	  else	    
	  end
	--Vaygr
	else
    isinorbit = "(SPACE)"	
	  sundamagebalancer = 1.1
		remotespacebalancer = 1.05		
    hassolarshield = 1
    hasremotespaceshield = 1  
		if Player_HasResearch(SobGroup_OwnedBy(ship), "solarshield3" ) == 1 then
			hassolarshield = 0.6
		elseif Player_HasResearch(SobGroup_OwnedBy(ship), "solarshield2" ) == 1 then	
			hassolarshield = 0.7
		elseif Player_HasResearch(SobGroup_OwnedBy(ship), "solarshield1" ) == 1 then	
			hassolarshield = 0.8
		else
			hassolarshield = 0.9	
		end	
		if Player_HasResearch(SobGroup_OwnedBy(ship), "remotespaceshield3" ) == 1 then
			hasremotespaceshield = 0.6
		elseif Player_HasResearch(SobGroup_OwnedBy(ship), "remotespaceshield2" ) == 1 then	
			hasremotespaceshield = 0.7
		elseif Player_HasResearch(SobGroup_OwnedBy(ship), "remotespaceshield1" ) == 1 then	
			hasremotespaceshield = 0.8
		else
			hasremotespaceshield = 0.9	
		end	        					    		
    --damages
		if SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 250000 then 
	    sundamage = 0.055
			SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer) 
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 300000 then 
	    sundamage = 0.045	  	  
			SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 350000 then	
	    sundamage = 0.036	    
	    SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 400000 then
	    sundamage = 0.028	   
	    SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer) 
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 450000 then
	  	sundamage = 0.021	  
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)  
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 500000 then
	  	sundamage = 0.015	
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)    
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 550000 then
	  	sundamage = 0.01	  
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)  
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 600000 then
	  	sundamage = 0.006	
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)    
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 650000 then
	  	sundamage = 0.003	
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)    
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 700000 then
	  	sundamage = 0.001	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hassolarshield*runselectedmultiplier*sundamagebalancer*spacebalancer)   
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 750000 then 
	  	-----    
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1000000 then 
	  	-----
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1050000 then 
	  	sundamage = 0.001	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)   
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1100000 then 
	  	sundamage = 0.003	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)      
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1150000 then 
	  	sundamage = 0.006	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)      
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1200000 then 
	  	sundamage = 0.01	  
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)     
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1250000 then 
	  	sundamage = 0.015	
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)       
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1300000 then 
	  	sundamage = 0.021	
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)       
	  elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1350000 then 
	  	sundamage = 0.028	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer) 
		elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1400000 then 
	  	sundamage = 0.036	 
	  	SobGroup_TakeDamage(ship, sundamage*damagemultiplier*hasremotespaceshield*runselectedmultiplier*remotespacebalancer*spacebalancer)	
	  else	    
	  end  	
	end 
	--icon temp
	if SobGroup_OwnedBy(ship) == Universe_CurrentPlayer() then 
	  if SobGroup_Selected(ship) == 1 then	  
	    if SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 700000 then
	      UI_SetElementVisible("NewTaskbar", "sundamagetextred", 1)
		    UI_SetElementVisible("NewTaskbar", "sundamagetextblu", 0)
		    UI_SetElementVisible("NewTaskbar", "sundamagetext", 0)
	      UI_SetTextLabelText("NewTaskbar", "sundamagetextred", floor((1-SobGroup_GetDistanceToSobGroup(ship, "star_sol")/1000000)*1000*damagemultiplier*hassolarshield).."/"..floor((1-SobGroup_GetDistanceToSobGroup(ship, "star_sol")/1000000)*1000)..isinorbit);		
	    elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") >= 1050000 then
	      UI_SetElementVisible("NewTaskbar", "sundamagetextred", 0)
		    UI_SetElementVisible("NewTaskbar", "sundamagetextblu", 1)
		    UI_SetElementVisible("NewTaskbar", "sundamagetext", 0)
	      UI_SetTextLabelText("NewTaskbar", "sundamagetextblu", floor((1-SobGroup_GetDistanceToSobGroup(ship, "star_sol")/1000000)*1000*damagemultiplier*hasremotespaceshield).."/"..floor((1-SobGroup_GetDistanceToSobGroup(ship, "star_sol")/1000000)*1000)..isinorbit);	
	    else
	      UI_SetElementVisible("NewTaskbar", "sundamagetextred", 0)
		    UI_SetElementVisible("NewTaskbar", "sundamagetextblu", 0)
		    UI_SetElementVisible("NewTaskbar", "sundamagetext", 1)
	      UI_SetTextLabelText("NewTaskbar", "sundamagetext", floor((1-SobGroup_GetDistanceToSobGroup(ship, "star_sol")/1000000)*1000*damagemultiplier).."/"..floor((1-SobGroup_GetDistanceToSobGroup(ship, "star_sol")/1000000)*1000)..isinorbit);			
	    end 			
  	end
  else
    if SobGroup_Selected(ship) == 1 then   
			UI_SetElementVisible("NewTaskbar", "sundamagetextred", 0)
			UI_SetElementVisible("NewTaskbar", "sundamagetextblu", 0)
			UI_SetElementVisible("NewTaskbar", "sundamagetext", 1)
			UI_SetTextLabelText("NewTaskbar", "sundamagetext", "---");			
		end 		
  end  
	return sundamage 
end    

--orders------------------------------------------------------------------------------------------------------------------------

function orders(ship, ordine, numpilotstosave, numofficerstosave, runselectedmultiplier)	  
  if Player_HasResearch(SobGroup_OwnedBy(ship), "isai" ) == 1 then    
    return nil 
  end  
--clear
  if ordine == "clear" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_clear") > 0 then	 
      SobGroup_SetHardPointHealth(ship, "hgn_orders_clear", 0) 
      if SobGroup_AreAnyOfTheseTypes(ship, "hgn_shipyard_g") == 1 then
	      if SobGroup_GetHardPointHealth(ship, "hgn_orders_solarshield") > 0 then   
	      	SobGroup_SetHardPointHealth(ship, "hgn_orders_solarshield", 0)	
	      end  
	      if SobGroup_GetHardPointHealth(ship, "hgn_orders_remotespaceshield") > 0 then   
	      	SobGroup_SetHardPointHealth(ship, "hgn_orders_remotespaceshield", 0)	
	      end 		      
	      if SobGroup_GetHardPointHealth(ship, "boost1") > 0 then		 
          SobGroup_SetHardPointHealth(ship, "boost1", 0)	        
		    end	
		    if SobGroup_GetHardPointHealth(ship, "boost2") > 0 then		 
          SobGroup_SetHardPointHealth(ship, "boost2", 0)	        
		    end	
		    if SobGroup_GetHardPointHealth(ship, "boost3") > 0 then		 
          SobGroup_SetHardPointHealth(ship, "boost3", 0)	        
		    end			    
			elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_crewstation") == 1 then
	      if SobGroup_GetHardPointHealth(ship, "hgn_orders_recruit") > 0 then   
	      	SobGroup_SetHardPointHealth(ship, "hgn_orders_recruit", 0)	
	      end     		
	    elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_scaver,vgr_scaver") == 1 then
	      if SobGroup_GetHardPointHealth(ship, "hgn_orders_fusion") > 0 then   
	      	SobGroup_SetHardPointHealth(ship, "hgn_orders_fusion", 0)	
	      end	
	    elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_hyperspacestation,hgn_battlestation") == 1 then  
	      if SobGroup_GetHardPointHealth(ship, "hgn_orders_hyperspaceinhibitor") > 0 then  
	    		SobGroup_SetHardPointHealth(ship, "hgn_orders_hyperspaceinhibitor", 0)	 
	    	end	
			elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_container, vgr_container") == 1 then  
	      if SobGroup_GetHardPointHealth(ship, "engine_boost_container") > 0 then  
	    		SobGroup_SetHardPointHealth(ship, "engine_boost_container", 0)	 
	    	end	
        if SobGroup_GetHardPointHealth(ship, "hgn_orders_trade") > 0 then  
	    		SobGroup_SetHardPointHealth(ship, "hgn_orders_trade", 0)	 
	    	end		
      elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_tanker") == 1 then  
	      if SobGroup_GetHardPointHealth(ship, "hgn_orders_patcher") > 0 then  
	    		SobGroup_SetHardPointHealth(ship, "hgn_orders_patcher", 0)	 
	    	end	        
			elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_power") == 1 then  
	      if SobGroup_GetHardPointHealth(ship, "hgn_orders_advpowerdisruptor") > 0 then  
	    		SobGroup_SetHardPointHealth(ship, "hgn_orders_advpowerdisruptor", 0)	 
	    	end
        if SobGroup_GetHardPointHealth(ship, "hgn_orders_powersave") > 0 then  
	    		SobGroup_SetHardPointHealth(ship, "hgn_orders_powersave", 0)	 
	    	end	   				
	    end
			--dock
			if SobGroup_AreAnyOfTheseTypes(ship, "hgn_researchstation,hgn_crewstation,hgn_power,hgn_scaver,vgr_scaver,hgn_artillerysentinel,hgn_tanker,hgn_lighttanker,hgn_container,vgr_container,hgn_combatbase") == 0 then  
	      if SobGroup_GetHardPointHealth(ship, "hgn_orders_dock") > 0 then  
	    		SobGroup_SetHardPointHealth(ship, "hgn_orders_dock", 0)	 
	    	end        		
	    end
    end  
--parade
  elseif ordine == "parade" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_parade") > 0 then
      SobGroup_Clear("temp")		
      if SobGroup_FillProximitySobGroup ("temp", "parader"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then   
        SobGroup_Stop(SobGroup_OwnedBy(ship), ship)  
	      SobGroup_ParadeSobGroup("temp", ship, 0) 					                  
	    end 
	    SobGroup_SetHardPointHealth(ship, "hgn_orders_parade", 0)	 
    end
	elseif ordine == "parade_support" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_parade_support") > 0 then
      SobGroup_Clear("temp")		
      if SobGroup_FillProximitySobGroup ("temp", "hgn_researchstation"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then   
        SobGroup_Stop(SobGroup_OwnedBy(ship), ship)  
	      SobGroup_ParadeSobGroup("temp", ship, 0) 					                  
	    end 
			SobGroup_Clear("temp")
			if SobGroup_FillProximitySobGroup ("temp", "hgn_crewstation"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then   
        SobGroup_Stop(SobGroup_OwnedBy(ship), ship)  
	      SobGroup_ParadeSobGroup("temp", ship, 0) 					                  
	    end 
			SobGroup_Clear("temp")
			if SobGroup_FillProximitySobGroup ("temp", "hgn_power"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then   
        SobGroup_Stop(SobGroup_OwnedBy(ship), ship)  
	      SobGroup_ParadeSobGroup("temp", ship, 0) 					                  
	    end 
			SobGroup_Clear("temp")
			if SobGroup_FillProximitySobGroup ("temp", "hgn_combatbase"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then   
        SobGroup_Stop(SobGroup_OwnedBy(ship), ship)  
	      SobGroup_ParadeSobGroup("temp", ship, 0) 					                  
	    end 
	    SobGroup_SetHardPointHealth(ship, "hgn_orders_parade_support", 0)	 
    end	
--fusion
  elseif ordine == "fusion" then
--recruit
  elseif ordine == "recruitement" then  
--trade
  elseif ordine == "trade" then	
--guard
  elseif ordine == "guard" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_guard") > 0 then	
      SobGroup_Clear("temp")		
      if SobGroup_FillProximitySobGroup ("temp", "parader"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_GuardSobGroup("temp", ship) 					                  
	    end 
	    SobGroup_SetHardPointHealth(ship, "hgn_orders_guard", 0)	 
    end 
--tactics
  elseif ordine == "passive" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_passive") > 0 then	
      SobGroup_Clear("temp")		
      if SobGroup_FillProximitySobGroup ("temp", "parader"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_SetTactics("temp", PassiveTactics)				                  
	    end 
	    SobGroup_SetHardPointHealth(ship, "hgn_orders_passive", 0)	 
    end  
  elseif ordine == "defensive" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_defensive") > 0 then
      SobGroup_Clear("temp")		
      if SobGroup_FillProximitySobGroup ("temp", "parader"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_SetTactics("temp", DefensiveTactics)				                  
	    end 
	    SobGroup_SetHardPointHealth(ship, "hgn_orders_defensive", 0)	 
    end  
  elseif ordine == "aggressive" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_aggressive") > 0 then	  
      SobGroup_Clear("temp")		
      if SobGroup_FillProximitySobGroup ("temp", "parader"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_SetTactics("temp", AggressiveTactics)				                  
	    end 
	    SobGroup_SetHardPointHealth(ship, "hgn_orders_aggressive", 0)	 
    end 
--strike groups   
  elseif ordine == "strikegroup_fs" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_strikegroup_fs") > 0 then	
      SobGroup_Clear("temp")		
      if SobGroup_FillProximitySobGroup ("temp", "parader"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_FormStrikeGroup("temp", "Fighter Screen")				                  
	    end 	    
    end  
  elseif ordine == "strikegroup_cp" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_strikegroup_cp") > 0 then
      SobGroup_Clear("temp")		
      if SobGroup_FillProximitySobGroup ("temp", "parader"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_FormStrikeGroup("temp", "Capital Phalanx")				                  
	    end 	    
    end  
  elseif ordine == "strikegroup_fl" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_strikegroup_fl") > 0 then	
      SobGroup_Clear("temp")		
      if SobGroup_FillProximitySobGroup ("temp", "parader"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_FormStrikeGroup("temp", "Frigate Line")				                  
	    end 	    
    end   
--dock  
  elseif ordine == "dock" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_dock") > 0 then      		
			for i = 0,nfi[SobGroup_OwnedBy(ship)+1]-1,1 do
			  if SobGroup_Empty("splitfighters"..(SobGroup_OwnedBy(ship)) .. tostring(i)) == 0 then
				  if SobGroup_HealthPercentage("splitfighters"..(SobGroup_OwnedBy(ship)) .. tostring(i)) <= 0.53 then
				    if SobGroup_IsDoingAbility("splitfighters"..(SobGroup_OwnedBy(ship)) .. tostring(i), abilityList[9]) == 0 then
              SobGroup_Clear("temp")
							if SobGroup_FillProximitySobGroup("temp", ship, "splitfighters"..(SobGroup_OwnedBy(ship)) .. tostring(i), 15000) == 1 then
			          SobGroup_DockSobGroup("splitfighters"..(SobGroup_OwnedBy(ship)) .. tostring(i), ship)
			        end
						end
					end
				end
			end			
      for i = 0,nco[SobGroup_OwnedBy(ship)+1]-1,1 do
			  if SobGroup_Empty("splitcorvettes"..(SobGroup_OwnedBy(ship)) .. tostring(i)) == 0 then
				  if SobGroup_HealthPercentage("splitcorvettes"..(SobGroup_OwnedBy(ship)) .. tostring(i)) <= 0.53 then
				    if SobGroup_IsDoingAbility("splitcorvettes"..(SobGroup_OwnedBy(ship)) .. tostring(i), abilityList[9]) == 0 then
              SobGroup_Clear("temp")
							if SobGroup_FillProximitySobGroup("temp", ship, "splitcorvettes"..(SobGroup_OwnedBy(ship)) .. tostring(i), 15000) == 1 then
			          SobGroup_DockSobGroup("splitcorvettes"..(SobGroup_OwnedBy(ship)) .. tostring(i), ship)
			        end
						end
					end
				end
			end							
    end  
--hyperspace inhibitor
  elseif ordine == "hyperspaceinhibitor" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_hyperspaceinhibitor") > 0 then	            
	    if SobGroup_GetHardPointHealth(ship, "hi") > 0 then
	      SobGroup_SetHardPointHealth(ship, "hi", 0)
	    end  
	  else	    
	    if SobGroup_GetHardPointHealth(ship, "hi") == 0 then
	      SobGroup_CreateSubSystem(ship, "hi")
	    end  
    end   
--patcher
  elseif ordine == "patcher" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_patcher") > 0 then	 
      SobGroup_Clear("temp")		
      if SobGroup_FillProximitySobGroup ("temp", "hgn_patcher"..SobGroup_OwnedBy(ship), ship, 25000) == 1 then           
	      SobGroup_DockSobGroupAndStayDocked( "temp", ship)			                  
	    end 
	    SobGroup_SetHardPointHealth(ship, "hgn_orders_patcher", 0)	 
    end 
	elseif ordine == "patcherlaunch" then    
	  if SobGroup_GetHardPointHealth(ship, "hgn_orders_patcherlaunch") > 0 then
		  SobGroup_Clear("temp")
			SobGroup_GetSobGroupDockedWithGroup(ship, "temp")
			SobGroup_Clear("temp1")
			SobGroup_FillShipsByType("temp1", "temp", "hgn_patcher") 
			SobGroup_Launch("temp1", ship)
			SobGroup_SetHardPointHealth(ship, "hgn_orders_patcherlaunch", 0)
		end	
	elseif ordine == "burnresearch" then    
	  if SobGroup_GetHardPointHealth(ship, "hgn_orders_burnresearch") > 0 then
		  local totalcost = 0
		  local iRace = Player_GetRace(SobGroup_OwnedBy(ship)) + 1
			dofilepath([[data:scripts/building and research/]] .. races[iRace][1] .. [[/research.lua]])
			for z, iCount in research do
			  if iCount.Name == "instanttech" then
					break
				end
				if Player_HasQueuedResearch(SobGroup_OwnedBy(ship), iCount.Name) == 1 then	  
				  totalcost = totalcost + iCount.Cost				  
				end
			end	  
      if Player_GetRU(SobGroup_OwnedBy(ship)) > (totalcost*2) then
			  for z, iCount in research do
				  if iCount.Name == "instanttech" then
						break
					end
					if Player_HasQueuedResearch(SobGroup_OwnedBy(ship), iCount.Name) == 1 then	  
						Player_CancelResearch(SobGroup_OwnedBy(ship), iCount.Name)															
						Player_GrantResearchOption(SobGroup_OwnedBy(ship), iCount.Name) 				  
					end
				end	  
				Player_SetRU(SobGroup_OwnedBy(ship), (Player_GetRU(SobGroup_OwnedBy(ship))-(totalcost*2)))
				researchburned[SobGroup_OwnedBy(ship)+1] = researchburned[SobGroup_OwnedBy(ship)+1] + totalcost
			end			
			SobGroup_SetHardPointHealth(ship, "hgn_orders_burnresearch", 0)
		end			
--destroyallguns  
  elseif ordine == "destroyallguns" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_destroyallguns") > 0 then	
      if SobGroup_AreAnyOfTheseTypes(ship, "hgn_artillerysentinel") == 1 then      
		    SobGroup_SetHardPointHealth(ship, "k1", 0)
				SobGroup_SetHardPointHealth(ship, "k2", 0)
				SobGroup_SetHardPointHealth(ship, "k3", 0)
				SobGroup_SetHardPointHealth(ship, "k4", 0)
		  elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_battlecruiser") == 1 then		  
		  	SobGroup_SetHardPointHealth(ship, "Weapon IonBeam 1", 0)
				SobGroup_SetHardPointHealth(ship, "Weapon IonBeam 2", 0)
				SobGroup_SetHardPointHealth(ship, "RailBeam 1", 0)
				SobGroup_SetHardPointHealth(ship, "RailBeam 2", 0)
				SobGroup_SetHardPointHealth(ship, "Weapon Rail Beam Back", 0)
				SobGroup_SetHardPointHealth(ship, "Rapid Turret 1", 0)
				SobGroup_SetHardPointHealth(ship, "Rapid Turret 2", 0)
				SobGroup_SetHardPointHealth(ship, "Rapid Turret 3", 0)		
		  elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_battleship") == 1 then
		    SobGroup_SetHardPointHealth(ship, "Weapon IonBeam 1", 0)
				SobGroup_SetHardPointHealth(ship, "Weapon IonBeam 2", 0)
				SobGroup_SetHardPointHealth(ship, "RailBeam 1", 0)
				SobGroup_SetHardPointHealth(ship, "RailBeam 2", 0)
				SobGroup_SetHardPointHealth(ship, "RailBeam 3", 0)	
				SobGroup_SetHardPointHealth(ship, "Rapid Turret 1", 0)
				SobGroup_SetHardPointHealth(ship, "Rapid Turret 2", 0)
				SobGroup_SetHardPointHealth(ship, "Rapid Turret 3", 0)			
		  elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_vortex") == 1 then
		    SobGroup_SetHardPointHealth(ship, "Rapid Turret 1", 0)
				SobGroup_SetHardPointHealth(ship, "Rapid Turret 2", 0)
				SobGroup_SetHardPointHealth(ship, "Rapid Turret 3", 0)		
				SobGroup_SetHardPointHealth(ship, "Rapid Turret 4", 0)		
      elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_combatbase") == 1 then	    	 
		    SobGroup_SetHardPointHealth(ship, "up", 0)		    
		    SobGroup_SetHardPointHealth(ship, "down", 0)		    			    	
		  end  
	    SobGroup_SetHardPointHealth(ship, "hgn_orders_destroyallguns", 0)	
    end     
--solar shield
  elseif ordine == "solarshield" then    
--remote space shield
  elseif ordine == "remotespaceshield" then    
--gujking
  elseif ordine == "gujkingdisable" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_gujkingdisable") > 0 then 	 
      if SobGroup_IsDockedSobGroup("hgn_mothership"..SobGroup_OwnedBy(ship), ship) == 1 then
        SobGroup_Launch("hgn_mothership"..SobGroup_OwnedBy(ship), ship)
      end  
      if SobGroup_IsDockedSobGroup("hgn_power"..SobGroup_OwnedBy(ship), ship) == 1 then
        SobGroup_Launch("hgn_power"..SobGroup_OwnedBy(ship), ship)
      end 
      if SobGroup_IsDockedSobGroup("hgn_researchstation"..SobGroup_OwnedBy(ship), ship) == 1 then
        SobGroup_Launch("hgn_researchstation"..SobGroup_OwnedBy(ship), ship)
      end 
      if SobGroup_IsDockedSobGroup("hgn_crewstation"..SobGroup_OwnedBy(ship), ship) == 1 then
        SobGroup_Launch("hgn_crewstation"..SobGroup_OwnedBy(ship), ship)
      end 
      if SobGroup_IsDockedSobGroup("hgn_combatbase"..SobGroup_OwnedBy(ship), ship) == 1 then
        SobGroup_Launch("hgn_combatbase"..SobGroup_OwnedBy(ship), ship)
      end   
      SobGroup_SetHardPointHealth(ship, "hgn_orders_gujkingdisable", 0)	  
      FX_StartEvent(ship, "gujkingenable")   	  
    end                          
  elseif ordine == "gujkingenable" then    
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_gujkingenable") > 0 then
		  SobGroup_Clear("temp")
      if SobGroup_FillProximitySobGroup ("temp", "hgn_mothership"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_DockSobGroup( "temp", ship)				                  
	    end 
			SobGroup_Clear("temp")
	    if SobGroup_FillProximitySobGroup ("temp", "hgn_power"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_DockSobGroup( "temp", ship)				                  
	    end 
			SobGroup_Clear("temp")
	    if SobGroup_FillProximitySobGroup ("temp", "hgn_researchstation"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_DockSobGroup( "temp", ship)				                  
	    end 
			SobGroup_Clear("temp")
	    if SobGroup_FillProximitySobGroup ("temp", "hgn_crewstation"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_DockSobGroup( "temp", ship)				                  
	    end 
			SobGroup_Clear("temp")
	    if SobGroup_FillProximitySobGroup ("temp", "hgn_combatbase"..SobGroup_OwnedBy(ship), ship, 7000) == 1 then           
	      SobGroup_DockSobGroup( "temp", ship)				                  
	    end 
	    SobGroup_SetHardPointHealth(ship, "hgn_orders_gujkingenable", 0)	    
	    FX_StartEvent(ship, "gujkingenable")   	 
    end
--power save
  elseif ordine == "powersave" then				
--adv power disruptor
  elseif ordine == "advpowerdisruptor" then		
--build assets
  elseif ordine == "buildasset1" then	
	  if SobGroup_GetHardPointHealth(ship, "hgn_orders_buildasset1") > 0 then
			SobGroup_SetHardPointHealth(ship, "k1", 0)
			SobGroup_SetHardPointHealth(ship, "k2", 0)
			SobGroup_SetHardPointHealth(ship, "k3", 0)
			SobGroup_SetHardPointHealth(ship, "k4", 0)
			SobGroup_CreateSubSystemCheck(ship, "k1", "hgn_pulsers1")			
			SobGroup_CreateSubSystemCheck(ship, "k2", "hgn_pulsers2")	
			SobGroup_CreateSubSystemCheck(ship, "k3", "HGN_SCC_6xAC_Turret_s3")
			SobGroup_CreateSubSystemCheck(ship, "k4", "HGN_SCC_6xAC_Turret_s4")					
   	end		
	elseif ordine == "buildasset2" then
	  if SobGroup_GetHardPointHealth(ship, "hgn_orders_buildasset2") > 0 then
			SobGroup_SetHardPointHealth(ship, "k1", 0)
			SobGroup_SetHardPointHealth(ship, "k2", 0)
			SobGroup_SetHardPointHealth(ship, "k3", 0)
			SobGroup_SetHardPointHealth(ship, "k4", 0)
			SobGroup_CreateSubSystemCheck(ship, "k1", "hgn_torpedo_sentinel1")
			SobGroup_CreateSubSystemCheck(ship, "k2", "hgn_nuclear_sentinel2")	
			SobGroup_CreateSubSystemCheck(ship, "k3", "hgn_ion_sentinel3")
			SobGroup_CreateSubSystemCheck(ship, "k4", "hgn_ion_sentinel4")			
   	end		
	elseif ordine == "buildasset3" then
	  if SobGroup_GetHardPointHealth(ship, "hgn_orders_buildasset3") > 0 then
			SobGroup_SetHardPointHealth(ship, "k1", 0)
			SobGroup_SetHardPointHealth(ship, "k2", 0)
			SobGroup_SetHardPointHealth(ship, "k3", 0)
			SobGroup_SetHardPointHealth(ship, "k4", 0)
			SobGroup_CreateSubSystemCheck(ship, "k1", "hgn_artillery_2x_sentinel_1")
			SobGroup_CreateSubSystemCheck(ship, "k2", "hgn_nuclear_sentinel2lr")	
			SobGroup_CreateSubSystemCheck(ship, "k3", "HGN_SCC_6xAC_Turret_s3lr")
			SobGroup_CreateSubSystemCheck(ship, "k4", "HGN_SCC_6xAC_Turret_s4lr")			
   	end	
--evacuation    
  elseif ordine == "evacuation" then 
    if SobGroup_GetHardPointHealth(ship, "hgn_orders_evacuation") > 0 then    		  	
		  SobGroup_Clear("temp")
			SobGroup_Clear("temp1")                                        
			SobGroup_GetSobGroupDockedWithGroup(ship, "temp")
			SobGroup_FillShipsByType("temp1", "temp", "evac") 
			if SobGroup_Empty("temp1") == 0 then
			  SobGroup_SetHardPointHealth("temp1", "pilot", numpilotstosave/100) 
				SobGroup_SetHardPointHealth("temp1", "officer", numofficerstosave/100) 	
				SobGroup_Launch("temp1", ship)             		
			else
			  if SobGroup_CanDoAbility(ship, AB_Builder) == 1 and
    			SobGroup_CanDoAbility(ship, AB_Sensors) == 1 then
					SobGroup_CreateShip(ship, "evac")	
					--disable
					SobGroup_AbilityActivate(ship, AB_Lights, 0) 
					SobGroup_AbilityActivate(ship, AB_Stop, 0) 
					SobGroup_AbilityActivate(ship, AB_Move, 0) 
					SobGroup_AbilityActivate(ship, AB_Attack, 0)
					SobGroup_AbilityActivate(ship, AB_Scuttle, 0) 
					SobGroup_AbilityActivate(ship, AB_Sensors, 0)  	
					SobGroup_AbilityActivate(ship, AB_Builder, 0)
					SobGroup_AbilityActivate(ship, AB_Dock, 0)  
					SobGroup_AbilityActivate(ship, AB_Hyperspace, 0)     
					SobGroup_AbilityActivate(ship, AB_Retire, 0)
					SobGroup_AbilityActivate(ship, AB_Parade, 0)       
					SobGroup_AbilityActivate(ship, AB_DefenseField, 0)       
					SobGroup_AbilityActivate(ship, AB_HyperspaceInhibitor, 0)       
					SobGroup_AbilityActivate(ship, AB_Cloak, 0)   
					SobGroup_AbilityActivate(ship, AB_Guard, 0) 			
				end	
			end    	
      SobGroup_TakeDamage(ship, 0.05*runselectedmultiplier)					
    end
  end   
end          

function SobGroup_GetSobGroupDockedWithGroupSize(player, type, group)
  if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(player, type) > 0 then
    SobGroup_ForceStayDockedIfDocking(group)						
		for z = 0,(SobGroup_Count("productioncapital"..player)-1),1 do
		  if SobGroup_Empty("splitproductioncapital"..player .. tostring(z)) == 0 then 
	      if SobGroup_IsDoingAbility(group, AB_Retire) == 1 then	 	        	        
	        SobGroup_CreateShip("splitproductioncapital"..player .. tostring(z), type .. tostring("l"))						        
	      end
	    end  
    end						
	end	
end	  		

function enginegujking()  
	for i = 0,(Universe_PlayerCount()-1),1 do		      
		if Player_IsAlive(i) == 1 then
			if Player_HasShipWithBuildQueue(i) == 1 then  
			  if Player_HasResearch(i, "isai" ) == 0 then
					if SobGroup_Empty("hgn_shipyard_g"..i) == 0 then 				
						--engine boost
						boostspeed = floor(sqrt(SobGroup_GetActualSpeed("hgn_shipyard_g"..i)))			
						if boostspeed >= 200 then
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost3") > 0 then
								SobGroup_AbilityActivate("hgn_shipyard_g"..i, AB_Move, 0) 		                    
								FX_StartEvent("hgn_shipyard_g"..i, "b3")		 
							elseif SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost2") > 0 then
								SobGroup_AbilityActivate("hgn_shipyard_g"..i, AB_Move, 0)				      
								FX_StartEvent("hgn_shipyard_g"..i, "b2")	 
							elseif SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost1") > 0 then
								SobGroup_AbilityActivate("hgn_shipyard_g"..i, AB_Move, 0)				      
								FX_StartEvent("hgn_shipyard_g"..i, "b1")	           
							end  	          
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost3_unlocker") == 0 then
								SobGroup_CreateSubSystem("hgn_shipyard_g"..i, "engine_boost_3_g_unlocker")
							end	
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost2_unlocker") == 0 then
								SobGroup_CreateSubSystem("hgn_shipyard_g"..i, "engine_boost_2_g_unlocker")
							end
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost1_unlocker") == 0 then
								SobGroup_CreateSubSystem("hgn_shipyard_g"..i, "engine_boost_1_g_unlocker")
							end	
						elseif boostspeed >= 100 then
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost2") > 0 then
								SobGroup_AbilityActivate("hgn_shipyard_g"..i, AB_Move, 0)				      
								FX_StartEvent("hgn_shipyard_g"..i, "b2")
							elseif SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost1") > 0 then
								SobGroup_AbilityActivate("hgn_shipyard_g"..i, AB_Move, 0)				      
								FX_StartEvent("hgn_shipyard_g"..i, "b1")	   				          
							end
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost2_unlocker") == 0 then
								SobGroup_CreateSubSystem("hgn_shipyard_g"..i, "engine_boost_2_g_unlocker")
							end
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost1_unlocker") == 0 then
								SobGroup_CreateSubSystem("hgn_shipyard_g"..i, "engine_boost_1_g_unlocker")
							end	
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost3") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost3", 0)   	
							end
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost3_unlocker") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost3_unlocker", 0)   	
							end	  			       				    	 	
						elseif boostspeed >= 50 then	
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost1") > 0 then
								SobGroup_AbilityActivate("hgn_shipyard_g"..i, AB_Move, 0)
								FX_StartEvent("hgn_shipyard_g"..i, "b1")
							end
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost1_unlocker") == 0 then
								SobGroup_CreateSubSystem("hgn_shipyard_g"..i, "engine_boost_1_g_unlocker")
							end	
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost3") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost3", 0)   	
							end	
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost2") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost2", 0)   	
							end
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost3_unlocker") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost3_unlocker", 0)   	
							end	  
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost2_unlocker") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost2_unlocker", 0)   	
							end  			    	
						else
							SobGroup_AbilityActivate("hgn_shipyard_g"..i, AB_Move, 1)
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost3_unlocker") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost3_unlocker", 0)   	
							end	  
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost2_unlocker") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost2_unlocker", 0)   	
							end  	
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost1_unlocker") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost1_unlocker", 0)   	
							end  	
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost3") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost3", 0)   	
							end	
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost2") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost2", 0)   	
							end	   
							if SobGroup_GetHardPointHealth("hgn_shipyard_g"..i, "boost1") > 0 then
								SobGroup_SetHardPointHealth("hgn_shipyard_g"..i, "boost1", 0)   	
							end	   
						end
						---mass shield
            for s = 1,6,1 do
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(i, "hgn_massshield_"..s) > 0 then
								if bloccoshield[SobGroup_OwnedBy("hgn_shipyard_g"..i)+1][s] == 0 then								
									SobGroup_Create("hgn_massshield_"..tostring(i)..tostring(s))
									SobGroup_FillShipsByType("hgn_massshield_"..tostring(i)..tostring(s), "Player_Ships"..i, "hgn_massshield_"..s)
									SobGroup_ForceStayDockedIfDocking("hgn_massshield_"..tostring(i)..tostring(s))
									SobGroup_DockSobGroupInstant("hgn_massshield_"..tostring(i)..tostring(s), "hgn_shipyard_g"..i)		
                  SobGroup_AbilityActivate("hgn_massshield_"..tostring(i)..tostring(s), AB_Scuttle, 0) 
                  SobGroup_AllowPassiveActionsAlways("hgn_massshield_"..tostring(i)..tostring(s), 1) 									
									bloccoshield[SobGroup_OwnedBy("hgn_shipyard_g"..i)+1][s] = 1									
								else
								  if SobGroup_IsDocked("hgn_massshield_"..tostring(i)..tostring(s)) == 1 then 					
                    if Player_HasResearch(SobGroup_OwnedBy("hgn_massshield_"..tostring(i)..tostring(s)), "ShipyardMAXSHIELDUpgrade3" ) == 1 then 
                      FX_StartEvent("hgn_shipyard_g"..i, "shield"..s..tostring("3"))							
										elseif Player_HasResearch(SobGroup_OwnedBy("hgn_massshield_"..tostring(i)..tostring(s)), "ShipyardMAXSHIELDUpgrade2" ) == 1 then
										  FX_StartEvent("hgn_shipyard_g"..i, "shield"..s..tostring("2"))
										elseif Player_HasResearch(SobGroup_OwnedBy("hgn_massshield_"..tostring(i)..tostring(s)), "ShipyardMAXSHIELDUpgrade1" ) == 1 then
										  FX_StartEvent("hgn_shipyard_g"..i, "shield"..s..tostring("1"))
										else
											FX_StartEvent("hgn_shipyard_g"..i, "shield"..s..tostring("0"))
										end
										if SobGroup_HealthPercentage("hgn_massshield_"..tostring(i)..tostring(s)) < 0.33 then
											--SobGroup_TakeDamage("hgn_massshield_"..tostring(i)..tostring(s), 0.9)
											SobGroup_Launch("hgn_massshield_"..tostring(i)..tostring(s), "hgn_shipyard_g"..i)
										end
									else
										SobGroup_TakeDamage("hgn_massshield_"..tostring(i)..tostring(s), 1)
										bloccoshield[SobGroup_OwnedBy("hgn_shipyard_g"..i)+1][s] = 0
									end
								end
							end
						end
					end					
				end
			end	
		end
	end
  --trade containers
	if ntrc > 0 then 
		for i = 0,ntrc - 1,1 do	
			if SobGroup_Empty("splitcontainers"..i) == 0 then			
				--boost
				if SobGroup_GetHardPointHealth("splitcontainers"..i, "engine_boost_container") > 0 then	
					if SobGroup_IsDocked("splitcontainers"..i) == 0 then 	
						if SobGroup_GetActualSpeed("splitcontainers"..i) >= 125 then				 
							FX_StartEvent("splitcontainers"..i, "b3")
						end
					end							
				end				
			end	
		end	       
	end  	  
end	  
 