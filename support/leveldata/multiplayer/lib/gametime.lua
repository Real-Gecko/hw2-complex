function time()	
  UI_SetTextLabelText("ResourceMenu", "lblyear", "YEAR "..year.."/"..gametime);  
  gametime = gametime - 1
  if gametime == 0 then     			          
    gametime = 99
    year = year + 1
		--pop init, evita il bug pilot*2 (population.lua)
		if year == 1 then
		  hwsaving[3] = 0
			hwsaving[4] = 0
		end		
		--year message	  
    if leveltype ~= "benchmark" and Rule_Exists("DeathCinematic") == 0 then	  
			Sound_SpeechPlay("Data:sound/sfx/etg/year")
			Subtitle_Add(Actor_FleetCommand,"Game Year, report available", 2.055)	 
    end			
		numPlayerhuman = 0
    local playerIndex = 0                         
    while playerIndex < Universe_PlayerCount() do
      if (Player_IsAlive(playerIndex) == 1) then
        if (Player_HasShipWithBuildQueue(playerIndex) == 1) then 
          playerIndexList = playerIndex + 1
					--player count
					if Player_HasResearch(playerIndex, "isai" ) == 0 then
						numPlayerhuman = numPlayerhuman + 1
					else	  
						--numPlayerai = numPlayerai + 1
					end  
					--numPlayer = numPlayerhuman + numPlayerai	
					--military rank remuneration		
          remuneration = 0	    
			    if gradoList[playerIndexList] == "ENSIGN       " then
			      Player_SetRU(playerIndex, Player_GetRU(playerIndex) + (200 * rankremuneration))	
			      remuneration = floor(200 * rankremuneration)
			    elseif gradoList[playerIndexList] == "LIEUTENANT   " then
		        Player_SetRU(playerIndex, Player_GetRU(playerIndex) + (600 * rankremuneration))	
		        remuneration = floor(600 * rankremuneration)
		      elseif gradoList[playerIndexList] == "COMMANDER    " then
		        Player_SetRU(playerIndex, Player_GetRU(playerIndex) + (1000 * rankremuneration))	
		        remuneration = floor(1000 * rankremuneration)
		      elseif gradoList[playerIndexList] == "CAPTAIN      " then
		        Player_SetRU(playerIndex, Player_GetRU(playerIndex) + (1400 * rankremuneration))	
		        remuneration = floor(1400 * rankremuneration)
		      elseif gradoList[playerIndexList] == "COMMODORE    " then
		        Player_SetRU(playerIndex, Player_GetRU(playerIndex) + (1800 * rankremuneration))	
		        remuneration = floor(1800 * rankremuneration)
		      elseif gradoList[playerIndexList] == "ADMIRAL      " then
		        Player_SetRU(playerIndex, Player_GetRU(playerIndex) + (2200 * rankremuneration))	
            remuneration = floor(2200 * rankremuneration)
		      elseif gradoList[playerIndexList] == "FLEET ADMIRAL" then
		        Player_SetRU(playerIndex, Player_GetRU(playerIndex) + (2600 * rankremuneration))	
		        remuneration = floor(2600 * rankremuneration)
		      end  
					--diplomacy fee
          if diplomacy >= 1 then	      
            diplomacyListSummary[playerIndexList] = 0       		      
            for z = 0,(Universe_PlayerCount()-1),1 do
        	    if Player_IsAlive(z) == 1 and AreAllied(playerIndex, z) == 1 and z ~= playerIndex then  	        	         	    	   	    	  
        	    	diplomacyListSummary[playerIndexList] = diplomacyListSummary[playerIndexList] + ((scoreList[playerIndexList] - scoreList[z+1])*diplomacy)	       	    		        	        
        	    end 	    
            end     
            Player_SetRU(playerIndex, Player_GetRU(playerIndex) + diplomacyListSummary[playerIndexList])
            if Player_GetRU(playerIndex) < 0 then
              Player_SetRU(playerIndex, 0)            
            end                       	  
          end
					--planets/orbital station     
          Player_SetRU(playerIndex, Player_GetRU(playerIndex) + planetList[playerIndexList] + orbitalstationList[playerIndexList])	
					--debris
          popdebris = (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_veildebris_chunk1")*1300) +
											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_veildebris_chunk2")*1300) +
											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_veildebris_chunk3")*1300) +
											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_veildebris_chunk4")*1300) +
											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_veildebris_chunk5")*1300)                 
          Player_SetRU(playerIndex, Player_GetRU(playerIndex) + popdebris)
					--interface
		      if playerIndex == Universe_CurrentPlayer() then
            local ruharvested = (Stats_GatheredRUs(playerIndex) + Stats_GatheredRUSalvage(playerIndex)) - Lastruharvested[playerIndexList]
            local ruspent = Stats_SpentRUs(playerIndex) - Lastruspent[playerIndexList]            
	          UI_SetTextLabelText("YearMenu", "ruharvested", ""..ruharvested); 	   
	          UI_SetTextLabelText("YearMenu", "ruspent", "-"..ruspent);        
	          UI_SetTextLabelText("YearMenu", "fusion1", ""..megalithList[playerIndexList]); 
	          UI_SetTextLabelText("YearMenu", "fusion", ""..fusionList[playerIndexList]);	 
	          UI_SetTextLabelText("YearMenu", "lblmaintenance", "-"..maintenanceList[playerIndexList]);	          
	          UI_SetTextLabelText("YearMenu", "remuneration", ""..remuneration);  	          
	          UI_SetTextLabelText("YearMenu", "fusion2", ""..tradeListSummary[playerIndexList]); 	   
	          UI_SetTextLabelText("YearMenu", "diplomacy", ""..diplomacyListSummary[playerIndexList]);    
	          UI_SetTextLabelText("YearMenu", "fusion3", ""..planetList[playerIndexList]+orbitalstationList[playerIndexList]);  	          
	          UI_SetTextLabelText("UnitCapInfoPopup", "diplomacy", ""..diplomacyListSummary[playerIndexList]);    
	          local yearsummary = floor (megalithList[playerIndexList] + planetList[playerIndexList] + orbitalstationList[playerIndexList] + fusionList[playerIndexList] + tradeListSummary[playerIndexList] + diplomacyListSummary[playerIndexList] - maintenanceList[playerIndexList] + remuneration + ruharvested - ruspent)
		        UI_SetTextLabelText("YearMenu", "yearsummary", ""..yearsummary);  	 
          end
					Lastruspent[playerIndexList] = Stats_SpentRUs(playerIndex)
					Lastruharvested[playerIndexList] = (Stats_GatheredRUs(playerIndex) + Stats_GatheredRUSalvage(playerIndex))
					--somma x calcolare onore
          Stats_ExtraGatheredRUs[playerIndexList] = fusionList[playerIndexList] + megalithList[playerIndexList] + planetList[playerIndexList] + orbitalstationList[playerIndexList] + tradeListSummary[playerIndexList] + diplomacyListSummary[playerIndexList]
					--fusion			    			
			    Player_SetRU(playerIndex, Player_GetRU(playerIndex) + fusionList[playerIndexList])   			    
			    fusionList[playerIndexList] = 0			           
					--megalith
          megalithList[playerIndexList] = 0		         
					--trade
          tradeListSummary[playerIndexList] = 0           	    		    	                   
			  end
			end
			playerIndex = playerIndex + 1
		end	
		--save game    
    if numPlayerhuman == 1 then
	    cyclesave = cyclesave + 1
	    if cyclesave == autosave then
	      Rule_AddInterval("salvataggio", 10)     
	    end          
	  end
		--maintenance
   	Rule_AddInterval("efficency", 1)                  
  end  
end

function salvataggio()  
  if cinecontatore[1] == 0 then --evita che il salvataggio arrivi durante la cinematica 
    FE_SaveGameScreen()
    cyclesave = 0	
    Rule_Remove("salvataggio")         
  end	          	      
end