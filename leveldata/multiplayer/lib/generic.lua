---Score---------------------------------------------------

function score()
  local playerIndex = 0             
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then  
        playerIndexList = playerIndex + 1
        scoreList[playerIndexList] = floor((fusionList[playerIndexList] / 12) +
                                           --(tradeList[playerIndexList] / 9) +
                                           (megalithList[playerIndexList] / 9) +
                                           (planetList[playerIndexList] / 9) +
                                           (honorList[playerIndexList] * 2) +                                             
                                           (pilotmaxList[playerIndexList] / 10) +
                                           (officermaxList[playerIndexList] * 2) +
                                           (pilotpopdisplayList[playerIndexList] * 25) +
                                           (RUList[playerIndexList] / 145) -
                                           (maintenanceList[playerIndexList] / 13) +
                                           (researchList[playerIndexList] / 8))   
        if scoreList[playerIndexList] < 0 then
          scoreList[playerIndexList] = 0
        end                                      
        if playerIndex == Universe_CurrentPlayer() and ((year==0 and gametime<45) or year>0 or intro==1) then
          UI_SetTextLabelText("UnitCapInfoPopup", "lblscore", ""..scoreList[playerIndexList]);          
        end                      
      end
    end
    playerIndex = playerIndex + 1
  end      
end

---Weapons----------------------------------------------

function weaponsets()  
	--Mothership  
  for i = 0,nms-1,1 do  
    if SobGroup_Empty("splitmotherships"..i) == 0 then
      if SobGroup_AreAnyOfTheseTypes("splitmotherships"..i, "hgn_mothership") == 1 then
	      if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 4") == 0 then          
	        if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 3") > 0 then	
            for w = 2,4,1 do					
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_ms_torpedolauncher"..w)  	          
						end
	        end  	                            
	      end	    
	      if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 8") == 0 then          
	        if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 7") > 0 then
            for w = 2,4,1 do					
							SobGroup_CreateSubSystem("splitmotherships"..i, "hgn_cf_rapid"..w)  
						end	                          
	        end  	                            
	      end	   
      else
	      if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 2") == 0 then          
	        if SobGroup_GetHardPointHealth("splitmotherships"..i, "Weapon 1") > 0 then			    
            for w = 1,3,1 do					
							SobGroup_CreateSubSystem("splitmotherships"..i, "vgr_qje_quadflechette_stbdF"..w)    
	          end
            SobGroup_CreateSubSystem("splitmotherships"..i, "vgr_ft2_turret")
            SobGroup_CreateSubSystem("splitmotherships"..i, "vgr_ft2_turret1") 						
	        end  	                            
	      end	 
	      if SobGroup_GetHardPointHealth("splitmotherships"..i, "pl") <= 0 then
				  for w = 1,13,1 do
						SobGroup_ChangePower("splitmotherships"..i, "Weapon_pl"..w, 0)
		      end		 
		    elseif SobGroup_GetHardPointHealth("splitmotherships"..i, "pl") > 0 and SobGroup_GetHardPointHealth("splitmotherships"..i, "pl") <= 1 then
		      SobGroup_SetHardPointHealth("splitmotherships"..i, "pl", (SobGroup_GetHardPointHealth("splitmotherships"..i, "pl") - 0.05))
		      if SobGroup_GetHardPointHealth("splitmotherships"..i, "pl") < 0.12 then
		        SobGroup_SetHardPointHealth("splitmotherships"..i, "pl", 0)
		      end
					for w = 1,13,1 do
						SobGroup_ChangePower("splitmotherships"..i, "Weapon_pl"..w, 1)
		      end
		    end		     
	    end   	        
    end 	
  end        
	--Command Fortress	  
  if ncf > 0 then      
	  for i = 0,ncf-1,1 do  
	    if SobGroup_Empty("splitcommandfortresses"..i) == 0 then
	      if SobGroup_AreAnyOfTheseTypes("splitcommandfortresses"..i, "hgn_commandfortress") == 1 then
		      if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 2") == 0 then          
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 1") > 0 then	
              for w = 2,8,1 do						
								SobGroup_CreateSubSystem("splitcommandfortresses"..i, "hgn_ms_torpedolauncher"..w)  
		          end              
		        end  	                            
		      end		        
		      if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 18") == 0 then          
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 17") > 0 then			    
              for w = 2,6,1 do						
								SobGroup_CreateSubSystem("splitcommandfortresses"..i, "hgn_cf_ionbeamturret"..w)  
		          end 			                  
		        end  	                            
		      end			
		      if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 32") == 0 then          
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 31") > 0 then		
              for w = 1,5,1 do						
								SobGroup_CreateSubSystem("splitcommandfortresses"..i, "hgn_cf_miner"..w)  
		          end               
		        end  	                            
		      end				        	        
		      if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 24") == 0 then          
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 23") > 0 then			  
              for w = 2,8,1 do						
								SobGroup_CreateSubSystem("splitcommandfortresses"..i, "hgn_cf_rapid"..w)  
		          end                       
		        end  	                            
		      end			      
		      if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 41") == 0 then          
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 40") > 0 then		
              for w = 1,4,1 do						
								SobGroup_CreateSubSystem("splitcommandfortresses"..i, "HGN_SCC_6xAC_Turret_cf"..w)  
		          end      	                       
		        end  	                            
		      end
		    elseif SobGroup_AreAnyOfTheseTypes("splitcommandfortresses"..i, "vgr_commandfortress") == 1 then
		      if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 2") == 0 then          
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 1") > 0 then	
              for w = 3,9,1 do						
								SobGroup_CreateSubSystem("splitcommandfortresses"..i, "vgr_qje_quadflechette_stbd"..w)  
							end                                     
		        end  	                            
		      end	
		      if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 18") == 0 then          
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 17") > 0 then	
              for w = 2,6,1 do						
								SobGroup_CreateSubSystem("splitcommandfortresses"..i, "vgr_ion"..w)  
		          end                       
		        end  	                            
		      end	
		      if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 27") == 0 then          
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 26") > 0 then	
              for w = 1,5,1 do						
								SobGroup_CreateSubSystem("splitcommandfortresses"..i, "missile_box"..w)  
		          end                      
		        end  	                            
		      end				      
		      if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 33") == 0 then          
		        if SobGroup_GetHardPointHealth("splitcommandfortresses"..i, "Weapon 32") > 0 then		 
              for w = 1,2,1 do						
								SobGroup_CreateSubSystem("splitcommandfortresses"..i, "vgr_dt3_turret"..w)  
		          end	                             
		        end  	                            
		      end			              	        	        
		    end  		                
	    end 
	  end  	
	end 	
  local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then  
        playerIndexList = playerIndex + 1
        if Player_GetRace(playerIndex) == Race_Hiigaran then 
					--Mothership           
          if Player_HasResearch(playerIndex, "ImprovedTorpedoMothership" ) == 1 then
					  for w = 1,12,1 do
							SobGroup_ChangePower("hgn_mothership"..playerIndex, "Weapon_HullDefense"..w, 0)	
							SobGroup_ChangePower("hgn_mothership"..playerIndex, "Weapon_HullDefenseImp"..w, 1)	 
	          end       
	        else
	          for w = 1,12,1 do
							SobGroup_ChangePower("hgn_mothership"..playerIndex, "Weapon_HullDefense"..w, 1)	
							SobGroup_ChangePower("hgn_mothership"..playerIndex, "Weapon_HullDefenseImp"..w, 0)	 
	          end       
	        end 
					--Missile Frigate         
          if Player_HasResearch(playerIndex, "ImprovedTorpedo" ) == 1 then
	          SobGroup_ChangePower("hgn_torpedofrigate"..playerIndex, "weapon_Torpedo", 1)	 
	          SobGroup_ChangePower("hgn_torpedofrigate"..playerIndex, "weapon_Torpedo1", 0)	     
	        else
	          SobGroup_ChangePower("hgn_torpedofrigate"..playerIndex, "weapon_Torpedo", 0)	 
	          SobGroup_ChangePower("hgn_torpedofrigate"..playerIndex, "weapon_Torpedo1", 1)	         
	        end 	        
        else	
					--Battleship                
	        if Player_HasResearch(playerIndex, "MineBattleship" ) == 1 then
	          SobGroup_ChangePower("vgr_alkhalid"..playerIndex, "Weapon_DslAftA", 1)	   
	        else
	          SobGroup_ChangePower("vgr_alkhalid"..playerIndex, "Weapon_DslAftA", 0)	         
	        end
	        if Player_HasResearch(playerIndex, "ImprovedTorpedoBattleship" ) == 1 then
	          SobGroup_ChangePower("vgr_alkhalid"..playerIndex, "Weapon_StbdMidHVM", 1)	
            SobGroup_ChangePower("vgr_alkhalid"..playerIndex, "Weapon_PortMidHVM", 1)	 
            SobGroup_ChangePower("vgr_alkhalid"..playerIndex, "Weapon_DslAftAHVM", 1)	
            SobGroup_ChangePower("vgr_alkhalid"..playerIndex, "Weapon_DslAftBHVM", 1)	 						
	        else
	          SobGroup_ChangePower("vgr_alkhalid"..playerIndex, "Weapon_StbdMidHVM", 0)	
            SobGroup_ChangePower("vgr_alkhalid"..playerIndex, "Weapon_PortMidHVM", 0)		
            SobGroup_ChangePower("vgr_alkhalid"..playerIndex, "Weapon_DslAftAHVM", 0)	
            SobGroup_ChangePower("vgr_alkhalid"..playerIndex, "Weapon_DslAftBHVM", 0)								
	        end
					--Destroyer	        
	        if Player_HasResearch(playerIndex, "MineDestroyer" ) == 1 then
	          SobGroup_ChangePower("vgr_destroyer"..playerIndex, "Weapon_Monster", 1)	   
	        else
	          SobGroup_ChangePower("vgr_destroyer"..playerIndex, "Weapon_Monster", 0)	         
	        end
					--PulseDestroyer	        
	        if Player_HasResearch(playerIndex, "MinePulseDestroyer" ) == 1 then
	          SobGroup_ChangePower("vgr_pulsedestroyer"..playerIndex, "Weapon_Front", 1)	   
	        else
	          SobGroup_ChangePower("vgr_pulsedestroyer"..playerIndex, "Weapon_Front", 0)	         
	        end					
					--Cruiser	        
	        if Player_HasResearch(playerIndex, "ImprovedTorpedoCruiser1" ) == 1 then
	          SobGroup_ChangePower("vgr_cruiser"..playerIndex, "Weapon_hf", 1)	   
	        else
	          SobGroup_ChangePower("vgr_cruiser"..playerIndex, "Weapon_hf", 0)	         
	        end	        
	      end 	                       
      end
    end
    playerIndex = playerIndex + 1
  end      	       
end  

---Eventi----------------------------------------------------------------

function eventi()  
  local playerIndex = Universe_CurrentPlayer() 
  playerIndexList = playerIndex + 1    
  if Player_GetRace(playerIndex) == Race_Hiigaran then                                              
		--alarm  
	  if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_mothership") >= 1 then
	    if (SobGroup_HealthPercentage("hgn_mothership"..playerIndex) <= 0.15 and SobGroup_Empty("hgn_mothership"..playerIndex) == 0 and Camera_GetDistanceToSobGroup("hgn_mothership"..playerIndex) < 12000) then          
	      Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena2")	 
	      Subtitle_Add(Actor_FleetCommand,"Alarm Level 3: Mothership's health less then 15%",1.72)    
	      eventitime[playerIndexList] = 6.128 
	    elseif (SobGroup_HealthPercentage("hgn_mothership"..playerIndex) <= 0.3 and SobGroup_Empty("hgn_mothership"..playerIndex) == 0 and Camera_GetDistanceToSobGroup("hgn_mothership"..playerIndex) < 10000) then          
	      Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena1")	
	      Subtitle_Add(Actor_FleetCommand,"Alarm Level 2: Mothership's health less then 30%",1.72)
	      eventitime[playerIndexList] = 7.66    
	    elseif (SobGroup_HealthPercentage("hgn_mothership"..playerIndex) <= 0.5 and SobGroup_Empty("hgn_mothership"..playerIndex) == 0 and Camera_GetDistanceToSobGroup("hgn_mothership"..playerIndex) < 8000) then	      
	      Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena")
	      Subtitle_Add(Actor_FleetCommand,"Alarm Level 1: Mothership's health less then 50%",1.72)  	        
	      eventitime[playerIndexList] = 9.88 	   	    
	    elseif (SobGroup_FillProximitySobGroup("temp", "nuclearbombenemies"..playerIndex, "hgn_mothership"..playerIndex, 16000) == 1) then	        
	      if SobGroup_AreAnyOfTheseTypes("temp", "hgn_nuclearbomb") == 1 then  
		      Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena2")
		      Subtitle_Add(Actor_FleetCommand,"Alarm Level 1: Enemy Heavy Nuclear Bomb is approaching to the Mothership",1.72)    
		      eventitime[playerIndexList] = 9.88  	
		    end           
	    elseif (SobGroup_FillProximitySobGroup("temp", "juggernaughtenemies"..playerIndex, "hgn_mothership"..playerIndex, 14000) == 1) then	      
	      Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena")
	      Subtitle_Add(Actor_FleetCommand,"Alarm Level 1: Enemy Juggernaut is approaching to the Mothership",1.72)    
	      eventitime[playerIndexList] = 9.88      
	    else
	      eventitime[playerIndexList] = 19.76  
	    end  
	  end 
	else
		--alarm	
	  if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mothership") >= 1 then
	    if (SobGroup_HealthPercentage("vgr_mothership"..playerIndex) <= 0.15 and SobGroup_Empty("vgr_mothership"..playerIndex) == 0 and Camera_GetDistanceToSobGroup("vgr_mothership"..playerIndex) < 12000) then          
	      Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena2")	 
	      Subtitle_Add(Actor_FleetCommand,"Alarm Level 3: Mothership's health less then 15%",1.72)    
	      eventitime[playerIndexList] = 6.128 
	    elseif (SobGroup_HealthPercentage("vgr_mothership"..playerIndex) <= 0.3 and SobGroup_Empty("vgr_mothership"..playerIndex) == 0 and Camera_GetDistanceToSobGroup("vgr_mothership"..playerIndex) < 10000) then          
	      Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena1")	
	      Subtitle_Add(Actor_FleetCommand,"Alarm Level 2: Mothership's health less then 30%",1.72)
	      eventitime[playerIndexList] = 7.66    
	    elseif (SobGroup_HealthPercentage("vgr_mothership"..playerIndex) <= 0.5 and SobGroup_Empty("vgr_mothership"..playerIndex) == 0 and Camera_GetDistanceToSobGroup("vgr_mothership"..playerIndex) < 8000) then	      
	      Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena")
	      Subtitle_Add(Actor_FleetCommand,"Alarm Level 1: Mothership's health less then 50%",1.72)  	        
	      eventitime[playerIndexList] = 9.88 	   	    
	    elseif (SobGroup_FillProximitySobGroup("temp", "nuclearbombenemies"..playerIndex, "vgr_mothership"..playerIndex, 16000) == 1) then	        
	      if SobGroup_AreAnyOfTheseTypes("temp", "hgn_nuclearbomb") == 1 then  
		      Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena2")
		      Subtitle_Add(Actor_FleetCommand,"Alarm Level 1: Enemy Heavy Nuclear Bomb is approaching to the Mothership",1.72)    
		      eventitime[playerIndexList] = 9.88  	
		    end            
	    elseif (SobGroup_FillProximitySobGroup("temp", "juggernaughtenemies"..playerIndex, "vgr_mothership"..playerIndex, 14000) == 1) then	      
	      Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena")
	      Subtitle_Add(Actor_FleetCommand,"Alarm Level 1: Enemy Juggernaut is approaching to the Mothership",1.72)    
	      eventitime[playerIndexList] = 9.88      
	    else
	      eventitime[playerIndexList] = 19.76  
	    end  
	  end 
	end  
	--population    
  if NeededPilots[playerIndexList] < 1 and year > 0 then
    if audio_block_unitcapreached[playerIndexList] == 0 then
      Sound_SpeechPlay("Data:sound/speech/allships/fleet/status_unitcapreached_1")  
      audio_block_unitcapreached[playerIndexList] = 1
    end 
  else
    audio_block_unitcapreached[playerIndexList] = 0               
  end	 
	--timing
  Rule_Remove("eventi")
	Rule_AddInterval("eventi", eventitime[playerIndexList])				       	 
end 

---Objectives-------------------------------------------

function objectives()    
  if secondaryobjectives == 1 or objectiveinit == 1 then
	  local playerIndex = 0                         
	  while playerIndex < Universe_PlayerCount() do
	    if Player_IsAlive(playerIndex) == 1 then
	      if Player_HasShipWithBuildQueue(playerIndex) == 1 then  
	        playerIndexList = playerIndex + 1
					--objective init
				  if objectiveinit == 1 then
					  if (winCondition == "DestroyMothership") then
              if leveltype == "battlearena" then		
							  Survive_id = Objective_Add("Battle Arena", OT_Primary)
								Objective_AddDescription(Survive_id, "Reach the Battle Arena and fight, search and destroy the enemy Mothership, your Mothership must survive")
								Subtitle_Add(Actor_FleetIntel,"Objectives update, primary: reach the Battle Arena and fight, search and destroy the enemy Mothership, your Mothership must survive",10)    
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
              elseif leveltype == "training" then			
							  Survive_id = Objective_Add("Training", OT_Primary)
								Objective_AddDescription(Survive_id, "Repel the enemy waves, your Mothership must survive")
								Subtitle_Add(Actor_FleetIntel,"Objectives update, primary: repel the enemy waves, your Mothership must survive",10)    
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
              elseif leveltype == "benchmark" then	
              else							
								Survive_id = Objective_Add("Complex Skirmish, Destroy Mothership", OT_Primary)
								Objective_AddDescription(Survive_id, "Search and destroy the enemy Mothership, your Mothership must survive")
								Subtitle_Add(Actor_FleetIntel,"Objectives update, primary: search and destroy enemy Motherships, your Mothership must survive",10)    
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")					 
              end 								
					  elseif (winCondition == "DestroyAll") then 
					    Survive_id = Objective_Add("Complex Skirmish, Destroy All", OT_Primary)
					  	Objective_AddDescription(Survive_id, "Search and destroy enemy forces, to survive you must have at least one active ship in your fleet")  
					  	Subtitle_Add(Actor_FleetIntel,"Objectives update, primary: search and destroy enemy forces, to survive you must have at least one active ship in your fleet",10) 
					  	Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")  
					  elseif (winCondition == "Store100000RUs") then 
					    Survive_id = Objective_Add("Complex Skirmish, Store 100000 RUs", OT_Primary)
					  	Objective_AddDescription(Survive_id, "The first Player to accumulates 100000 RUs wins")  
					  	Subtitle_Add(Actor_FleetIntel,"the first Player to accumulates 100000 RUs wins",10) 
					  	Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")  
						elseif (winCondition == "misc") then					    
					  elseif (winCondition == "Sandbox") then							
						end   
					  objectiveinit = objectiveinit + 1  					  
					  break 	  
				  elseif objectiveinit == 2 then
						--resource race 	
				    if rurace == 1 then			  	
			  	  	Reach10000RUs_id = Objective_Add("Accumulate 10000 RUs", OT_Secondary)
				  		Objective_AddDescription(Reach10000RUs_id, "The first Player to accumulates 10000 RUs gain 5000 extra RUs and 5 extra Honor points")
				  		Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the first Player to accumulates 10000 RUs gains 5000 extra RUs and 5 extra Honor points",7)	
				  		Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")			  				  	
				  		rurace = rurace + 1
				  		break
				  	elseif rurace == 2 then
				  	  if Player_GetRU(playerIndex) >= 10000 and RUMaxCapacityList[playerIndexList] >= 10000 then
					  	  Player_SetRU(playerIndex, Player_GetRU(playerIndex) + 5000)
					  	  honorbonus[playerIndexList] = honorbonus[playerIndexList] + 5
					  	  if cinecontatore[1] == 0 then
						  	  UI_SetScreenEnabled("rurace", 1)		
									UI_SetScreenVisible("rurace", 1)	
									UI_SetTextLabelText("rurace", "lblSubTitle", "Accumulate 10000 RUs");										
									UI_SetTextLabelText("rurace", "lblDescription1", "The objective Accumulate 10000 RUs completed by " .. CPULODList[playerIndexList]); 					 								
								end	
								Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the objective Accumulate 10000 RUs completed",7)
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
								if playerIndex == Universe_CurrentPlayer() then
								  Objective_SetState(Reach10000RUs_id, OS_Complete)					  
								else
								  Objective_SetState(Reach10000RUs_id, OS_Failed)
								end  
								rurace = rurace + 1  
								break	
							end	
						elseif rurace == 3 then			  	
			  	  	Reach20000RUs_id = Objective_Add("Accumulate 20000 RUs", OT_Secondary)
				  		Objective_AddDescription(Reach20000RUs_id, "The first Player to accumulates 20000 RUs gain 10000 extra RUs and 10 extra Honor points")
				  		Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the first Player to accumulates 20000 RUs gains 10000 extra RUs and 10 extra Honor points",7)
				  		Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")				  				  	
				  		rurace = rurace + 1	
				  		break
						elseif rurace == 4 then
						  if Player_GetRU(playerIndex) >= 20000 and RUMaxCapacityList[playerIndexList] >= 20000 then
					  	  Player_SetRU(playerIndex, Player_GetRU(playerIndex) + 10000)
					  	  honorbonus[playerIndexList] = honorbonus[playerIndexList] + 10
					  	  if cinecontatore[1] == 0 then
						  	  UI_SetScreenEnabled("rurace", 1)		
									UI_SetScreenVisible("rurace", 1)	
									UI_SetTextLabelText("rurace", "lblSubTitle", "Accumulate 20000 RUs");							
									UI_SetTextLabelText("rurace", "lblDescription1", "The objective Accumulate 20000 RUs completed by " .. CPULODList[playerIndexList]); 					
								end	
								Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the objective Accumulate 20000 RUs completed",7)
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
								if playerIndex == Universe_CurrentPlayer() then
								  Objective_SetState(Reach20000RUs_id, OS_Complete)					  
								else
								  Objective_SetState(Reach20000RUs_id, OS_Failed)
								end  
								rurace = rurace + 1  
								break	
							end	 	  
				  	elseif rurace == 5 then			  	
			  	  	Reach40000RUs_id = Objective_Add("Accumulate 40000 RUs", OT_Secondary)
				  		Objective_AddDescription(Reach40000RUs_id, "The first Player to accumulates 40000 RUs gain 20000 extra RUs and 20 extra Honor points")
				  		Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the first Player to accumulates 40000 RUs gains 20000 extra RUs and 20 extra Honor points",7)	
				  		Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")			  				  	
				  		rurace = rurace + 1	
				  		break
						elseif rurace == 6 then
						  if Player_GetRU(playerIndex) >= 40000 and RUMaxCapacityList[playerIndexList] >= 40000 then
					  	  Player_SetRU(playerIndex, Player_GetRU(playerIndex) + 20000)
					  	  honorbonus[playerIndexList] = honorbonus[playerIndexList] + 20
					  	  if cinecontatore[1] == 0 then
						  	  UI_SetScreenEnabled("rurace", 1)		
									UI_SetScreenVisible("rurace", 1)	
									UI_SetTextLabelText("rurace", "lblSubTitle", "Accumulate 40000 RUs");							
									UI_SetTextLabelText("rurace", "lblDescription1", "The objective Accumulate 40000 RUs completed by " .. CPULODList[playerIndexList]);  								
								end	
								Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the objective Accumulate 40000 RUs completed",7)
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
								if playerIndex == Universe_CurrentPlayer() then
								  Objective_SetState(Reach40000RUs_id, OS_Complete)					  
								else
								  Objective_SetState(Reach40000RUs_id, OS_Failed)
								end  
								rurace = rurace + 1  
								break	
							end	 	  
				  	end
						--rank race 	
				    if rankrace == 1 then			  	
			  	  	ReachLieutenantRank_id = Objective_Add("Gain the Lieutenant Rank", OT_Secondary)
				  		Objective_AddDescription(ReachLieutenantRank_id, "The first Player to gain the Lieutenant rank gain 2000 extra RUs and 2 extra Honor points")
				  		Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the first Player to gain the Lieutenant rank gain 2000 extra RUs and 2 extra Honor points",7)
				  		Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")				  				  	
				  		rankrace = rankrace + 1
				  		break
				  	elseif rankrace == 2 then
				  	  if (SobGroup_GetHardPointHealth("supporter"..playerIndex, "isLieutenant") > 0 and Player_GetRace(playerIndex) ~= Race_Hiigaran) or SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isLieutenant") > 0 then
					  	  Player_SetRU(playerIndex, Player_GetRU(playerIndex) + 2000)
					  	  honorbonus[playerIndexList] = honorbonus[playerIndexList] + 2
					  	  if cinecontatore[1] == 0 then
						  	  UI_SetScreenEnabled("rurace", 1)		
									UI_SetScreenVisible("rurace", 1)	
									UI_SetTextLabelText("rurace", "lblSubTitle", "Gain the Lieutenant Rank");						
									UI_SetTextLabelText("rurace", "lblDescription1", "The objective Gain the Lieutenant Rank completed by " .. CPULODList[playerIndexList]);						 								
								end	
								Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the objective Gain the Lieutenant Rank completed",7)
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
								if playerIndex == Universe_CurrentPlayer() then
								  Objective_SetState(ReachLieutenantRank_id, OS_Complete)					  
								else
								  Objective_SetState(ReachLieutenantRank_id, OS_Failed)
								end  													
								rankrace = rankrace + 1  
								break	
							end
						elseif rankrace == 3 then			  	
			  	  	ReachCommanderRank_id = Objective_Add("Gain the Commander Rank", OT_Secondary)
				  		Objective_AddDescription(ReachCommanderRank_id, "The first Player to gain the Commander rank gain 4000 extra RUs and 4 extra Honor points")
				  		Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the first Player to gain the Commander rank gain 4000 extra RUs and 4 extra Honor points",7)	
				  		Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")			  				  	
				  		rankrace = rankrace + 1
				  		break
				  	elseif rankrace == 4 then
				  	  if (SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCommander") > 0 and Player_GetRace(playerIndex) ~= Race_Hiigaran) or SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isCommander") > 0 then
					  	  Player_SetRU(playerIndex, Player_GetRU(playerIndex) + 4000)
					  	  honorbonus[playerIndexList] = honorbonus[playerIndexList] + 4
					  	  if cinecontatore[1] == 0 then
						  	  UI_SetScreenEnabled("rurace", 1)		
									UI_SetScreenVisible("rurace", 1)	
									UI_SetTextLabelText("rurace", "lblSubTitle", "Gain the Commander Rank");			
									UI_SetTextLabelText("rurace", "lblDescription1", "The objective Gain the Commander Rank completed by " .. CPULODList[playerIndexList]);					 								
								end	
								Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the objective Gain the Commander Rank completed",7)
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
								if playerIndex == Universe_CurrentPlayer() then
								  Objective_SetState(ReachCommanderRank_id, OS_Complete)					  
								else
								  Objective_SetState(ReachCommanderRank_id, OS_Failed)
								end  							
								rankrace = rankrace + 1  
								break	
							end			
						elseif rankrace == 5 then			  	
			  	  	ReachCaptainRank_id = Objective_Add("Gain the Captain Rank", OT_Secondary)
				  		Objective_AddDescription(ReachCaptainRank_id, "The first Player to gain the Captain rank gain 6000 extra RUs and 6 extra Honor points")
				  		Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the first Player to gain the Captain rank gain 6000 extra RUs and 6 extra Honor points",7)		
				  		Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")		  				  	
				  		rankrace = rankrace + 1
				  		break
				  	elseif rankrace == 6 then
				  	  if (SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCaptain") > 0 and Player_GetRace(playerIndex) ~= Race_Hiigaran) or SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isCaptain") > 0 then
					  	  Player_SetRU(playerIndex, Player_GetRU(playerIndex) + 6000)
					  	  honorbonus[playerIndexList] = honorbonus[playerIndexList] + 6
					  	  if cinecontatore[1] == 0 then
						  	  UI_SetScreenEnabled("rurace", 1)		
									UI_SetScreenVisible("rurace", 1)	
									UI_SetTextLabelText("rurace", "lblSubTitle", "Gain the Captain Rank");			
									UI_SetTextLabelText("rurace", "lblDescription1", "The objective Gain the Captain Rank completed by " .. CPULODList[playerIndexList]);											 								
								end	
								Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the objective Gain the Captain Rank completed",7)
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
								if playerIndex == Universe_CurrentPlayer() then
								  Objective_SetState(ReachCaptainRank_id, OS_Complete)					  
								else
								  Objective_SetState(ReachCaptainRank_id, OS_Failed)
								end  											
								rankrace = rankrace + 1  
								break	
							end			
						elseif rankrace == 7 then			  	
			  	  	ReachCommodoreRank_id = Objective_Add("Gain the Commodore Rank", OT_Secondary)
				  		Objective_AddDescription(ReachCommodoreRank_id, "The first Player to gain the Commodore rank gain 8000 extra RUs and 8 extra Honor points")
				  		Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the first Player to gain the Commodore rank gain 8000 extra RUs and 8 extra Honor points",7)	
				  		Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")			  				  	
				  		rankrace = rankrace + 1
				  		break
				  	elseif rankrace == 8 then
				  	  if (SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCommodore") > 0 and Player_GetRace(playerIndex) ~= Race_Hiigaran) or SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isCommodore") > 0 then
					  	  Player_SetRU(playerIndex, Player_GetRU(playerIndex) + 8000)
					  	  honorbonus[playerIndexList] = honorbonus[playerIndexList] + 8
					  	  if cinecontatore[1] == 0 then
						  	  UI_SetScreenEnabled("rurace", 1)		
									UI_SetScreenVisible("rurace", 1)	
									UI_SetTextLabelText("rurace", "lblSubTitle", "Gain the Commodore Rank");			
									UI_SetTextLabelText("rurace", "lblDescription1", "The objective Gain the Commodore Rank completed by " .. CPULODList[playerIndexList]);											 								
								end	
								Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the objective Gain the Commodore Rank completed",7)
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
								if playerIndex == Universe_CurrentPlayer() then
								  Objective_SetState(ReachCommodoreRank_id, OS_Complete)					  
								else
								  Objective_SetState(ReachCommodoreRank_id, OS_Failed)
								end  											
								rankrace = rankrace + 1  
								break	
							end	
						elseif rankrace == 9 then			  	
			  	  	ReachAdmiralRank_id = Objective_Add("Gain the Admiral Rank", OT_Secondary)
				  		Objective_AddDescription(ReachAdmiralRank_id, "The first Player to gain the Admiral rank gain 10000 extra RUs and 10 extra Honor points")
				  		Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the first Player to gain the Admiral rank gain 10000 extra RUs and 10 extra Honor points",7)	
				  		Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")			  				  	
				  		rankrace = rankrace + 1
				  		break
				  	elseif rankrace == 10 then
				  	  if (SobGroup_GetHardPointHealth("supporter"..playerIndex, "isAdmiral") > 0 and Player_GetRace(playerIndex) ~= Race_Hiigaran) or SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isAdmiral") > 0 then
					  	  Player_SetRU(playerIndex, Player_GetRU(playerIndex) + 10000)
					  	  honorbonus[playerIndexList] = honorbonus[playerIndexList] + 10
					  	  if cinecontatore[1] == 0 then
						  	  UI_SetScreenEnabled("rurace", 1)		
									UI_SetScreenVisible("rurace", 1)	
									UI_SetTextLabelText("rurace", "lblSubTitle", "Gain the Admiral Rank");			
									UI_SetTextLabelText("rurace", "lblDescription1", "The objective Gain the Admiral Rank completed by " .. CPULODList[playerIndexList]);									 								
								end	
								Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the objective Gain the Admiral Rank completed",7)
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
								if playerIndex == Universe_CurrentPlayer() then
								  Objective_SetState(ReachAdmiralRank_id, OS_Complete)					  
								else
								  Objective_SetState(ReachAdmiralRank_id, OS_Failed)
								end  												
								rankrace = rankrace + 1  
								break	
							end					  	
						elseif rankrace == 11 then			  	
			  	  	ReachFleetAdmiralRank_id = Objective_Add("Gain the Fleet Admiral Rank", OT_Secondary)
				  		Objective_AddDescription(ReachFleetAdmiralRank_id, "The first Player to gain the Fleet Admiral rank gain 12000 extra RUs and 12 extra Honor points")
				  		Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the first Player to gain the Fleet Admiral rank gain 12000 extra RUs and 12 extra Honor points",7)	
				  		Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")			  				  	
				  		rankrace = rankrace + 1
				  		break
				  	elseif rankrace == 12 then
				  	  if (SobGroup_GetHardPointHealth("supporter"..playerIndex, "isFleetAdmiral") > 0 and Player_GetRace(playerIndex) ~= Race_Hiigaran) or SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isFleetAdmiral") > 0 then
					  	  Player_SetRU(playerIndex, Player_GetRU(playerIndex) + 12000)
					  	  honorbonus[playerIndexList] = honorbonus[playerIndexList] + 12
					  	  if cinecontatore[1] == 0 then
						  	  UI_SetScreenEnabled("rurace", 1)		
									UI_SetScreenVisible("rurace", 1)	
									UI_SetTextLabelText("rurace", "lblSubTitle", "Gain the Fleet Admiral Rank");			
									UI_SetTextLabelText("rurace", "lblDescription1", "The objective Gain the Fleet Admiral Rank completed by " .. CPULODList[playerIndexList]);									 								
								end	
								Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the objective Gain the Fleet Admiral Rank completed",7)
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
								if playerIndex == Universe_CurrentPlayer() then
								  Objective_SetState(ReachFleetAdmiralRank_id, OS_Complete)					  
								else
								  Objective_SetState(ReachFleetAdmiralRank_id, OS_Failed)
								end  						
								rankrace = rankrace + 1  
								break	
							end	
						end
						--megalith race 	
				    if domainrace == 1 then		
				      if SobGroup_Count("megalithnoowner") > 0 then	  	
				  	  	CaptureMegalith_id = Objective_Add("Capture Mining Base", OT_Secondary)
					  		Objective_AddDescription(CaptureMegalith_id, "The first Player to captures a Mining Base gain 5000 extra RUs and 5 extra Honor points")
					  		Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the first Player to captures a Mining Base gain 5000 extra RUs and 5 extra Honor points",7)	
					  		Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")			  				  	
					  		domainrace = domainrace + 1
					  		break
					  	end	
				  	elseif domainrace == 2 then
				  	  if SobGroup_Count("meg_gehenna_1ctm"..playerIndex) > 0 or SobGroup_Count("meg_gehenna_3ctm"..playerIndex) > 0 then
					  	  Player_SetRU(playerIndex, Player_GetRU(playerIndex) + 5000)
					  	  honorbonus[playerIndexList] = honorbonus[playerIndexList] + 5
					  	  if cinecontatore[1] == 0 then
						  	  UI_SetScreenEnabled("rurace", 1)		
									UI_SetScreenVisible("rurace", 1)	
									UI_SetTextLabelText("rurace", "lblSubTitle", "Capture Mining Base");			
									UI_SetTextLabelText("rurace", "lblDescription1", "The objective Capture Mining Base completed by " .. CPULODList[playerIndexList]);							 								
								end	
								Subtitle_Add(Actor_FleetIntel,"Objectives update, secondary: the objective Capture Mining Base completed",7)
								Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/fintelobjectiveping")
								if playerIndex == Universe_CurrentPlayer() then
								  Objective_SetState(CaptureMegalith_id, OS_Complete)					  
								else
								  Objective_SetState(CaptureMegalith_id, OS_Failed)
								end  													
								domainrace = domainrace + 1 
								break	
							end							
				  	end
				  end				
				end
			end
			playerIndex = playerIndex + 1
		end			 
	else
	  Rule_Remove("objectives")  
	end  			
end 

---Match Init-------------------------------------------

function matchinit()
	--stabilisce la velocità del match (11-52->0.28-1.79)
	--tactical 0.33
	--normal 0.69
	--deathmatch 1.11
	--carnage 1.61
  if year < 3 then
		gamespeedprogression =
		(	
		(resstart/1000) +
		startwith +
		honourstart +	
		buildspeed +
		resource +	
		honoursensitivity +
		researchsensitivity + 
		recruiting +
		(rankremuneration-1) +	
		experiencesensitivity +
		energysensitivity 
		)
		/
		22
	end
  local playerIndex = 0   
  local cpu = 1   
  local player = 1     
  --reset bloccogamesettings
	for y = 0,(Universe_PlayerCount()-1),1 do	        
		if Player_IsAlive(y) == 1 then	
			bloccogamesettings[y+1] = 0			
		end
	end
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
        playerIndexList = playerIndex + 1				
				--gamespeed		
				if gamespeedprogression < 0.5 then 
				  if Player_CanResearch(playerIndex, "gamespeed1" ) == 1 then
						Player_GrantResearchOption(playerIndex, "gamespeed1")
					end
				elseif gamespeedprogression < 1 then
				  if Player_CanResearch(playerIndex, "gamespeed2" ) == 1 then
						Player_GrantResearchOption(playerIndex, "gamespeed2")
					end	
				elseif gamespeedprogression < 1.5 then
				  if Player_CanResearch(playerIndex, "gamespeed3" ) == 1 then
						Player_GrantResearchOption(playerIndex, "gamespeed3")
					end		
				else
				  if Player_CanResearch(playerIndex, "gamespeed4" ) == 1 then
						Player_GrantResearchOption(playerIndex, "gamespeed4")
					end	
				end
				if SobGroup_Empty("supporter"..playerIndex) == 0 then
				  --game settings
				  if bloccogamesettings[playerIndex+1] == 0 then
					  if SobGroup_GetHardPointHealth("supporter"..playerIndex, "resistence") == 0 then
						  SobGroup_CreateSubSystem("supporter"..playerIndex, "resistence")							
						end	
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "buildspeed") == 0 then
						  SobGroup_CreateSubSystem("supporter"..playerIndex, "buildspeed")							
						end	
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "resource") == 0 then
						  SobGroup_CreateSubSystem("supporter"..playerIndex, "resource")							
						end	
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "hyperspace") == 0 then
						  SobGroup_CreateSubSystem("supporter"..playerIndex, "hyperspace")							
						end															
						for y = 0,(Universe_PlayerCount()-1),1 do	        
							if Player_IsAlive(y) == 1 then							       
								if AreAllied(playerIndex, y) == 1 then
									if y == playerIndex then
									  bloccogamesettings[y+1] = 0
									else
										bloccogamesettings[y+1] = 1
									end	
								end
							end
						end							
          else
					  if SobGroup_GetHardPointHealth("supporter"..playerIndex, "resistence") > 0 then
							SobGroup_SetHardPointHealth("supporter"..playerIndex, "resistence", 0) 
						end	
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "buildspeed") > 0 then
							SobGroup_SetHardPointHealth("supporter"..playerIndex, "buildspeed", 0) 
						end	
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "resource") > 0 then
							SobGroup_SetHardPointHealth("supporter"..playerIndex, "resource", 0) 
						end	
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "hyperspace") > 0 then
							SobGroup_SetHardPointHealth("supporter"..playerIndex, "hyperspace", 0) 
						end																			
					end
					--name
					if PlayerBlockNameList[playerIndexList] == 0 then        
						if Player_HasResearch(playerIndex, "isai" ) == 1 then 
							CPULODList[playerIndexList] = "CPU " .. cpu   
							Player_SetPlayerName(playerIndex, CPULODList[playerIndexList])
							cpu = cpu + 1
						else  
							CPULODList[playerIndexList] = "Player " .. player       
							player = player + 1
						end
						PlayerBlockNameList[playerIndexList] = 1
					end					
					--military ai	 
          if Player_HasResearch(playerIndex, "isai" ) == 1 then 					
						if military == 5 then
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "military2") == 0 then
								SobGroup_CreateSubSystem("supporter"..playerIndex, "military2")
							end  
						elseif military == 4 then
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "military1") == 0 then
								SobGroup_CreateSubSystem("supporter"..playerIndex, "military1")
							end 
						elseif military == 2 then
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "military") == 0 then
								SobGroup_CreateSubSystem("supporter"..playerIndex, "military")
							end   
						elseif military == 1 then
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "military0") == 0 then
								SobGroup_CreateSubSystem("supporter"..playerIndex, "military0")
							end 
						--disable AI						
						elseif military == 6 then					  
							if Player_HasResearch(playerIndex, "iseasy") == 1 or
								 Player_HasResearch(playerIndex, "isstandard") == 1 or
								 Player_HasResearch(playerIndex, "ishard") == 1 or
								 Player_HasResearch(playerIndex, "isexpert") == 1 then
								CPU_Enable(playerIndex,0)		
							end	
						--destroy AI     
						elseif military == 7 then		
							if Player_HasResearch(playerIndex, "iseasy") == 1 or
								 Player_HasResearch(playerIndex, "isstandard") == 1 or
								 Player_HasResearch(playerIndex, "ishard") == 1 or
								 Player_HasResearch(playerIndex, "isexpert") == 1 then
								CPU_Enable(playerIndex,0)		
								SobGroup_TakeDamage("Player_Ships"..playerIndex, 1) 
							end		               
						end  
					else
          end					
        end					
      end
    end
    playerIndex = playerIndex + 1
  end  
  Rule_Remove("matchinit")	
  Rule_AddInterval("matchinit1", 1)	
end   

function matchinit1()
  local playerIndex = 0
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then 
			  if SobGroup_Empty("supporter"..playerIndex) == 0 then	     				
				  if bloccogamesettings[playerIndex+1] == 0 then
					  if SobGroup_GetHardPointHealth("supporter"..playerIndex, "resistence") >= 0 then						  
							SobGroup_SetHardPointHealth("supporter"..playerIndex, "resistence", unithealth) 
						end	
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "buildspeed") >= 0 then						  
							SobGroup_SetHardPointHealth("supporter"..playerIndex, "buildspeed", buildspeed) 
						end	
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "resource") >= 0 then						 
							SobGroup_SetHardPointHealth("supporter"..playerIndex, "resource", resource) 
						end	
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "hyperspace") >= 0 then						  
							SobGroup_SetHardPointHealth("supporter"..playerIndex, "hyperspace", hyperspace) 
						end							
          end
        end					
			end
		end	
		playerIndex = playerIndex + 1
	end		
	Rule_Remove("matchinit1")  
	Rule_AddInterval("matchinit", 60)	
end

---BUIL ON START---------------------------------------------------------------------------------------------------

function buildonstartextra()   
  local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
        if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then                    
          if SobGroup_Count("hgn_crewstation"..playerIndex) >= 1 then                      
            SobGroup_CreateShip("hgn_crewstation"..playerIndex, "hgn_transportcell")                  
          end      				
        else          
        end
      end
    end
    playerIndex = playerIndex + 1
  end    
  Rule_Remove("buildonstartextra")      
end   

function buildonstartfleet()   
  local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
        if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then   
          if SobGroup_Count("hgn_mothership"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_power_ms")              				
          end 			         
          if SobGroup_Count("hgn_crewstation"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule")  		                
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule")		                       
            SobGroup_CreateShip("hgn_crewstation"..playerIndex, "hgn_transportcell")   
            SobGroup_CreateShip("hgn_crewstation"..playerIndex, "hgn_transportcell")  						
          end     					
        else          
          Player_GrantResearchOption(playerIndex , "Crew1")          			
          Player_GrantResearchOption(playerIndex , "Officer1")    
          if SobGroup_Count("vgr_mothership"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateSubSystem("vgr_mothership"..playerIndex, "vgr_power_ms")             		                  
          end 	 					
        end
      end
    end
    playerIndex = playerIndex + 1
  end    
  Rule_Remove("buildonstartfleet")      
end   

function buildonstartempire()   
  local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
        if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then                   
					if SobGroup_Count("hgn_mothership"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_power_ms") 
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_power_ms1")             							
          end 
          if SobGroup_Count("hgn_crewstation"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule")  
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule1")		                      
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule1")		                
            SobGroup_CreateShip("hgn_crewstation"..playerIndex, "hgn_transportcell")              
            SobGroup_CreateShip("hgn_crewstation"..playerIndex, "hgn_transportcell")   
            SobGroup_CreateShip("hgn_crewstation"..playerIndex, "hgn_transportcell")  						
          end      					
        else            
          Player_GrantResearchOption(playerIndex , "Crew1")					
          Player_GrantResearchOption(playerIndex , "Crew2")      					  			
          Player_GrantResearchOption(playerIndex , "Officer1")
          Player_GrantResearchOption(playerIndex , "Officer2")										
          if SobGroup_Count("vgr_mothership"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateSubSystem("vgr_mothership"..playerIndex, "vgr_power_ms")             		                  
          end 
          if SobGroup_Count("vgr_shipyard"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateSubSystem("vgr_shipyard"..playerIndex, "vgr_power_sy")             		                  
          end			 					
        end
      end
    end
    playerIndex = playerIndex + 1
  end    
  Rule_Remove("buildonstartempire")  	  
end  

function buildonstartmap()   
  local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
        if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then				
				  --solar system
				  if SobGroup_Empty("star_sol") == 0 then 
						if SobGroup_Count("hgn_mothership"..playerIndex) >= 1 then   
						  if leveltype ~= "benchmark" then
								if SobGroup_Count("hgn_battlestation"..playerIndex) == 0 then	 --serve x start test					
									SobGroup_CreateShip("hgn_mothership"..playerIndex, "hgn_battlestation")   
								end		
							end	
						end  
					end	
					
        end
      end
    end
    playerIndex = playerIndex + 1
  end    
  Rule_Remove("buildonstartmap")    
end   

function buildonstarttest()   
  local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
        if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then 
          if SobGroup_Count("hgn_mothership"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateShip("hgn_mothership"..playerIndex, "hgn_gunturret")  
            SobGroup_CreateShip("hgn_mothership"..playerIndex, "hgn_rapidfiregunturret")  						
						SobGroup_CreateShip("hgn_mothership"..playerIndex, "hgn_pulsarturret")          
						SobGroup_CreateShip("hgn_mothership"..playerIndex, "hgn_hyperspacestation")              
						SobGroup_CreateShip("hgn_mothership"..playerIndex, "hgn_ionturret")      
						SobGroup_CreateShip("hgn_mothership"..playerIndex, "hgn_missileturret")      
						SobGroup_CreateShip("hgn_mothership"..playerIndex, "hgn_rts")                
						SobGroup_CreateShip("hgn_mothership"..playerIndex, "Hgn_defensefieldturret")           
						SobGroup_CreateShip("hgn_mothership"..playerIndex, "Hgn_probe")    
						SobGroup_CreateShip("hgn_mothership"..playerIndex, "Hgn_proximitysensor")    
						SobGroup_CreateShip("hgn_mothership"..playerIndex, "Hgn_ecmprobe")   
            SobGroup_CreateShip("hgn_mothership"..playerIndex, "Hgn_ghost") 						
          end 					
          if SobGroup_Count("hgn_crewstation"..playerIndex) >= 1 then 
            SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule")  
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule1")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule2")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule3")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule4")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule5")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule1")	
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule2")		
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule3")	  
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule4")	        
            SobGroup_CreateShip("hgn_crewstation"..playerIndex, "hgn_transportcell")                          
          end 
          if SobGroup_Count("hgn_scaver"..playerIndex) >= 1 then 
          	SobGroup_CreateShip("hgn_scaver"..playerIndex, "Hgn_massiveturret") 
          end             					
        else
          SobGroup_CreateShip("vgr_mothership"..playerIndex, "vgr_weaponplatform_gun")  
          SobGroup_CreateShip("vgr_mothership"..playerIndex, "vgr_weaponplatform_lance")  					
          SobGroup_CreateShip("vgr_mothership"..playerIndex, "vgr_weaponplatform_missile")          
          Player_GrantResearchOption(playerIndex , "Crew1")
          Player_GrantResearchOption(playerIndex , "Crew2")      
					Player_GrantResearchOption(playerIndex , "Crew3")  
          Player_GrantResearchOption(playerIndex , "Crew4")
          Player_GrantResearchOption(playerIndex , "Crew5")      
					Player_GrantResearchOption(playerIndex , "Crew6")      					
          Player_GrantResearchOption(playerIndex , "Officer1")
          Player_GrantResearchOption(playerIndex , "Officer2")
					Player_GrantResearchOption(playerIndex , "Officer3")
					Player_GrantResearchOption(playerIndex , "Officer4")
					Player_GrantResearchOption(playerIndex , "Officer5")
        end
      end
    end
    playerIndex = playerIndex + 1
  end      
  Rule_Remove("buildonstarttest")  	  
end  

function buildonstartmovies()  	  
	local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
        if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then 
				  --research
          if Player_HasResearch(playerIndex, "nuclear4") == 0 then		
					  Player_GrantResearchOption(playerIndex , "nuclear4") 		
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoDestroyerIcon") 		
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoCruisera") 		
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoCruiserb") 
						Player_GrantResearchOption(playerIndex , "ImprovedShieldCruiserIcon") 					
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoSmasher") 	
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoArk") 									
						Player_GrantResearchOption(playerIndex , "FighterHealthUpgrade3") 		
						Player_GrantResearchOption(playerIndex , "CorvetteHealthUpgrade3") 		
						Player_GrantResearchOption(playerIndex , "FrigateHealthUpgrade2") 		
						Player_GrantResearchOption(playerIndex , "PlatformHealthUpgrade2") 	
						Player_GrantResearchOption(playerIndex , "ArmedCapitalHealthUpgrade1") 
						Player_GrantResearchOption(playerIndex , "ArmedCapitalSpeedUpgrade3")	
						Player_GrantResearchOption(playerIndex , "ArmedCapitalDriveUpgrade3")	
						Player_GrantResearchOption(playerIndex , "SuperArmedCapitalHealthUpgrade1") 
						Player_GrantResearchOption(playerIndex , "SuperArmedCapitalSpeedUpgrade3")	
						Player_GrantResearchOption(playerIndex , "SuperArmedCapitalDriveUpgrade3")					  					
						Player_GrantResearchOption(playerIndex , "CapitalHealthUpgrade1") 
						Player_GrantResearchOption(playerIndex , "CapitalSpeedUpgrade3")	
						Player_GrantResearchOption(playerIndex , "CapitalDriveUpgrade3")					
						Player_GrantResearchOption(playerIndex , "SensorsUpgrade3")	
          end 		
					--ships
					SobGroup_Clear("temp")
					local sob_position = SobGroup_GetPosition("hgn_mothership"..playerIndex)									
					Volume_AddSphere("centre",{0,0,0,},1000)
					for k = 1, 8, 1 do
					  for y = 1, 7, 1 do
							Volume_AddSphere("vol"..playerIndex .. tostring(k) .. tostring(y),{sob_position[1],sob_position[2]-1500+500*y,sob_position[3]-1000*k,},1000)						
						end	
						if k < 8 then
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "hgn_hft", "hgn_hft", "temp", "vol"..playerIndex .. tostring(k) .. tostring(1))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "hgn_multiguncorvette", "hgn_multiguncorvette", "temp", "vol"..playerIndex .. tostring(k) .. tostring(2))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "Hgn_ioncannonfrigate", "Hgn_ioncannonfrigate", "temp", "vol"..playerIndex .. tostring(k) .. tostring(3))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "hgn_advdestroyer", "hgn_advdestroyer", "temp", "vol"..playerIndex .. tostring(k) .. tostring(4))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "hgn_cruiserb", "hgn_cruiserb", "temp", "vol"..playerIndex .. tostring(k) .. tostring(5))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "hgn_cruisera", "hgn_cruisera", "temp", "vol"..playerIndex .. tostring(k) .. tostring(6))
						elseif k == 8 then
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "hgn_vortex", "hgn_vortex", "temp", "vol"..playerIndex .. tostring(2) .. tostring(7))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "hgn_battlecarrier", "hgn_battlecarrier", "temp", "vol"..playerIndex .. tostring(4) .. tostring(7))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "hgn_battleship", "hgn_battleship", "temp", "vol"..playerIndex .. tostring(6) .. tostring(7))				
						end
					end					
        else
				  --research
          if Player_HasResearch(playerIndex, "ImprovedTorpedoDestroyer") == 0 then	
					  Player_GrantResearchOption(playerIndex , "ImprovedTorpedoDestroyer") 		
						Player_GrantResearchOption(playerIndex , "MineDestroyer") 		
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoPulseDestroyer") 		
						Player_GrantResearchOption(playerIndex , "MinePulseDestroyer") 						
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoCruiser") 		
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoCruiser1") 		
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoLightCruiser") 		
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoBattleCarrier")
						Player_GrantResearchOption(playerIndex , "ImprovedTorpedoBattleship") 		
						Player_GrantResearchOption(playerIndex , "MineBattleship") 		
						Player_GrantResearchOption(playerIndex , "FreackerBattleship") 		
						Player_GrantResearchOption(playerIndex , "CoordinatedWeaponLongRangeArtilleryFrigate") 					
						Player_GrantResearchOption(playerIndex , "FighterHealthUpgrade3") 		
						Player_GrantResearchOption(playerIndex , "CorvetteHealthUpgrade3") 		
						Player_GrantResearchOption(playerIndex , "FrigateHealthUpgrade2") 		
						Player_GrantResearchOption(playerIndex , "PlatformHealthUpgrade2") 	
						Player_GrantResearchOption(playerIndex , "ArmedCapitalHealthUpgrade1") 
						Player_GrantResearchOption(playerIndex , "ArmedCapitalSpeedUpgrade3")	
						Player_GrantResearchOption(playerIndex , "ArmedCapitalDriveUpgrade3")	
						Player_GrantResearchOption(playerIndex , "SuperArmedCapitalHealthUpgrade1") 
						Player_GrantResearchOption(playerIndex , "SuperArmedCapitalSpeedUpgrade3")	
						Player_GrantResearchOption(playerIndex , "SuperArmedCapitalDriveUpgrade3")										
						Player_GrantResearchOption(playerIndex , "CapitalHealthUpgrade1") 
						Player_GrantResearchOption(playerIndex , "CapitalSpeedUpgrade3")	
						Player_GrantResearchOption(playerIndex , "CapitalDriveUpgrade3")					
						Player_GrantResearchOption(playerIndex , "SensorsUpgrade3")
          end 
					--ships
					SobGroup_Clear("temp")
					local sob_position = SobGroup_GetPosition("vgr_mothership"..playerIndex)									
					Volume_AddSphere("centre",{0,0,0,},1000)
					for k = 1, 8, 1 do
					  for y = 1, 8, 1 do
							Volume_AddSphere("vol"..playerIndex .. tostring(k) .. tostring(y),{sob_position[1],sob_position[2]-1500+500*y,sob_position[3]-1000*k,},1000)					
						end	
						if k < 8 then
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "Vgr_EliteFighter", "Vgr_EliteFighter", "temp", "vol"..playerIndex .. tostring(k) .. tostring(1))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "Vgr_striker", "Vgr_striker", "temp", "vol"..playerIndex .. tostring(k) .. tostring(2))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "Vgr_AdvAssaultFrigate", "Vgr_AdvAssaultFrigate", "temp", "vol"..playerIndex .. tostring(k) .. tostring(3))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "Vgr_LongRangeArtilleryFrigate", "Vgr_LongRangeArtilleryFrigate", "temp", "vol"..playerIndex .. tostring(k) .. tostring(4))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "vgr_pulsedestroyer", "vgr_pulsedestroyer", "temp", "vol"..playerIndex .. tostring(k) .. tostring(5))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "Vgr_cruiser", "Vgr_cruiser", "temp", "vol"..playerIndex .. tostring(k) .. tostring(6))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "Vgr_LightCruiser", "Vgr_LightCruiser", "temp", "vol"..playerIndex .. tostring(k) .. tostring(7))
						elseif k == 8 then
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "vgr_alkhalid", "vgr_alkhalid", "temp", "vol"..playerIndex .. tostring(2) .. tostring(8))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "vgr_battlecarrier", "vgr_battlecarrier", "temp", "vol"..playerIndex .. tostring(4) .. tostring(8))
							SobGroup_SpawnNewShipInSobGroup(playerIndex, "vgr_sinner", "vgr_sinner", "temp", "vol"..playerIndex .. tostring(6) .. tostring(8))				
						end
					end
				end				
      end
    end
    playerIndex = playerIndex + 1
  end    			
	Rule_Remove("buildonstartmovies") 	
	Rule_AddInterval("buildonstartmovies1", 20)
end  

function buildonstartmovies1()  	
  local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
        if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then 
          --subs
          if SobGroup_Count("hgn_mothership"..playerIndex) >= 1 then  	
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "Hgn_MS_Production_Fighter")
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "Hgn_MS_Production_Corvette")
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "Hgn_MS_Production_Frigate")
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "Hgn_MS_Production_CapShip")   
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "Hgn_MS_Module_drive")
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "Hgn_MS_Module_Repair")
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "Hgn_MS_Module_DefenseField")
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "Hgn_MS_Module_Hyperspace")
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "Hgn_MS_Sensors_AdvancedArray")						
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_ms_module_defensefield1")
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_MothershipCannon1")
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_ms_torpedolauncher1")
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_cf_rapid1_ms")  
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "poh2")  						
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "supplyms")  
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "supplyms1")  
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_power_ms")   
            SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_power_ms1")   						
          end  			
          if SobGroup_Count("hgn_shipyard_g"..playerIndex) >= 1 then  	
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_MS_Production_Fighter")
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_MS_Production_Corvette")
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_MS_Production_Frigate")
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_SY_Production_CapShip")   
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_MS_Module_drive")
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_MS_Module_Repair")
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_MS_Module_DefenseField")
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_MS_Module_Hyperspace")
						SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_SY_Module_PlatformControl")
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_MS_Module_build")
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "Hgn_MS_Sensors_AdvancedArray")						
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "hgn_balkancannon")						
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "shield")						
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "hgn_gujkingcannonblaster")
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "hgn_pulser")  
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "hgn_pulser2")  
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "bs1")  						
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "supplyms")  
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "supplyms1")  
            SobGroup_CreateSubSystem("hgn_shipyard_g"..playerIndex, "hgn_power_ms")               						
          end  			
          if SobGroup_Count("hgn_battleshipyard"..playerIndex) >= 1 then  	
            SobGroup_CreateSubSystem("hgn_battleshipyard"..playerIndex, "hgn_bsy_production_capship")
            SobGroup_CreateSubSystem("hgn_battleshipyard"..playerIndex, "hgn_bsy_production_fighter")
            SobGroup_CreateSubSystem("hgn_battleshipyard"..playerIndex, "hgn_bsy_production_frigate")
            SobGroup_CreateSubSystem("hgn_battleshipyard"..playerIndex, "hgn_bsy_production_corvette")   
            SobGroup_CreateSubSystem("hgn_battleshipyard"..playerIndex, "Hgn_MS_Module_drive")
					end  			 					
          if SobGroup_Count("hgn_crewstation"..playerIndex) >= 1 then 
            SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule")  
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule1")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule2")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule3")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_PilotModule4")		        
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule")
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule1")	
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule2")		
		        SobGroup_CreateSubSystem("hgn_crewstation"..playerIndex, "Hgn_OfficerModule3")
          end 
          if SobGroup_Count("hgn_researchstation"..playerIndex) >= 1 then    
					  SobGroup_CreateSubSystem("hgn_researchstation"..playerIndex, "Hgn_MS_Module_Research")		
		        SobGroup_CreateSubSystem("hgn_researchstation"..playerIndex, "Hgn_MS_Module_ResearchAdvanced")							
          end    
          if SobGroup_Count("hgn_power"..playerIndex) >= 1 then  
					  for w = 1,9,1 do							  
							SobGroup_CreateSubSystem("hgn_power"..playerIndex, "Hgn_power_m"..w)
            end		
          end   
          if SobGroup_Count("hgn_scaver"..playerIndex) >= 1 then
            for w = 1,4,1 do					
							SobGroup_CreateSubSystem("hgn_scaver"..playerIndex, "Supply"..w)		
            end			
          end  
          if SobGroup_Count("hgn_vortex"..playerIndex) >= 1 then  	
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "Hgn_C_Module_drive")
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_vhcannonx3")
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_pulsers1bc")
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_pulsers2bc")  
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_pulsers3bc")
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_pulsers4bc")
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_v_torpedolauncher")
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_v_torpedolauncher1")  
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_v_torpedolauncher2") 
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_v_torpedolauncher3")
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_miner")  
            SobGroup_CreateSubSystem("hgn_vortex"..playerIndex, "hgn_miner1")  										
          end    		
          if SobGroup_Count("hgn_battleship"..playerIndex) >= 1 then  	
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "Hgn_C_Module_drive")
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "hgn_pulsers1bc")
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "hgn_pulsers2bc")
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "hgn_pulsers3bc")  
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "HGN_SCC_6xAC_Turret_s1bc")
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "HGN_SCC_6xAC_Turret_s2bc")
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "HGN_SCC_6xAC_Turret_s3bc")
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "hgn_heavyion_sentinel1bc")  
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "hgn_heavyion_sentinel2bc") 
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "Hgn_HeavyGuidedPlasmaBombTubes2BS")
            SobGroup_CreateSubSystem("hgn_battleship"..playerIndex, "Hgn_HeavyGuidedPlasmaBombTubesBSRear")         						
          end  
					if SobGroup_Count("hgn_lighttanker"..playerIndex) >= 1 then  	
            SobGroup_CreateSubSystem("hgn_lighttanker"..playerIndex, "ftam")
            SobGroup_CreateSubSystem("hgn_lighttanker"..playerIndex, "ftam1")
            SobGroup_CreateSubSystem("hgn_lighttanker"..playerIndex, "ftam2")
            SobGroup_CreateSubSystem("hgn_lighttanker"..playerIndex, "hgn_s_nuclear")                           						
          end  
					if SobGroup_Count("hgn_spacecarrier"..playerIndex) >= 1 then  	
            SobGroup_CreateSubSystem("hgn_spacecarrier"..playerIndex, "hgn_rapidturret1")
            SobGroup_CreateSubSystem("hgn_spacecarrier"..playerIndex, "hgn_rapidturret2")                                      						
          end  
					if SobGroup_Count("hgn_battlecarrier"..playerIndex) >= 1 then  	
            SobGroup_CreateSubSystem("hgn_battlecarrier"..playerIndex, "Hgn_C_Production_Fighter")
            SobGroup_CreateSubSystem("hgn_battlecarrier"..playerIndex, "Hgn_SC_Production_Corvette")                                      						
            SobGroup_CreateSubSystem("hgn_battlecarrier"..playerIndex, "Hgn_SC_Production_Frigate")
            SobGroup_CreateSubSystem("hgn_battlecarrier"..playerIndex, "Hgn_SC_Production_Destroyer")   
            SobGroup_CreateSubSystem("hgn_battlecarrier"..playerIndex, "hgn_pulserbc2")                                              						
          end            					
        else
          --subs
          if SobGroup_Count("vgr_alkhalid"..playerIndex) >= 1 then 
            SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "Vgr_C_Module_drive")  
		        SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_lithiumion_port")
		        SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_lithiumion_stbd")
		        SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_lithiumion_stbd1")
		        SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_lithiumion_port1")		        
		        SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_dualflechette_port")
		        SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_dualflechette_stbd")	
		        SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_dualflechette_stbd1")		
		        SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_dualflechette_port1")	
            SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_quadflechette_stbd")	
		        SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_quadflechette_stbd1")		
		        SobGroup_CreateSubSystem("vgr_alkhalid"..playerIndex, "vgr_qje_quadflechette_stbd2")		
          end 
					if SobGroup_Count("vgr_commandfortress"..playerIndex) >= 1 then 
            SobGroup_CreateSubSystem("vgr_commandfortress"..playerIndex, "hgn_commandfortress_defencefacility")  
		        SobGroup_CreateSubSystem("vgr_commandfortress"..playerIndex, "vgr_qje_quadflechette_stbd_cf")
		        SobGroup_CreateSubSystem("vgr_commandfortress"..playerIndex, "vgr_ion1")
		        SobGroup_CreateSubSystem("vgr_commandfortress"..playerIndex, "missile_box")
		        SobGroup_CreateSubSystem("vgr_commandfortress"..playerIndex, "vgr_dt3_turret")		        
		        SobGroup_CreateSubSystem("vgr_commandfortress"..playerIndex, "hgn_commandfortress_comunicationfacility")		        
          end 
					if SobGroup_Count("vgr_battlecarrier"..playerIndex) >= 1 then 
            SobGroup_CreateSubSystem("vgr_battlecarrier"..playerIndex, "Vgr_C_Module_drive")  
		        SobGroup_CreateSubSystem("vgr_battlecarrier"..playerIndex, "Vgr_dt3_turret_light")
		        SobGroup_CreateSubSystem("vgr_battlecarrier"..playerIndex, "Vgr_dt3_turret_light1")		        
          end 
					if SobGroup_Count("vgr_sinner"..playerIndex) >= 1 then 
            SobGroup_CreateSubSystem("vgr_sinner"..playerIndex, "Vgr_C_Module_drive")  
		        SobGroup_CreateSubSystem("vgr_sinner"..playerIndex, "vgr_qje_quadflechette_stbd")
		        SobGroup_CreateSubSystem("vgr_sinner"..playerIndex, "vgr_qje_quadflechette_stbd1")		        
          end 
					if SobGroup_Count("vgr_scaver"..playerIndex) >= 1 then   
					  for w = 1,4,1 do					
							SobGroup_CreateSubSystem("vgr_scaver"..playerIndex, "Supply"..w)		
            end						
          end  
					if SobGroup_Count("vgr_artilleryship"..playerIndex) >= 1 then 
            SobGroup_CreateSubSystem("vgr_artilleryship"..playerIndex, "Vgr_cr_m")  		            
          end 								
				end				
      end
    end
    playerIndex = playerIndex + 1
  end    			
  --for z = 0,1,1 do	
		--SobGroup_TakeDamage("hgn_resourcecollector"..z, 1) 
		--SobGroup_TakeDamage("vgr_resourcecollector"..z, 1) 
		--SobGroup_TakeDamage("hgn_resourcecontroller"..z, 1) 
		--SobGroup_TakeDamage("vgr_resourcecontroller"..z, 1) 
    --SobGroup_TakeDamage("hgn_scout"..z, 1) 
    --SobGroup_TakeDamage("vgr_scout"..z, 1) 		
	--end
	--attack
  for z = 1,2,1 do
		for i = 0,npsa[z]-1,1 do          	
			if SobGroup_Empty("splitPlayer_Ships"..(z-1) .. tostring(i)) == 0 and SobGroup_IsDoingAbility("splitPlayer_Ships"..(z-1) .. tostring(i), AB_Attack) == 0 then
				if z == 1 then				  
					SobGroup_FillSubstract("temp", "Player_Ships1", "hgn_vortex1")					
					SobGroup_Attack(z-1, "splitPlayer_Ships"..(z-1) .. tostring(i), "temp")
				else				  
					SobGroup_FillSubstract("temp", "Player_Ships0", "hgn_vortex0")
					SobGroup_Attack(z-1, "splitPlayer_Ships"..(z-1) .. tostring(i), "temp")
				end		
			end	
		end
		--vortex
		if ( Player_GetRace(z-1) == Race_Hiigaran ) then
		  SobGroup_Attack(z-1, "hgn_vortex"..(z-1), "smallcapitalenemies"..(z-1))
		end
	end		
end  

function buildonstarttraining()    
  battlearena[1] = -1 
  SobGroup_Clear ("wave")
	SobGroup_Clear ("wfighter")
	SobGroup_Clear ("wcorvette")
	SobGroup_Clear ("wfrigate")
	SobGroup_Clear ("wcapital")
	SobGroup_Clear ("wbigcapital")
  local costruttore = "hgn_mothership"
	local fighter = "hgn_interceptor"	
	local corvette = "hgn_assaultcorvette"
	local frigate = "hgn_assaultfrigate"	
	local capital = "hgn_destroyer"
	local bigcapital = "hgn_battlecruiser"
	local platform = "hgn_gunturret"
	local platform1 = "hgn_pulsarturret"
	local msgfighter = 0	
	local msgcorvette = 0	
	local msgfrigate = 0
	local msgcapital = 0
	local msgbigcapital = 0
	local msgplatform = 0
	local msgplatform1 = 0
	local maxfighter = 12	
	local maxcorvette = 20	
	local maxfrigate = 30
	local maxcapital = 28
	local maxbigcapital = 20
	local maxplatform = 9
	local maxplatform1 = 9  
  local playerIndex = 0 	
	UI_SetTextLabelText("training", "p1", "Receiving...");
	UI_SetTextLabelText("training", "p1punteggio", "");
	--exit
	if Player_NumberOfAwakeShips(Universe_CurrentPlayer())<=1 then
		--Rule_Add("tomainmenu")
		return nil
	end   		
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then 					  
        if Player_HasResearch(playerIndex, "isai" ) == 0 then				   
				else                	
					--attack types 
          if Player_GetRace(playerIndex) == Race_Hiigaran then
					  costruttore = "hgn_mothership"
						platform = "hgn_gunturret"
						platform1 = "hgn_pulsarturret"	
					  if traininglevel <= 4 then							
							fighter = "hgn_interceptor"	
							corvette = "hgn_assaultcorvette"
							frigate = "hgn_assaultfrigate"	
							capital = "hgn_destroyer"
							bigcapital = "hgn_battlecruiser"
							msgfightertext = "Interceptor"	
							msgcorvettetext = "Gunship"
							msgfrigatetext = "Flak Frigate"	
							msgcapitaltext = "Destroyer"
							msgbigcapitaltext = "Battlecruiser"
						elseif traininglevel <= 8 then
						  r = random(1,2)
							if r == 1 then
							  fighter = "hgn_attackbomber"
								msgfightertext = "Bomber"
							else
							  fighter = "hgn_interceptor"
								msgfightertext = "Interceptor"
							end						  	
							r = random(1,2)
							if r == 1 then
							  corvette = "hgn_assaultcorvette"
								msgcorvettetext = "Gunship"
							else
							  corvette = "hgn_pulsarcorvette"
								msgcorvettetext = "Pulsar Gunship"
							end		
              r = random(1,2)
							if r == 1 then
							  frigate = "hgn_assaultfrigate"
								msgfrigatetext = "Flak Frigate"
							else
							  frigate = "hgn_torpedofrigate"
								msgfrigatetext = "Missile Frigate"
							end							
							capital = "hgn_destroyer"
							bigcapital = "hgn_battlecruiser"
							msgcapitaltext = "Destroyer"
							msgbigcapitaltext = "Battlecruiser"
						elseif traininglevel <= 12 then
						  r = random(1,2)
							if r == 1 then
							  fighter = "hgn_attackbomberheavy"
								msgfightertext = "Heavy Bomber"
							else
							  fighter = "hgn_hft"
								msgfightertext = "Shiry"
							end		
              r = random(1,3)
							if r == 1 then
							  corvette = "hgn_multiguncorvette"
								msgcorvettetext = "Multigun"
							elseif r == 2 then
							  corvette = "hgn_cth"
								msgcorvettetext = "Mechgun"	
							else
							  corvette = "hgn_cthion"
								msgcorvettetext = "Ion Mechgun"
							end		
							r = random(1,2)
              if r == 1 then
							  frigate = "hgn_ioncannonfrigate"
								msgfrigatetext = "Ion Frigate"	
							else
							  frigate = "hgn_tulwar"
								msgfrigatetext = "Tulwar Frigate"
							end									
							capital = "hgn_destroyer"
							bigcapital = "hgn_battlecruiser"
							msgcapitaltext = "Destroyer"
							msgbigcapitaltext = "Battlecruiser"
						elseif traininglevel <= 16 then
						  r = random(1,2)
							if r == 1 then
							  fighter = "hgn_attackbomberheavy"
								msgfightertext = "Heavy Bomber"
							else
							  fighter = "hgn_hft"
								msgfightertext = "Shiry"
							end						  	
							r = random(1,3)
							if r == 1 then
							  corvette = "hgn_multiguncorvette"
								msgcorvettetext = "Multigun"
							elseif r == 2 then
							  corvette = "hgn_cth"
								msgcorvettetext = "Mechgun"	
							else
							  corvette = "hgn_cthion"
								msgcorvettetext = "Ion Mechgun"
							end		
							r = random(1,2)
							if r == 1 then
							  frigate = "hgn_ioncannonfrigate"
								msgfrigatetext = "Ion Frigate"	
							else
							  frigate = "hgn_tulwar"
								msgfrigatetext = "Tulwar Frigate"
							end			
              r = random(1,5)
							if r == 1 then
							  capital = "hgn_destroyer"
								msgcapitaltext = "Destroyer"			
							elseif r == 2 then
							  capital = "hgn_missiledestroyer"
								msgcapitaltext = "Missile Destroyer"			
							elseif r == 3 then
							  capital = "hgn_iondestroyer"
								msgcapitaltext = "Ion Destroyer"			
              elseif r == 4 then
							  capital = "hgn_advdestroyer"
								msgcapitaltext = "Advanced Destroyer"			
              else
							  capital = "hgn_artillerydestroyer"
								msgcapitaltext = "Artillery Destroyer"								
							end			
              bigcapital = "hgn_vortex"		
              msgbigcapitaltext = "Vortex"
						else
						  r = random(1,2)
							if r == 1 then
							  fighter = "hgn_attackbomberheavy"
								msgfightertext = "Heavy Bomber"
							else
							  fighter = "hgn_hft"
								msgfightertext = "Shiry"
							end						  
							r = random(1,3)
							if r == 1 then
							  corvette = "hgn_multiguncorvette"
								msgcorvettetext = "Multigun"
							elseif r == 2 then
							  corvette = "hgn_cth"
								msgcorvettetext = "Mechgun"	
							else
							  corvette = "hgn_cthion"
								msgcorvettetext = "Ion Mechgun"
							end		
							r = random(1,2)
							if r == 1 then
							  frigate = "hgn_ioncannonfrigate"
								msgfrigatetext = "Ion Frigate"	
							else
							  frigate = "hgn_tulwar"
								msgfrigatetext = "Tulwar Frigate"
							end			
							r = random(1,2)
							if r == 1 then
							  capital = "hgn_cruisera"
								msgcapitaltext = "Cruiser (Type A)"								
              else
							  capital = "hgn_cruiserb"
								msgcapitaltext = "Cruiser (Type B)"										
							end		
              r = random(2,3)
							if r == 1 then
							  bigcapital = "hgn_battlecruiser"
								msgbigcapitaltext = "Battlecruiser"								
              elseif r == 2 then
							  bigcapital = "hgn_battleship"
								msgbigcapitaltext = "Battleship"	
              else
                bigcapital = "hgn_vortex"
								msgbigcapitaltext = "Vortex"							
							end		
            end						
					else			
					  costruttore = "vgr_mothership"						
						platform = "vgr_weaponplatform_gun"
						platform1 = "vgr_weaponplatform_missile"
					  if traininglevel <= 4 then							
							fighter = "vgr_interceptor"						
							corvette = "vgr_shamshiriictg"						
							frigate = "vgr_assaultfrigate"
							capital = "vgr_destroyer"
							bigcapital = "vgr_battlecruiser"
							msgfightertext = "Assault Craft"	
							msgcorvettetext = "Swarm Corvette"
							msgfrigatetext = "Assault Frigate"		
              msgcapitaltext = "Destroyer" 		
              msgbigcapitaltext = "Battlecruiser"							
						elseif traininglevel <= 8 then
						  r = random(1,2)
							if r == 1 then
							  fighter = "vgr_bomber"	
								msgfightertext = "Bomber"
							else
							  fighter = "vgr_interceptor"
								msgfightertext = "Interceptor"
							end			
              r = random(1,2)
							if r == 1 then
							  corvette = "vgr_shamshiriictg"	
								msgcorvettetext = "Swarm Corvette"
							else
							  corvette = "vgr_plasmacorvette"
								msgcorvettetext = "Plasma Corvette"
							end		
              r = random(1,2)
							if r == 1 then
							  frigate = "vgr_assaultfrigate"
								msgfrigatetext = "Assault Frigate"	
							else
							  frigate = "vgr_supportfrigate"
								msgfrigatetext = "Plasma Frigate"
							end
							capital = "vgr_destroyer"
							bigcapital = "vgr_battlecruiser"
							msgcapitaltext = "Destroyer"
							msgbigcapitaltext = "Battlecruiser"
						elseif traininglevel <= 12 then
						  r = random(1,2)
							if r == 1 then
							  fighter = "vgr_missilebomber"	
								msgfightertext = "Missile Bomber"
							else
							  fighter = "vgr_elitefighter"	
								msgfightertext = "Multi-Role Fighter"
							end			
              r = random(1,2)
							if r == 1 then
							  corvette = "vgr_multilancecorvette"
								msgcorvettetext = "Multilance Corvette"
							else
							  corvette = "vgr_mortarcorvette"
								msgcorvettetext = "Scatterer Corvette"	
							end		
              r = random(1,2)
							if r == 1 then
							  frigate = "vgr_advassaultfrigate"
								msgfrigatetext = "Adv Assault Frigate"	
							else
							  frigate = "vgr_artilleryfrigate"
								msgfrigatetext = "Artillery Frigate"
							end							
							capital = "vgr_destroyer"
							bigcapital = "vgr_battlecruiser"
							msgcapitaltext = "Destroyer"
							msgbigcapitaltext = "Battlecruiser"
						elseif traininglevel <= 16 then
						  r = random(1,2)
							if r == 1 then
							  fighter = "vgr_missilebomber"	
								msgfightertext = "Missile Bomber"
							else
							  fighter = "vgr_elitefighter"	
								msgfightertext = "Multi-Role Fighter"
							end			
              r = random(1,3)
							if r == 1 then
							  corvette = "vgr_striker"	
								msgcorvettetext = "Striker Corvette"
							elseif r == 2 then
							  corvette = "vgr_multilancecorvette"
								msgcorvettetext = "Multilance Corvette"
							else
							  corvette = "vgr_mortarcorvette"
								msgcorvettetext = "Scatterer Corvette"	
							end		
              r = random(1,3)
							if r == 1 then
							  frigate = "vgr_advassaultfrigate"
								msgfrigatetext = "Adv Assault Frigate"	
							elseif r == 2 then							
							  frigate = "vgr_artilleryfrigate"
								msgfrigatetext = "Artillery Frigate"
							else
                frigate = "vgr_longrangeartilleryfrigate"
                msgfrigatetext = "Heavy Cannon Frigate"								
							end									
              r = random(1,2)
							if r == 1 then
							  capital = "vgr_destroyer"	
								msgcapitaltext = "Destroyer"
							else
							  capital = "vgr_pulsedestroyer"
								msgcapitaltext = "Heavy Destroyer"
							end																
							bigcapital = "vgr_battlecruiser"							
							msgbigcapitaltext = "Battlecruiser"						
						else
						  r = random(1,2)
							if r == 1 then
							  fighter = "vgr_missilebomber"	
								msgfightertext = "Missile Bomber"
							else
							  fighter = "vgr_elitefighter"	
								msgfightertext = "Multi-Role Fighter"
							end									
							corvette = "vgr_striker"
              msgcorvettetext = "Striker Corvette"								
							r = random(1,3)
							if r == 1 then
							  frigate = "vgr_advassaultfrigate"
								msgfrigatetext = "Adv Assault Frigate"	
							elseif r == 2 then							
							  frigate = "vgr_artilleryfrigate"
								msgfrigatetext = "Artillery Frigate"
							else
                frigate = "vgr_longrangeartilleryfrigate"
                msgfrigatetext = "Heavy Cannon Frigate"								
							end									  
							r = random(1,3)
							if r == 1 then
							  capital = "vgr_cruiser"	
								msgcapitaltext = "Cruiser"
							elseif r == 2 then
							  capital = "vgr_lightcruiser"
								msgcapitaltext = "Ion Cruiser"
							else
							  capital = "vgr_artilleryship"
								msgcapitaltext = "Mortar Cruiser"	
							end					
              r = random(1,3)
							if r == 1 then
							  bigcapital = "vgr_battlecruiser"
								msgbigcapitaltext = "Battlecruiser"								
              elseif r == 2 then
							  bigcapital = "vgr_alkhalid"
								msgbigcapitaltext = "Battleship"	
							elseif r == 3 then
							  bigcapital = "vgr_missilebattlecruiser"
								msgbigcapitaltext = "Missile Battlecruiser"		
              else
                bigcapital = "vgr_dreadnaught"
								msgbigcapitaltext = "Dreadnaught"							
							end				     							
            end						
					end			
          --posizione e volume x spawn
					if traininglevel == 2 then										  					  
						local sob_position = SobGroup_GetPosition(costruttore..playerIndex)						
						Volume_AddSphere("sfighter1",{sob_position[1]-2000,sob_position[2]+5000,sob_position[3],},1200)
						Volume_AddSphere("scorvette1",{sob_position[1],sob_position[2]+5000,sob_position[3]-2000,},1200)
						Volume_AddSphere("sfrigate1",{sob_position[1]+2000,sob_position[2]+5000,sob_position[3],},1200)
						Volume_AddSphere("scapital1",{sob_position[1],sob_position[2]+5000,sob_position[3]+2000,},1200)
						Volume_AddSphere("sbigcapital1",{sob_position[1],sob_position[2]+7000,sob_position[3]+4000,},1200)
					  Volume_AddSphere("sfighter2",{sob_position[1]-2000,sob_position[2]-5000,sob_position[3],},1200)
						Volume_AddSphere("scorvette2",{sob_position[1],sob_position[2]-5000,sob_position[3]-2000,},1200)
						Volume_AddSphere("sfrigate2",{sob_position[1]+2000,sob_position[2]-5000,sob_position[3],},1200)
						Volume_AddSphere("scapital2",{sob_position[1],sob_position[2]-5000,sob_position[3]+2000,},1200)
						Volume_AddSphere("sbigcapital2",{sob_position[1],sob_position[2]-7000,sob_position[3]+4000,},1200)					  
					end		      					
          --costruzione					
					if SobGroup_Count(costruttore..playerIndex) >= 1 then
            --evita di fare i sotto gruppi con troppe navi vicine					
            if Rule_Exists("sobgroups") == 1 then
							Rule_Remove("sobgroups")						
 					  end
						updown = random (1,2)		
            local bloccobigcapital = 0			
            local randomtraininglevel = traininglevel + random (1,2)            						
						for z = 1,randomtraininglevel,1 do
							--fighter			
              if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, fighter) < maxfighter then							
								SobGroup_SpawnNewShipInSobGroup(playerIndex, fighter, "fighter", "wfighter", "sfighter"..updown)
								msgfighter = msgfighter + 1
								SobGroup_SobGroupAdd ("wave", "wfighter")															
							end							
							--corvette			              
							if traininglevel >= 4 then
							  if z > 2 then
									if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, corvette) < maxcorvette then
										SobGroup_SpawnNewShipInSobGroup(playerIndex, corvette, "corvette", "wcorvette", "scorvette"..updown)
										msgcorvette = msgcorvette + 1
										SobGroup_SobGroupAdd ("wave", "wcorvette")										
									end
								end
							end																
							--frigate			
              if traininglevel >= 8 then		
                if z > 6 then							
									if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, frigate) < maxfrigate then									
										SobGroup_SpawnNewShipInSobGroup(playerIndex, frigate, "frigate", "wfrigate", "sfrigate"..updown)
										msgfrigate = msgfrigate + 1
										SobGroup_SobGroupAdd ("wave", "wfrigate")										
									end		
								end	
							end	
							--capital			
              if traininglevel >= 12 then
                if z > 10 then							
									if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, capital) < maxcapital then
										SobGroup_SpawnNewShipInSobGroup(playerIndex, capital, "capital", "wcapital", "scapital"..updown)
										msgcapital = msgcapital + 1
										SobGroup_SobGroupAdd ("wave", "wcapital")										
									end
								end
							end      
              --bigcapital			
              if traininglevel >= 20 then							  								
                if z > 20 and z <= randomtraininglevel-bloccobigcapital then			
                  bloccobigcapital = bloccobigcapital+1								
									if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, bigcapital) < maxbigcapital then
										SobGroup_SpawnNewShipInSobGroup(playerIndex, bigcapital, "bigcapital", "wbigcapital", "sbigcapital"..updown)
										msgbigcapital = msgbigcapital + 1
										SobGroup_SobGroupAdd ("wave", "wbigcapital")										
									end
								end
							end            							
              --platform
              if traininglevel >= 4 then
								SobGroup_ParadeSobGroup(platform..playerIndex, costruttore..playerIndex, 0) 
								SobGroup_ParadeSobGroup(platform1..playerIndex, costruttore..playerIndex, 0) 
							  if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, platform) < maxplatform then								
									SobGroup_CreateShip("Player_Ships"..playerIndex, platform)
								end
								if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, platform1) < maxplatform1 then								
									SobGroup_CreateShip("Player_Ships"..playerIndex, platform1)
								end	
							end	
						end	
            r = random(1,3)
						if r == 1 then
							SobGroup_FormStrikeGroup("wave", "Capital Phalanx")								
						elseif r == 2 then
							SobGroup_FormStrikeGroup("wave", "Frigate Line")								
						else
							SobGroup_FormStrikeGroup("wave", "Fighter Screen")								
						end			            					
						--attack, x evitare impallo fighter immobili x i primi 4 turni si toglie la rs
						if traininglevel > 10 then			
							SobGroup_Attack(playerIndex, "wave", "Player_Ships"..Universe_CurrentPlayer())
						else								
							SobGroup_Clear("temp")
							SobGroup_FillSubstract("temp", "Player_Ships"..Universe_CurrentPlayer(), "hgn_researchstation"..Universe_CurrentPlayer())					
							SobGroup_Attack(playerIndex, "wave", "temp")									
						end	   
          else
            --Rule_Add("tomainmenu")
						return nil					
					end 	
          --msg		     
					--Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/worldplanewhoosh")
					r = random(1,2)
					if r == 1 then
						Sound_SpeechPlay("data:sound\\speech\\missions\\m_01\\40590") --Multiple enemy reinforcements detected
						Subtitle_Add(Actor_FleetIntel,"Multiple enemy reinforcements detected",25)
					else
						Sound_SpeechPlay("data:sound\\speech\\missions\\m_05\\42152") --Prepare for immediate attack
						Subtitle_Add(Actor_FleetIntel,"Prepare for immediate attack",25)
					end	
					local level = traininglevel/2
					if traininglevel >= 20 then
					  Subtitle_Message("LEVEL " .. level .. ", attack: " .. msgfighter .. " " .. msgfightertext .. ", " .. msgcorvette .. " " .. msgcorvettetext .. ", " .. msgfrigate .. " " .. msgfrigatetext .. ", " .. msgcapital .. " " .. msgcapitaltext .. ", " .. msgbigcapital .. " " .. msgbigcapitaltext, 25)
					elseif traininglevel >= 12 then
					  Subtitle_Message("LEVEL " .. level .. ", attack: " .. msgfighter .. " " .. msgfightertext .. ", " .. msgcorvette .. " " .. msgcorvettetext .. ", " .. msgfrigate .. " " .. msgfrigatetext .. ", " .. msgcapital .. " " .. msgcapitaltext, 25)					
          elseif traininglevel >= 8 then			
            Subtitle_Message("LEVEL " .. level .. ", attack: " .. msgfighter .. " " .. msgfightertext .. ", " .. msgcorvette .. " " .. msgcorvettetext .. ", " .. msgfrigate .. " " .. msgfrigatetext, 25)					
          elseif traininglevel >= 4 then
						Subtitle_Message("LEVEL " .. level .. ", attack: " .. msgfighter .. " " .. msgfightertext .. ", " .. msgcorvette .. " " .. msgcorvettetext, 25)					
          else
					  Subtitle_Message("LEVEL " .. level .. ", attack: " .. msgfighter .. " " .. msgfightertext, 25)					
          end
					--research     
          if traininglevel == 24 then	--lvl 12					  
            if Player_GetRace(playerIndex) == Race_Hiigaran then							
						else	
							Player_GrantResearchOption(playerIndex, "FreackerBattleship")										
						end	     				
          elseif traininglevel == 22 then	--lvl 11					  
            if Player_GetRace(playerIndex) == Race_Hiigaran then							
						else	
							Player_GrantResearchOption(playerIndex, "ImprovedTorpedoBattlecruiser")			
							Player_GrantResearchOption(playerIndex, "MineBattleship")		
							Player_GrantResearchOption(playerIndex, "ImprovedTorpedoBattleship")	
						end	  
					
					elseif traininglevel == 20 then	--lvl 10 
            if Player_GetRace(playerIndex) == Race_Hiigaran then
							Player_GrantResearchOption(playerIndex, "ImprovedTorpedoCruiserbIcon")							
							Player_GrantResearchOption(playerIndex, "ImprovedTorpedoCruiseraIcon")
							Player_GrantResearchOption(playerIndex, "ImprovedShieldCruiserIcon")
						else	
							Player_GrantResearchOption(playerIndex, "ImprovedTorpedoCruiser")			
							Player_GrantResearchOption(playerIndex, "ImprovedTorpedoCruiser1")		
						end	
					
					elseif traininglevel == 18 then --lvl 9
					  Player_GrantResearchOption(playerIndex, "CapitalSpeedUpgrade3")
            Player_GrantResearchOption(playerIndex, "CapitalDriveUpgrade3")
						Player_GrantResearchOption(playerIndex, "CapitalHealthUpgrade3")
						Player_GrantResearchOption(playerIndex, "CapitalWeaponDamageUpgrade3")			
					  Player_GrantResearchOption(playerIndex, "ArmedCapitalSpeedUpgrade3")
            Player_GrantResearchOption(playerIndex, "ArmedCapitalDriveUpgrade3")
						Player_GrantResearchOption(playerIndex, "ArmedCapitalHealthUpgrade3")
						Player_GrantResearchOption(playerIndex, "ArmedCapitalWeaponDamageUpgrade3")			
            Player_GrantResearchOption(playerIndex, "SuperArmedCapitalSpeedUpgrade3")
            Player_GrantResearchOption(playerIndex, "SuperArmedCapitalDriveUpgrade3")
						Player_GrantResearchOption(playerIndex, "SuperArmedCapitalHealthUpgrade3")
						Player_GrantResearchOption(playerIndex, "SuperArmedCapitalWeaponDamageUpgrade3")									
						
					elseif traininglevel == 16 then --lvl 8
					  Player_GrantResearchOption(playerIndex, "CapitalSpeedUpgrade2")
            Player_GrantResearchOption(playerIndex, "CapitalDriveUpgrade2")
						Player_GrantResearchOption(playerIndex, "CapitalHealthUpgrade2")
						Player_GrantResearchOption(playerIndex, "CapitalWeaponDamageUpgrade2")     
					  Player_GrantResearchOption(playerIndex, "ArmedCapitalSpeedUpgrade2")
            Player_GrantResearchOption(playerIndex, "ArmedCapitalDriveUpgrade2")
						Player_GrantResearchOption(playerIndex, "ArmedCapitalHealthUpgrade2")
						Player_GrantResearchOption(playerIndex, "ArmedCapitalWeaponDamageUpgrade2")     
						Player_GrantResearchOption(playerIndex, "SuperArmedCapitalSpeedUpgrade2")
            Player_GrantResearchOption(playerIndex, "SuperArmedCapitalDriveUpgrade2")
						Player_GrantResearchOption(playerIndex, "SuperArmedCapitalHealthUpgrade2")
						Player_GrantResearchOption(playerIndex, "SuperArmedCapitalWeaponDamageUpgrade2")     
            if Player_GetRace(playerIndex) == Race_Hiigaran then
						else
							Player_GrantResearchOption(playerIndex, "ImprovedTorpedoPulseDestroyer")
							Player_GrantResearchOption(playerIndex, "MinePulseDestroyer")		
						end	       						
						
					elseif traininglevel == 14 then --lvl 7					  
            Player_GrantResearchOption(playerIndex, "FrigateSpeedUpgrade3")
						Player_GrantResearchOption(playerIndex, "FrigateHealthUpgrade3")
						Player_GrantResearchOption(playerIndex, "FrigateWeaponDamageUpgrade3")
            Player_GrantResearchOption(playerIndex, "PlatformHealthUpgrade3")			
            Player_GrantResearchOption(playerIndex, "PlatformWeaponDamageUpgrade3")		
            Player_GrantResearchOption(playerIndex, "CapitalSpeedUpgrade1")
            Player_GrantResearchOption(playerIndex, "CapitalDriveUpgrade1")
						Player_GrantResearchOption(playerIndex, "CapitalHealthUpgrade1")
						Player_GrantResearchOption(playerIndex, "CapitalWeaponDamageUpgrade1") 						
            Player_GrantResearchOption(playerIndex, "ArmedCapitalSpeedUpgrade1")
            Player_GrantResearchOption(playerIndex, "ArmedCapitalDriveUpgrade1")
						Player_GrantResearchOption(playerIndex, "ArmedCapitalHealthUpgrade1")
						Player_GrantResearchOption(playerIndex, "ArmedCapitalWeaponDamageUpgrade1") 
						Player_GrantResearchOption(playerIndex, "SuperArmedCapitalSpeedUpgrade1")
            Player_GrantResearchOption(playerIndex, "SuperArmedCapitalDriveUpgrade1")
						Player_GrantResearchOption(playerIndex, "SuperArmedCapitalHealthUpgrade1")
						Player_GrantResearchOption(playerIndex, "SuperArmedCapitalWeaponDamageUpgrade1") 
						if Player_GetRace(playerIndex) == Race_Hiigaran then
						  Player_GrantResearchOption(playerIndex, "ImprovedTorpedoDestroyerIcon")
						else
						  Player_GrantResearchOption(playerIndex, "ImprovedTorpedoDestroyer")
							Player_GrantResearchOption(playerIndex, "MineDestroyer")
						end				
						
					elseif traininglevel == 12 then --lvl 6									              
            Player_GrantResearchOption(playerIndex, "FrigateSpeedUpgrade2")
						Player_GrantResearchOption(playerIndex, "FrigateHealthUpgrade2")
						Player_GrantResearchOption(playerIndex, "FrigateWeaponDamageUpgrade2")
						Player_GrantResearchOption(playerIndex, "PlatformHealthUpgrade2")			
            Player_GrantResearchOption(playerIndex, "PlatformWeaponDamageUpgrade2")		            			
						
          elseif traininglevel == 10 then --lvl 5				
            --Player_GrantResearchOption(playerIndex, "CorvetteSpeedUpgrade3")
						Player_GrantResearchOption(playerIndex, "CorvetteHealthUpgrade3")
						Player_GrantResearchOption(playerIndex, "CorvetteWeaponDamageUpgrade3")	 					
            Player_GrantResearchOption(playerIndex, "FrigateSpeedUpgrade1")
						Player_GrantResearchOption(playerIndex, "FrigateHealthUpgrade1")
						Player_GrantResearchOption(playerIndex, "FrigateWeaponDamageUpgrade1")		 
            Player_GrantResearchOption(playerIndex, "PlatformHealthUpgrade1")			
            Player_GrantResearchOption(playerIndex, "PlatformWeaponDamageUpgrade1")			
						if Player_GetRace(playerIndex) == Race_Hiigaran then
						else
							Player_GrantResearchOption(playerIndex, "CoordinatedWeaponLongRangeArtilleryFrigate") 						
						end				            							
					
          elseif traininglevel == 8 then --lvl 4
					  --Player_GrantResearchOption(playerIndex, "FighterSpeedUpgrade3")
            Player_GrantResearchOption(playerIndex, "FighterHealthUpgrade3")			
            Player_GrantResearchOption(playerIndex, "FighterWeaponDamageUpgrade3")
						Player_GrantResearchOption(playerIndex, "CorvetteSpeedUpgrade2")
						Player_GrantResearchOption(playerIndex, "CorvetteHealthUpgrade2")
						Player_GrantResearchOption(playerIndex, "CorvetteWeaponDamageUpgrade2")
					
          elseif traininglevel == 6 then --lvl 3
					  --Player_GrantResearchOption(playerIndex, "FighterSpeedUpgrade2")
					  Player_GrantResearchOption(playerIndex, "FighterHealthUpgrade2")
						Player_GrantResearchOption(playerIndex, "FighterWeaponDamageUpgrade2")
						Player_GrantResearchOption(playerIndex, "CorvetteSpeedUpgrade1")
						Player_GrantResearchOption(playerIndex, "CorvetteHealthUpgrade1")
						Player_GrantResearchOption(playerIndex, "CorvetteWeaponDamageUpgrade1")	
            if Player_GetRace(playerIndex) == Race_Hiigaran then
						  Player_GrantResearchOption(playerIndex, "AssaultGunshipLinkWeaponIcon")
						else
						end									
						
          elseif traininglevel == 4 then --lvl 2
					  Player_GrantResearchOption(playerIndex, "FighterSpeedUpgrade1")
					  Player_GrantResearchOption(playerIndex, "FighterHealthUpgrade1")		
            Player_GrantResearchOption(playerIndex, "FighterWeaponDamageUpgrade1")
          end          
				end
			end	
    end
    playerIndex = playerIndex + 1
  end    		
	traininglevel = traininglevel + 2  
	endlevel = 0
	Rule_AddInterval("buildonstarttraining1", 25)
	Rule_AddInterval("buildonstarttraining2", 60)
	Rule_Remove("buildonstarttraining") 	
end  

function buildonstarttraining1()   	
  local ai = 2
  --rilancia sobgroups
	if Rule_Exists("sobgroups") == 0 then	
		Rule_AddInterval("sobgroups", runselected*1.8) 
	end	
	--rinforzo attacco
	for z = 1,2,1 do
	  if Player_HasResearch(z-1, "isai" ) == 0 then			  
		else
		  ai = (z-1)
		  for i = 0,npsa[z]-1,1 do			
				if SobGroup_Empty("splitPlayer_Ships"..(z-1) .. tostring(i)) == 0 then
					SobGroup_SetSwitchOwnerFlag("splitPlayer_Ships"..(z-1) .. tostring(i), 1)
					if SobGroup_IsDoingAbility("splitPlayer_Ships"..(z-1) .. tostring(i), AB_Attack) == 0 then
						SobGroup_Attack((z-1), "splitPlayer_Ships"..(z-1) .. tostring(i), "Player_Ships"..Universe_CurrentPlayer())
					end
					--if attacked leave strike group 
					if SobGroup_UnderAttack("wave") == 1 then
						SobGroup_FormStrikeGroup("splitPlayer_Ships"..(z-1) .. tostring(i), "Wall")	
					end					
				end	
			end      		
		end
	end	
	--exit if no AI
	if ai == 2 then
	  Rule_Add("tomainmenu")
	end
	--fighter/corvette strike groups
	if SobGroup_UnderAttack("wave") == 1 then	
	  r = random(1,2)
		if r == 1 then
			SobGroup_FormStrikeGroup("wfighter", "Wall")						
		else							
		end			            
	  r = random(1,2)
		if r == 1 then
			SobGroup_FormStrikeGroup("wcorvette", "Wall")						
		else							
		end			          		
	end			
	--bonus count
	endlevel = endlevel+1
	local win = (((traininglevel/2)-1)*1000)-(endlevel*50)+50	
	if win < 0 then
	  win = 0
	end	
	local level = (traininglevel/2)-1
	UI_SetTextLabelText("training", "p1", "Level "..level);
	UI_SetTextLabelText("training", "p1punteggio", "Bonus "..win.." RUs");	
	--se c'è wave esce
	if SobGroup_Count ("wave") > 0 then
		return nil	
	end 
	--run again
	local runagain = 140
	if Player_HasResearch(ai, "iseasy") == 1 then
		runagain = 160
	elseif Player_HasResearch(ai, "ishard") == 1 then
		runagain = 120
	elseif Player_HasResearch(ai, "isexpert") == 1 then
		runagain = 100
	end	
	Rule_AddInterval("buildonstarttraining", runagain + traininglevel*3)	
	--Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/worldplanewhoosh")	
	--end level
	r = random(1,2)
	if r == 1 then
		Sound_SpeechPlay("data:sound\\speech\\missions\\m_05\\42080") --Enemy defeated
		Subtitle_Add(Actor_FleetIntel,"Enemy defeated",25)
	else
		Sound_SpeechPlay("data:sound\\speech\\missions\\m_05\\42081") --There are no survivors
		Subtitle_Add(Actor_FleetIntel,"There are no survivors",25)
	end		
	UI_SetScreenEnabled("trainingmsg", 1)
	UI_SetScreenVisible("trainingmsg", 1)	
	UI_SetTextLabelText("trainingmsg", "lblSubTitle", "Level "..level.." Completed");				
	UI_SetTextLabelText("trainingmsg", "lblDescription1", "Bonus: "..win.." RUs");	
	UI_SetTextLabelText("trainingmsg", "lblDescription2", "");
	UI_SetTextLabelText("trainingmsg", "lblDescription3", "");		
	UI_SetTextLabelText("training", "p1", "Receiving...");
	UI_SetTextLabelText("training", "p1punteggio", "");
  Player_SetRU(Universe_CurrentPlayer(), Player_GetRU(Universe_CurrentPlayer()) + win)	
  Rule_Remove("buildonstarttraining1") 	
end  

function buildonstarttraining2()  
  local aiss = 0 
  for z = 1,2,1 do
	  if Player_HasResearch(z-1, "isai" ) == 0 then					  
		else
		  SobGroup_TakeDamage("hgn_resourcecollector"..z-1, 1) 
			SobGroup_TakeDamage("vgr_resourcecollector"..z-1, 1) 
			SobGroup_TakeDamage("hgn_resourcecontroller"..z-1, 1) 
			SobGroup_TakeDamage("vgr_resourcecontroller"..z-1, 1) 
			SobGroup_TakeDamage("hgn_scout"..z-1, 1) 
			SobGroup_TakeDamage("vgr_scout"..z-1, 1) 		
		  aiss = (z-1)
		  if ( Player_GetRace(aiss) == Race_Hiigaran ) then          
				--costruisce sottosistemi
				if SobGroup_Count("hgn_vortex"..aiss) >= 1 then  	
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "Hgn_C_Module_drive")
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_vhcannonx3")
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_pulsers1bc")
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_pulsers2bc")  
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_pulsers3bc")
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_pulsers4bc")
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_v_torpedolauncher")
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_v_torpedolauncher1")  
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_v_torpedolauncher2") 
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_v_torpedolauncher3")
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_miner")  
					SobGroup_CreateSubSystem("hgn_vortex"..aiss, "hgn_miner1")  										
				end    		
				if SobGroup_Count("hgn_battleship"..aiss) >= 1 then  	
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "Hgn_C_Module_drive")
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "hgn_pulsers1bc")
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "hgn_pulsers2bc")
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "hgn_pulsers3bc")  
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "HGN_SCC_6xAC_Turret_s1bc")
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "HGN_SCC_6xAC_Turret_s2bc")
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "HGN_SCC_6xAC_Turret_s3bc")
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "hgn_heavyion_sentinel1bc")  
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "hgn_heavyion_sentinel2bc") 
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "Hgn_HeavyGuidedPlasmaBombTubes2BS")
					SobGroup_CreateSubSystem("hgn_battleship"..aiss, "Hgn_HeavyGuidedPlasmaBombTubesBSRear")         						
				end 
			else	
			  if SobGroup_Count("vgr_battlecruiser"..aiss) >= 1 then 
					SobGroup_CreateSubSystem("vgr_battlecruiser"..aiss, "Vgr_C_Module_drive")  
					SobGroup_CreateSubSystem("vgr_battlecruiser"..aiss, "Vgr_HeavyCannonTurrets")
					SobGroup_CreateSubSystem("vgr_battlecruiser"..aiss, "missile_boxbc")
					SobGroup_CreateSubSystem("vgr_battlecruiser"..aiss, "missile_box1bc")
					SobGroup_CreateSubSystem("vgr_battlecruiser"..aiss, "Vgr_dt3_turret_light")
				end 
				if SobGroup_Count("vgr_missilebattlecruiser"..aiss) >= 1 then 
					SobGroup_CreateSubSystem("vgr_missilebattlecruiser"..aiss, "Vgr_C_Module_drive")
					SobGroup_CreateSubSystem("vgr_missilebattlecruiser"..aiss, "vgr_mbc_c")
          r = random (1,4)	
					if r == 1 then
					  SobGroup_CreateSubSystem("vgr_missilebattlecruiser"..aiss, "HeavyFusionMissileLauncherMBC")
          elseif r == 2 then
					  SobGroup_CreateSubSystem("vgr_missilebattlecruiser"..aiss, "vgr_mbc_f")
          elseif r == 3 then
					  SobGroup_CreateSubSystem("vgr_missilebattlecruiser"..aiss, "vgr_mbc_f1")
          else
					  SobGroup_CreateSubSystem("vgr_missilebattlecruiser"..aiss, "vgr_mbc_f2")
          end									
				end 
				if SobGroup_Count("vgr_alkhalid"..aiss) >= 1 then 
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "Vgr_C_Module_drive")  
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_lithiumion_port")
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_lithiumion_stbd")
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_lithiumion_stbd1")
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_lithiumion_port1")		        
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_dualflechette_port")
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_dualflechette_stbd")	
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_dualflechette_stbd1")		
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_dualflechette_port1")	
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_quadflechette_stbd")	
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_quadflechette_stbd1")		
					SobGroup_CreateSubSystem("vgr_alkhalid"..aiss, "vgr_qje_quadflechette_stbd2")		
				end 
				if SobGroup_Count("vgr_mothership"..aiss) >= 1 then 
					SobGroup_CreateSubSystem("vgr_mothership"..aiss, "vgr_ms_armor")  	
          SobGroup_CreateSubSystem("vgr_mothership"..aiss, "vgr_qje_quadflechette_stbdF")  	          				
				end 	
				if SobGroup_Count("vgr_artilleryship"..aiss) >= 1 then 
					SobGroup_CreateSubSystem("vgr_artilleryship"..aiss, "Vgr_cr_m")  		            
				end 		 					
			end					
		end			
	end	
  Rule_Remove("buildonstarttraining2") 		
end	

function buildonresstart7000()   
  local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
        if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then   
          if SobGroup_Count("hgn_mothership"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "supplyms")	            			
          end 
        else
          Player_GrantResearchOption(playerIndex , "resource1")                
        end
      end
    end
    playerIndex = playerIndex + 1
  end  
  Rule_Remove("buildonresstart7000")   	    
end 

function buildonresstart11000()   
  local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then   
        if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then   
          if SobGroup_Count("hgn_mothership"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "supplyms")		            
          end 
          if SobGroup_Count("hgn_mothership"..playerIndex) >= 1 then             			        	      			          
		        SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "supplyms1")		            
          end 
        else
          Player_GrantResearchOption(playerIndex , "resource1")                
        end
      end
    end
    playerIndex = playerIndex + 1
  end  
  Rule_Remove("buildonresstart11000")     
end                   

---Auto Repair e Docking------------------------------------------------

function autorepair()
	--fighter
  for z = 1,6,1 do
	  for i = 0,nfi[z]-1,1 do  	 		  
	    if SobGroup_Empty("splitfighters"..(z-1) .. tostring(i)) == 0	then 		    
				--docking repair				
				if SobGroup_IsDocked("splitfighters"..(z-1) .. tostring(i)) == 1 then
				  if Player_HasResearch(SobGroup_OwnedBy("splitfighters"..(z-1) .. tostring(i)), "CapitalDockingUpgrade3") == 1 then
				    local health = SobGroup_HealthPercentage("splitfighters"..(z-1) .. tostring(i))+0.5
				    if health < 1 then
				      SobGroup_SetHealth("splitfighters"..(z-1) .. tostring(i), health)
				    else  
				      SobGroup_SetHealth("splitfighters"..(z-1) .. tostring(i), 1)
				    end  
				  elseif Player_HasResearch(SobGroup_OwnedBy("splitfighters"..(z-1) .. tostring(i)), "CapitalDockingUpgrade2") == 1 then  
				    local health = SobGroup_HealthPercentage("splitfighters"..(z-1) .. tostring(i))+0.3
				    if health < 1 then
				      SobGroup_SetHealth("splitfighters"..(z-1) .. tostring(i), health)
				    else  
				      SobGroup_SetHealth("splitfighters"..(z-1) .. tostring(i), 1)
				    end  
				  elseif Player_HasResearch(SobGroup_OwnedBy("splitfighters"..(z-1) .. tostring(i)), "CapitalDockingUpgrade1") == 1 then 
				    local health = SobGroup_HealthPercentage("splitfighters"..(z-1) .. tostring(i))+0.15
				    if health < 1 then
				      SobGroup_SetHealth("splitfighters"..(z-1) .. tostring(i), health)
				    else  
				      SobGroup_SetHealth("splitfighters"..(z-1) .. tostring(i), 1)
				    end   
				  else
				  end
				end
			end		 
		end	            
	end
	--corvette
  for z = 1,6,1 do
	  for i = 0,nco[z]-1,1 do  	 		  
	    if SobGroup_Empty("splitcorvettes"..(z-1) .. tostring(i)) == 0	then          		    
				--docking repair				
				if SobGroup_IsDocked("splitcorvettes"..(z-1) .. tostring(i)) == 1 then
				  if Player_HasResearch(SobGroup_OwnedBy("splitcorvettes"..(z-1) .. tostring(i)), "CapitalDockingUpgrade3") == 1 then
				    local health = SobGroup_HealthPercentage("splitcorvettes"..(z-1) .. tostring(i))+0.5
				    if health < 1 then
				      SobGroup_SetHealth("splitcorvettes"..(z-1) .. tostring(i), health)
				    else  
				      SobGroup_SetHealth("splitcorvettes"..(z-1) .. tostring(i), 1)
				    end  
				  elseif Player_HasResearch(SobGroup_OwnedBy("splitcorvettes"..(z-1) .. tostring(i)), "CapitalDockingUpgrade2") == 1 then  
				    local health = SobGroup_HealthPercentage("splitcorvettes"..(z-1) .. tostring(i))+0.3
				    if health < 1 then
				      SobGroup_SetHealth("splitcorvettes"..(z-1) .. tostring(i), health)
				    else  
				      SobGroup_SetHealth("splitcorvettes"..(z-1) .. tostring(i), 1)
				    end  
				  elseif Player_HasResearch(SobGroup_OwnedBy("splitcorvettes"..(z-1) .. tostring(i)), "CapitalDockingUpgrade1") == 1 then 
				    local health = SobGroup_HealthPercentage("splitcorvettes"..(z-1) .. tostring(i))+0.15
				    if health < 1 then
				      SobGroup_SetHealth("splitcorvettes"..(z-1) .. tostring(i), health)
				    else  
				      SobGroup_SetHealth("splitcorvettes"..(z-1) .. tostring(i), 1)
				    end   
				  else
				  end
				end  
							
			end		             
		end 
	end	
	--frigates
  for i = 0,nf-1,1 do  	 		  
    if SobGroup_Empty("splitfrigates"..i) == 0	then           
			--docking repair				
			if SobGroup_IsDocked("splitfrigates"..i) == 1 then
			  if Player_HasResearch(SobGroup_OwnedBy("splitfrigates"..i), "CapitalDockingUpgrade3") == 1 then
			    local health = SobGroup_HealthPercentage("splitfrigates"..i)+0.3
			    if health < 1 then
			      SobGroup_SetHealth("splitfrigates"..i, health)
			    else  
			      SobGroup_SetHealth("splitfrigates"..i, 1)
			    end  
			  elseif Player_HasResearch(SobGroup_OwnedBy("splitfrigates"..i), "CapitalDockingUpgrade2") == 1 then  
			    local health = SobGroup_HealthPercentage("splitfrigates"..i)+0.15
			    if health < 1 then
			      SobGroup_SetHealth("splitfrigates"..i, health)
			    else  
			      SobGroup_SetHealth("splitfrigates"..i, 1)
			    end  
			  elseif Player_HasResearch(SobGroup_OwnedBy("splitfrigates"..i), "CapitalDockingUpgrade1") == 1 then 
			    local health = SobGroup_HealthPercentage("splitfrigates"..i)+0.1
			    if health < 1 then
			      SobGroup_SetHealth("splitfrigates"..i, health)
			    else  
			      SobGroup_SetHealth("splitfrigates"..i, 1)
			    end   
			  else
			  end
			end      
		end		             
	end
	--destroyers
  for i = 0,nd-1,1 do  	 		  
    if SobGroup_Empty("splitdestroyers"..i) == 0	then           
			--docking repair				
			if SobGroup_IsDocked("splitdestroyers"..i) == 1 then
			  if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "CapitalDockingUpgrade3") == 1 then
			    local health = SobGroup_HealthPercentage("splitdestroyers"..i)+0.15
			    if health < 1 then
			      SobGroup_SetHealth("splitdestroyers"..i, health)
			    else  
			      SobGroup_SetHealth("splitdestroyers"..i, 1)
			    end  
			  elseif Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "CapitalDockingUpgrade2") == 1 then  
			    local health = SobGroup_HealthPercentage("splitdestroyers"..i)+0.1
			    if health < 1 then
			      SobGroup_SetHealth("splitdestroyers"..i, health)
			    else  
			      SobGroup_SetHealth("splitdestroyers"..i, 1)
			    end  
			  elseif Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "CapitalDockingUpgrade1") == 1 then 
			    local health = SobGroup_HealthPercentage("splitdestroyers"..i)+0.05
			    if health < 1 then
			      SobGroup_SetHealth("splitdestroyers"..i, health)
			    else  
			      SobGroup_SetHealth("splitdestroyers"..i, 1)
			    end   
			  else
			  end
			end      
		end		             
	end	
end

---Disable------------------------------------------------------------

function disableship(sobgroup)
  for i = 1,17,1 do
    SobGroup_AbilityActivate(sobgroup, abilityList[i], 0)	   
  end
end

function SobGroup_Enable(Group, value)
  for i = 1,28,1 do
    SobGroup_AbilityActivate(Group, abilityList[i], value)
  end
end

---Misc----------------------------------------------------------------

function SobGroup_CreateSubSystemCheck(ship,hp,sub)
  if SobGroup_GetHardPointHealth(ship,hp) == 0 then
	  SobGroup_CreateSubSystem(ship,sub)
	end
end

---Battle Arena-----------------------------------------------------------

function battlearenagm()   
  --no run is a player dies
	for i = 0,1,1 do
		if Player_NumberOfAwakeShips(Universe_CurrentPlayer())<=1 then
			--Rule_Add("tomainmenu")
			return nil
		end   
		--exit if ai
		if Player_HasResearch(i, "isai" ) == 1 then
		  Rule_Add("tomainmenu")
		end
	end			
	--crea presenza del giocatore, usato da più fasi 
  local presenza0 = 0
  local presenza1 = 0  
  if battlearena[1] >=  200 then
	  for i = 0,npsa[1]-1,1 do
		  if SobGroup_Empty("splitPlayer_Ships0" .. tostring(i)) == 0 then
				if SobGroup_AreAnyOfTheseTypes("splitPlayer_Ships0" .. tostring(i), "splitter, supporter, hgn_resourcecollector, hgn_salvagecollector, vgr_resourcecollector") == 0 then				  
					if SobGroup_FillSobGroupInVolume("temp", "splitPlayer_Ships0" .. tostring(i), "battlearena") == 1 then
				    presenza0 = presenza0 + 1
				  end				  
				end 
		  end  
		end 		
		for i = 0,npsa[2]-1,1 do
		  if SobGroup_Empty("splitPlayer_Ships1" .. tostring(i)) == 0 then
				if SobGroup_AreAnyOfTheseTypes("splitPlayer_Ships1" .. tostring(i), "splitter, supporter, hgn_resourcecollector, hgn_salvagecollector, vgr_resourcecollector") == 0 then
				  if SobGroup_FillSobGroupInVolume("temp", "splitPlayer_Ships1" .. tostring(i), "battlearena") == 1 then
				    presenza1 = presenza1 + 1
				  end				  
				end 
		  end  
		end  	 
	end
	--ricomincia daccapo  
  if battlearena[1] >= 321 then    
    battlearena[1] = 1
	--tempo per lasciare l'arena  
  elseif battlearena[1] >= 261 then   
    --FX_StartEvent("ba", "ba")    
    SobGroup_SetHardPointHealth("supporter0", "ba", 1)
    SobGroup_SetHardPointHealth("supporter1", "ba", 1) 
    Subtitle_Add(Actor_FleetIntel,"Leave the Battle Arena",1.5)
    UI_SetTextLabelText("battlearena", "timeto", ""..(321-battlearena[1]).." seconds to leave the battle arena");
    UI_SetTextLabelText("battlearena", "timeto1", ""); 	
    UI_SetTextLabelText("battlearena", "p1punteggio1", ""..presenza0);
    UI_SetTextLabelText("battlearena", "p2punteggio1", ""..presenza1);	 	    		
    battlearena[1] = battlearena[1] + 1     
    Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena")
    SobGroup_Clear("temp")
    if presenza0 == 0 and presenza1 == 0 and battlearena[1] < 318 then
      battlearena[1] = 318
    end
	--battaglia  
  elseif battlearena[1] >= 260 then    
    --FX_StartEvent("ba", "ba")     
    SobGroup_SetHardPointHealth("supporter0", "ba", 0)
    SobGroup_SetHardPointHealth("supporter1", "ba", 0)    
    UI_SetTextLabelText("battlearena", "timeto", "Battle started, prize: "..battlearena[2].." RUs, "..(battlearena[2]/500).." Honor");   
    UI_SetTextLabelText("battlearena", "timeto1", "RU, Build: OFF - Time: "..battlearena[5]); 
    UI_SetTextLabelText("battlearena", "p1punteggio1", ""..presenza0);
    UI_SetTextLabelText("battlearena", "p2punteggio1", ""..presenza1);	 	    		
    if presenza0 >= 1 and presenza1 == 0 then    
      Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/worldplanewhoosh")
      UI_SetScreenEnabled("battlearenamsg", 1)		
			UI_SetScreenVisible("battlearenamsg", 1)	
			UI_SetTextLabelText("battlearenamsg", "lblSubTitle", "Battle Number "..(battlearena[2]/2000));				
			UI_SetTextLabelText("battlearenamsg", "lblDescription1", "Battle won by Player 1");	
			UI_SetTextLabelText("battlearenamsg", "lblDescription2", "Player 1: "..battlearena[2].." RUs, "..(battlearena[2]/500).." Honor");
			UI_SetTextLabelText("battlearenamsg", "lblDescription3", "Player 2: -"..(battlearena[2]/1000).." Honor");				
			UI_SetTextLabelText("battlearena", "p1punteggio", ""..battlearena[3]);           					
      Player_SetRU(0, Player_GetRU(0) + battlearena[2])
      honorbonus[1] = honorbonus[1] + (battlearena[2]/500)
      honorbonus[2] = honorbonus[2] - (battlearena[2]/1000)      
      battlearena[2] = battlearena[2] + 2000 
      battlearena[1] = battlearena[1] + 1
      battlearena[3] = battlearena[3] + 1   
      battlearena[6] = 1 
    elseif presenza0 == 0 and presenza1 >= 1 then
      Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/worldplanewhoosh")		
      UI_SetScreenEnabled("battlearenamsg", 1)
			UI_SetScreenVisible("battlearenamsg", 1)	
			UI_SetTextLabelText("battlearenamsg", "lblSubTitle", "Battle Number "..(battlearena[2]/2000));				
			UI_SetTextLabelText("battlearenamsg", "lblDescription1", "Battle won by Player 2");	
			UI_SetTextLabelText("battlearenamsg", "lblDescription2", "Player 1: -"..(battlearena[2]/1000).." Honor");		
			UI_SetTextLabelText("battlearenamsg", "lblDescription3", "Player 2: "..battlearena[2].." RUs, "..(battlearena[2]/500).." Honor");			
      UI_SetTextLabelText("battlearena", "p2punteggio", ""..battlearena[4]);      
      Player_SetRU(1, Player_GetRU(1) + battlearena[2]) 
      honorbonus[2] = honorbonus[2] + (battlearena[2]/500)
      honorbonus[1] = honorbonus[1] - (battlearena[2]/1000)        
      battlearena[2] = battlearena[2] + 2000 
      battlearena[1] = battlearena[1] + 1
      battlearena[4] = battlearena[4] + 1  
      battlearena[6] = 2        
    elseif presenza0 == 0 and presenza1 == 0 then 
      Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/worldplanewhoosh")	
      UI_SetScreenEnabled("battlearenamsg", 1)
			UI_SetScreenVisible("battlearenamsg", 1)	
			UI_SetTextLabelText("battlearenamsg", "lblSubTitle", "Battle Number "..(battlearena[2]/2000));				
			UI_SetTextLabelText("battlearenamsg", "lblDescription1", "Battle not assigned, prize: "..battlearena[2].." RUs, "..(battlearena[2]/500).." Honor");	
			UI_SetTextLabelText("battlearenamsg", "lblDescription2", "Player 1: -"..(battlearena[2]/1000).." Honor");
			UI_SetTextLabelText("battlearenamsg", "lblDescription3", "Player 2: -"..(battlearena[2]/1000).." Honor");			
      honorbonus[2] = honorbonus[2] - (battlearena[2]/1000)
      honorbonus[1] = honorbonus[1] - (battlearena[2]/1000)        
      battlearena[2] = battlearena[2] + 2000 
      battlearena[1] = battlearena[1] + 1       
      battlearena[6] = 0    
    elseif battlearena[5] <= 0 then      
      Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/worldplanewhoosh")
      UI_SetScreenEnabled("battlearenamsg", 1)
			UI_SetScreenVisible("battlearenamsg", 1)	
			UI_SetTextLabelText("battlearenamsg", "lblSubTitle", "Battle Number "..(battlearena[2]/2000));				
			UI_SetTextLabelText("battlearenamsg", "lblDescription1", "Battle not assigned, prize: "..battlearena[2].." RUs, "..(battlearena[2]/500).." Honor");	
			UI_SetTextLabelText("battlearenamsg", "lblDescription2", "Player 1: -"..(battlearena[2]/1000).." Honor");
			UI_SetTextLabelText("battlearenamsg", "lblDescription3", "Player 2: -"..(battlearena[2]/1000).." Honor");		
      honorbonus[2] = honorbonus[2] - (battlearena[2]/1000)
      honorbonus[1] = honorbonus[1] - (battlearena[2]/1000)       
      battlearena[2] = battlearena[2] + 2000 
      battlearena[1] = battlearena[1] + 1     
      battlearena[6] = 0 	                  
    else                  
    end 
    battlearena[5] = battlearena[5] - 1
	--tempo per raggiungere l'arena      
  elseif battlearena[1] >= 200 then  
    --FX_StartEvent("ba", "ba") 
    Subtitle_Add(Actor_FleetIntel,"Reach the Battle Arena",1.5)  	            	           	                      
    UI_SetTextLabelText("battlearena", "timeto", ""..(260-battlearena[1]).." seconds to reach the battle arena"); 
    UI_SetTextLabelText("battlearena", "timeto1", "");   
    UI_SetTextLabelText("battlearena", "p1punteggio1", ""..presenza0);
    UI_SetTextLabelText("battlearena", "p2punteggio1", ""..presenza1);	 	    		
    battlearena[1] = battlearena[1] + 1     
    Sound_SpeechPlay("Data:sound/speech/allships/fleet/STATUS_sirena") 
    if presenza0 == 1 and presenza1 == 1 then
      battlearena[1] = 260
    end       
		if battlearena[1] >= 260 then	
		  battlearena[5] = 200				  
		end 
	--fase di costruzione/produzione    
  else    
    if battlearena[1] == 1 then       
      UI_SetTextLabelText("battlearena", "p1", "Player 1");
      UI_SetTextLabelText("battlearena", "p1punteggio", ""..battlearena[3]);
      UI_SetTextLabelText("battlearena", "p2", "Player 2");
      UI_SetTextLabelText("battlearena", "p2punteggio", ""..battlearena[4]);      
    end        
    UI_SetTextLabelText("battlearena", "timeto", ""..(200-battlearena[1]).." seconds to the next battle");  
    UI_SetTextLabelText("battlearena", "timeto1", "Prize: "..battlearena[2].." RUs, "..(battlearena[2]/500).." Honor"); 
    UI_SetTextLabelText("battlearena", "p1punteggio1", "");
    UI_SetTextLabelText("battlearena", "p2punteggio1", "");	 	    		 
    battlearena[1] = battlearena[1] + 1    
		--se c'è gente dentro l'arena distrugge     
    for i = 0,npsa[1]-1,1 do
		  if SobGroup_Empty("splitPlayer_Ships0" .. tostring(i)) == 0 then
				if SobGroup_AreAnyOfTheseTypes("splitPlayer_Ships0" .. tostring(i), "splitter, supporter") == 0 then	
					if SobGroup_AreAnyOfTheseTypes("splitPlayer_Ships0" .. tostring(i), "hgn_resourcecollector, hgn_salvagecollector, vgr_resourcecollector") == 0 or battlearena[6] ~= 1 then			  
					  if SobGroup_FillSobGroupInVolume("temp", "splitPlayer_Ships0" .. tostring(i), "battlearena") == 1 then	    
					    SobGroup_TakeDamage("splitPlayer_Ships0" .. tostring(i), 0.1) 
					  end	
				  end				  
				end 
		  end  
		end 		
		for i = 0,npsa[2]-1,1 do
		  if SobGroup_Empty("splitPlayer_Ships1" .. tostring(i)) == 0 then
				if SobGroup_AreAnyOfTheseTypes("splitPlayer_Ships1" .. tostring(i), "splitter, supporter") == 0 then	
					if SobGroup_AreAnyOfTheseTypes("splitPlayer_Ships1" .. tostring(i), "hgn_resourcecollector, hgn_salvagecollector, vgr_resourcecollector") == 0 or battlearena[6] ~= 2 then			  
					  if SobGroup_FillSobGroupInVolume("temp", "splitPlayer_Ships1" .. tostring(i), "battlearena") == 1 then    
					    SobGroup_TakeDamage("splitPlayer_Ships1" .. tostring(i), 0.1) 
					  end	
				  end				  
				end 
		  end  
		end  	       
  end  
end  