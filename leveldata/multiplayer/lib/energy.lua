function energyConsume(ship,consume,cc)     
  local iRace = Player_GetRace(SobGroup_OwnedBy(ship)) + 1 
  local stopship = 0
  local stopsub = 0
  local consumodellasingolanave = powerList[SobGroup_OwnedBy(ship) + 1]  
  dofilepath([[data:scripts/building and research/]] .. races[iRace][1] .. [[/build.lua]])
  if SobGroup_AreAnyOfTheseTypes(ship, "hgn_power,hgn_aditional_core") == 0 then
	  if SobGroup_IsDocked(ship) == 0 then 
			if Player_HasResearch(SobGroup_OwnedBy(ship), "isai" ) == 0 then
				--build
				if SobGroup_CanDoAbility(ship, abilityList[8]) == 1 then				
					if SobGroup_AreAnyOfTheseTypes(ship, "hgn_container, vgr_container") == 0 then
						for z, iCount in build do
						  if iCount.ThingToBuild == "isEnsignCore" then
							  break
							end
							if SobGroup_IsBuilding(ship, iCount.ThingToBuild) == 1 then
								if iCount.Type == Ship and stopship==0 then
									powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (4*consume)
									powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - (4*consume)
									if SobGroup_Count("hgn_power"..SobGroup_OwnedBy(ship)) > 0 then
										FX_StartEvent("hgn_power"..SobGroup_OwnedBy(ship), "Energy")	 
									end  
									stopship = stopship+1       
								elseif iCount.Type == SubSystem and stopsub==0 then
									powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (4*consume)
									powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - (4*consume)
									if SobGroup_Count("hgn_power"..SobGroup_OwnedBy(ship)) > 0 then
										FX_StartEvent("hgn_power"..SobGroup_OwnedBy(ship), "Energy")	 
									end       
									stopsub = stopsub+1   
								else  
								end
								if (stopship+stopsub) >= cc then	        
									break	        
								end
							end
						end	  
					end
				end  	
			end				  
			--sensor	
			if SobGroup_IsDoingAbility(ship, abilityList[20]) == 1 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (1*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].sensor = powerListManager[SobGroup_OwnedBy(ship) + 1].sensor - (1*consume)
			end
			--repair	
			if SobGroup_IsDoingAbility(ship, abilityList[13]) == 1 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (2*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].misc = powerListManager[SobGroup_OwnedBy(ship) + 1].misc - (2*consume)
			end	
			--move	
			if SobGroup_IsDoingAbility(ship, abilityList[1]) == 1 and SobGroup_GetActualSpeed(ship) > 0.35 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (2*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].move = powerListManager[SobGroup_OwnedBy(ship) + 1].move - (2*consume)
			elseif SobGroup_GetActualSpeed(ship) > 0.35 and SobGroup_IsDocked(ship) == 0 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (2*consume)  
				powerListManager[SobGroup_OwnedBy(ship) + 1].move = powerListManager[SobGroup_OwnedBy(ship) + 1].move - (2*consume)
			end
			--attack	
			if SobGroup_IsDoingAbility(ship, abilityList[2]) == 1 then		
				if SobGroup_AreAnyOfTheseTypes(ship, "hgn_artillerysentinel") == 1 then  
					if SobGroup_GetHardPointHealth(ship, "k1") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (2*consume)
					  powerListManager[SobGroup_OwnedBy(ship) + 1].attack = powerListManager[SobGroup_OwnedBy(ship) + 1].attack - (2*consume)
					end
					if SobGroup_GetHardPointHealth(ship, "k2") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (2*consume)
						powerListManager[SobGroup_OwnedBy(ship) + 1].attack = powerListManager[SobGroup_OwnedBy(ship) + 1].attack - (2*consume)
					end
					if SobGroup_GetHardPointHealth(ship, "k3") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (2*consume)
						powerListManager[SobGroup_OwnedBy(ship) + 1].attack = powerListManager[SobGroup_OwnedBy(ship) + 1].attack - (2*consume)
					end
					if SobGroup_GetHardPointHealth(ship, "k4") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (2*consume)
						powerListManager[SobGroup_OwnedBy(ship) + 1].attack = powerListManager[SobGroup_OwnedBy(ship) + 1].attack - (2*consume)
					end			    
				elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_combatbase") == 1 then  
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (6*consume)
					powerListManager[SobGroup_OwnedBy(ship) + 1].attack = powerListManager[SobGroup_OwnedBy(ship) + 1].attack - (6*consume)
					if SobGroup_GetHardPointHealth(ship, "up") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (2*consume)
						powerListManager[SobGroup_OwnedBy(ship) + 1].attack = powerListManager[SobGroup_OwnedBy(ship) + 1].attack - (2*consume)
					end
					if SobGroup_GetHardPointHealth(ship, "down") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (2*consume)
						powerListManager[SobGroup_OwnedBy(ship) + 1].attack = powerListManager[SobGroup_OwnedBy(ship) + 1].attack - (2*consume)
					end		    	    
				else
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (3*consume) 
					powerListManager[SobGroup_OwnedBy(ship) + 1].attack = powerListManager[SobGroup_OwnedBy(ship) + 1].attack - (3*consume)
				end		  
			end	
			--special attack
			if SobGroup_IsDoingAbility(ship, abilityList[15]) == 1 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (4*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].attack = powerListManager[SobGroup_OwnedBy(ship) + 1].attack - (4*consume)
			end	
			--hyperspace	
			if SobGroup_IsDoingAbility(ship, abilityList[5]) == 1 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (4*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].hyperspace = powerListManager[SobGroup_OwnedBy(ship) + 1].hyperspace - (4*consume)
			end
			--form hyper gate
			if SobGroup_IsDoingAbility(ship, abilityList[23]) == 1 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (4*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].hyperspace = powerListManager[SobGroup_OwnedBy(ship) + 1].hyperspace - (4*consume)
			end
			--hyper via gate
			if SobGroup_IsDoingAbility(ship, abilityList[24]) == 1 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (4*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].hyperspace = powerListManager[SobGroup_OwnedBy(ship) + 1].hyperspace - (4*consume)
			end		
			--ping	
			if SobGroup_IsDoingAbility(ship, abilityList[16]) == 1 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (14*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].sensor = powerListManager[SobGroup_OwnedBy(ship) + 1].sensor - (14*consume)
			end
			--use hyper inhibitor	
			if SobGroup_IsDoingAbility(ship, abilityList[27]) == 1 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (8*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].hyperspace = powerListManager[SobGroup_OwnedBy(ship) + 1].hyperspace - (8*consume)
			end	
			--def field	
			if SobGroup_IsDoingAbility(ship, abilityList[25]) == 1 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (10*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].defensefield = powerListManager[SobGroup_OwnedBy(ship) + 1].defensefield - (10*consume)
			end	
			--cloak	
			if SobGroup_IsDoingAbility(ship, abilityList[28]) == 1 then
				powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (10*consume)
				powerListManager[SobGroup_OwnedBy(ship) + 1].cloak = powerListManager[SobGroup_OwnedBy(ship) + 1].cloak - (10*consume)
			end	
			--sun damage
			if SobGroup_Empty("star_sol") == 0 and Universe_GameTime() > 10 then
				--pianeti
				if SobGroup_Empty("planet_mercury") == 0 and SobGroup_GetDistanceToSobGroup(ship, "planet_mercury") <= 42000 then
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
				elseif SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy(ship), "hgn_battlestation"..SobGroup_OwnedBy(ship), ship, 14000) == 1 then		  
				else
					if SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 300000 then 
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + (4*consume*spacebalancer)    
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space + (4*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 350000 then	
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + (3*consume*spacebalancer)
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space + (3*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 400000 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + (2*consume*spacebalancer)
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space + (2*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 450000 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + (1*consume*spacebalancer)
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space + (1*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 500000 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + (0*consume*spacebalancer)
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space + (0*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 550000 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + (0*consume*spacebalancer)
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space + (0*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 600000 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + (0*consume*spacebalancer)
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space + (0*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 650000 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (1*consume*spacebalancer)
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space - (1*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 700000 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (2*consume*spacebalancer)
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space - (2*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 750000 then 
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (3*consume*spacebalancer)
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space - (3*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 800000 then 
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (4*consume*spacebalancer)
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space - (4*consume*spacebalancer)
					elseif SobGroup_GetDistanceToSobGroup(ship, "star_sol") <= 850000 then 
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume*spacebalancer) 
            powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space - (5*consume*spacebalancer)						
					else
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (6*consume*spacebalancer)  
						powerListManager[SobGroup_OwnedBy(ship) + 1].space = powerListManager[SobGroup_OwnedBy(ship) + 1].space - (6*consume*spacebalancer)
					end
				end  
			end
			--fusion
			if SobGroup_AreAnyOfTheseTypes(ship, "hgn_scaver,vgr_scaver") == 1 then  	    
				if SobGroup_GetHardPointHealth(ship, "hgn_orders_fusion") == 0 then
					if SobGroup_GetHardPointHealth(ship, "Fusion") > 0 then
						if Player_HasResearch(SobGroup_OwnedBy(ship), "Scaverautogenres3") == 1 then					       
							powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (9*consume)   
							powerListManager[SobGroup_OwnedBy(ship) + 1].fusion = powerListManager[SobGroup_OwnedBy(ship) + 1].fusion - (9*consume)
						elseif Player_HasResearch(SobGroup_OwnedBy(ship), "Scaverautogenres2") == 1 then
							powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (7*consume)
							powerListManager[SobGroup_OwnedBy(ship) + 1].fusion = powerListManager[SobGroup_OwnedBy(ship) + 1].fusion - (7*consume)
						elseif Player_HasResearch(SobGroup_OwnedBy(ship), "Scaverautogenres1") == 1 then
							powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume) 
							powerListManager[SobGroup_OwnedBy(ship) + 1].fusion = powerListManager[SobGroup_OwnedBy(ship) + 1].fusion - (5*consume)
						elseif SobGroup_GetHardPointHealth(ship, "Fusion") > 0 then
							powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (3*consume) 
							powerListManager[SobGroup_OwnedBy(ship) + 1].fusion = powerListManager[SobGroup_OwnedBy(ship) + 1].fusion - (3*consume)
						end		      
					end  		 	    
				end										
			end
			--research
			if Player_HasResearch(SobGroup_OwnedBy(ship), "isai" ) == 0 then
				if SobGroup_AreAnyOfTheseTypes(ship, "hgn_researchstation") == 1 then
					dofilepath([[data:scripts/building and research/]] .. races[iRace][1] .. [[/research.lua]])
					for z, iCount in research do
					  if iCount.Name == "instanttech" then
							break
						end
						if Player_HasQueuedResearch(SobGroup_OwnedBy(ship), iCount.Name) == 1 then
							powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume) 
							powerListManager[SobGroup_OwnedBy(ship) + 1].research = powerListManager[SobGroup_OwnedBy(ship) + 1].research - (5*consume)
							break	   
						end
					end
					if SobGroup_GetHardPointHealth((ship), "powerup_ru") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume)
						powerListManager[SobGroup_OwnedBy(ship) + 1].misc = powerListManager[SobGroup_OwnedBy(ship) + 1].misc - (5*consume)
					end
					if SobGroup_GetHardPointHealth((ship), "powerup_defense") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume)
						powerListManager[SobGroup_OwnedBy(ship) + 1].misc = powerListManager[SobGroup_OwnedBy(ship) + 1].misc - (5*consume)
					end
					if SobGroup_GetHardPointHealth((ship), "powerup_speed") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume)
						powerListManager[SobGroup_OwnedBy(ship) + 1].misc = powerListManager[SobGroup_OwnedBy(ship) + 1].misc - (5*consume)
					end
					if SobGroup_GetHardPointHealth((ship), "powerup_attack") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume)
						powerListManager[SobGroup_OwnedBy(ship) + 1].misc = powerListManager[SobGroup_OwnedBy(ship) + 1].misc - (5*consume)
					end
					if SobGroup_GetHardPointHealth((ship), "powerup_build") > 0 then
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume)
						powerListManager[SobGroup_OwnedBy(ship) + 1].misc = powerListManager[SobGroup_OwnedBy(ship) + 1].misc - (5*consume)
					end
					if SobGroup_GetHardPointHealth((ship), "powerup_repair") > 0 then		 
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume)   
            powerListManager[SobGroup_OwnedBy(ship) + 1].misc = powerListManager[SobGroup_OwnedBy(ship) + 1].misc - (5*consume)						
					end
					--module					
					if SobGroup_GetHardPointHealth(ship, "Generic 1") > 0 then   
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 1  
            powerListManager[SobGroup_OwnedBy(ship) + 1].research = powerListManager[SobGroup_OwnedBy(ship) + 1].research - 1						
					end  
					if SobGroup_GetHardPointHealth(ship, "Generic 2") > 0 then   
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 2
            powerListManager[SobGroup_OwnedBy(ship) + 1].research = powerListManager[SobGroup_OwnedBy(ship) + 1].research - 2						
					end  
					if SobGroup_GetHardPointHealth(ship, "Generic 3") > 0 then   
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 4  
            powerListManager[SobGroup_OwnedBy(ship) + 1].research = powerListManager[SobGroup_OwnedBy(ship) + 1].research - 4						
					end 
        elseif SobGroup_AreAnyOfTheseTypes(ship, "vgr_mothership, vgr_carrier, vgr_shipyard, vgr_battlecarrier") == 1 then		
          dofilepath([[data:scripts/building and research/]] .. races[iRace][1] .. [[/research.lua]])
					for z, iCount in research do
					  if iCount.Name == "isai" then
							break
						end
						if Player_HasQueuedResearch(SobGroup_OwnedBy(ship), iCount.Name) == 1 then
							powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume) 
							powerListManager[SobGroup_OwnedBy(ship) + 1].research = powerListManager[SobGroup_OwnedBy(ship) + 1].research - (5*consume)
							break	   
						end
					end          				
        end 			
				--trade			
				if SobGroup_AreAnyOfTheseTypes(ship, "hgn_container, vgr_container") == 1 then		
					if SobGroup_GetHardPointHealth((ship), "engine_boost_container") > 0 then		 
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 3     
						powerListManager[SobGroup_OwnedBy(ship) + 1].move = powerListManager[SobGroup_OwnedBy(ship) + 1].move - 3
					end	            			  
				end        		
			end				
		end			
		if Player_HasResearch(SobGroup_OwnedBy(ship), "isai" ) == 0 then
		  --hyperspace station
			if SobGroup_AreAnyOfTheseTypes(ship, "hgn_hyperspacestation") == 1 then		  		    
				if SobGroup_GetHardPointHealth((ship), "powerup_sensor") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (5*consume)  
          powerListManager[SobGroup_OwnedBy(ship) + 1].misc = powerListManager[SobGroup_OwnedBy(ship) + 1].misc - (5*consume)					
				end				    			  
			end
			--Shipyard
			if SobGroup_AreAnyOfTheseTypes(ship, "hgn_shipyard") == 1 then		
				if SobGroup_GetHardPointHealth((ship), "pg") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4
        end	
				if SobGroup_GetHardPointHealth((ship), "pg1") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4
        end	
			elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_battleshipyard") == 1 then		
				if SobGroup_GetHardPointHealth((ship), "pg") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
				end		
				if SobGroup_GetHardPointHealth((ship), "pg1") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
				end	
				if SobGroup_GetHardPointHealth((ship), "pg2") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4   
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
        end	
				if SobGroup_GetHardPointHealth((ship), "pg3") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4  
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
        end	
			elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_shipyard_g") == 1 then	
				if SobGroup_GetHardPointHealth((ship), "pg") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
        end	
				if SobGroup_GetHardPointHealth((ship), "pg1") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
        end	
				--shields
				if SobGroup_GetHardPointHealth((ship), "hgn_orders_solarshield") > 0 then		 
					if Player_HasResearch(SobGroup_OwnedBy(ship), "solarshield3" ) == 1 then
						hassolarshield = 4
					elseif Player_HasResearch(SobGroup_OwnedBy(ship), "solarshield2" ) == 1 then	
						hassolarshield = 3
					elseif Player_HasResearch(SobGroup_OwnedBy(ship), "solarshield1" ) == 1 then	
						hassolarshield = 2
					else
						hassolarshield = 1	
					end
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (3*hassolarshield*consume) 
          powerListManager[SobGroup_OwnedBy(ship) + 1].defensefield = powerListManager[SobGroup_OwnedBy(ship) + 1].defensefield - (3*hassolarshield*consume)					
				end
				if SobGroup_GetHardPointHealth((ship), "hgn_orders_remotespaceshield") > 0 then		 
					if Player_HasResearch(SobGroup_OwnedBy(ship), "remotespaceshield3" ) == 1 then
						hasremotespaceshield = 4
					elseif Player_HasResearch(SobGroup_OwnedBy(ship), "remotespaceshield2" ) == 1 then	
						hasremotespaceshield = 3
					elseif Player_HasResearch(SobGroup_OwnedBy(ship), "remotespaceshield1" ) == 1 then	
						hasremotespaceshield = 2
					else
						hasremotespaceshield = 1	
					end
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (3*hasremotespaceshield*consume) 
          powerListManager[SobGroup_OwnedBy(ship) + 1].defensefield = powerListManager[SobGroup_OwnedBy(ship) + 1].defensefield - (3*hasremotespaceshield*consume)					
				end		 
        --mass shield
				for ms = 1,6,1 do
					if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy(ship), "hgn_massshield_"..ms) >= 1 then	
						powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (6*consume) 
						powerListManager[SobGroup_OwnedBy(ship) + 1].defensefield = powerListManager[SobGroup_OwnedBy(ship) + 1].defensefield - (6*consume)
					end
				end	
				--boost  		    
				if SobGroup_GetHardPointHealth((ship), "boost1") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (3*consume) 
          powerListManager[SobGroup_OwnedBy(ship) + 1].move = powerListManager[SobGroup_OwnedBy(ship) + 1].move - (3*consume)					
				end	
				if SobGroup_GetHardPointHealth((ship), "boost2") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (6*consume)    
          powerListManager[SobGroup_OwnedBy(ship) + 1].move = powerListManager[SobGroup_OwnedBy(ship) + 1].move - (6*consume)					
				end
				if SobGroup_GetHardPointHealth((ship), "boost3") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (9*consume)   
          powerListManager[SobGroup_OwnedBy(ship) + 1].move = powerListManager[SobGroup_OwnedBy(ship) + 1].move - (9*consume)					
				end	        										
			elseif SobGroup_AreAnyOfTheseTypes(ship, "vgr_shipyard") == 1 then		
				if SobGroup_GetHardPointHealth((ship), "pg") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4 
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
				end	
        if SobGroup_GetHardPointHealth((ship), "pg1") > 0 then		 
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4 
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
				end			 				
			end	      
			--Mothership
		  if SobGroup_AreAnyOfTheseTypes(ship, "hgn_mothership") == 1 then		
		    if SobGroup_GetHardPointHealth((ship), "pg") > 0 then		 
          powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4     
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
				end	   
		    if SobGroup_GetHardPointHealth((ship), "pg1") > 0 then		 
          powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
        end	         			  
			elseif SobGroup_AreAnyOfTheseTypes(ship, "vgr_mothership") == 1 then		
		    if SobGroup_GetHardPointHealth((ship), "pg") > 0 then		 
          powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4 
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
        end	  		 
        if SobGroup_GetHardPointHealth((ship), "pl") > 0 then		 
          powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - (10*consume)  
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production - (10*consume) 					
        end	  					
			end    			
			--Carrier		  		
		  if SobGroup_AreAnyOfTheseTypes(ship, "hgn_battlecarrier,hgn_carrier,vgr_carrier") == 1 then		
		    if SobGroup_GetHardPointHealth((ship), "pg") > 0 then		 
          powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + 4 
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + 4					
        end	        			
			end   		         	      
      --module/facility
			if SobGroup_AreAnyOfTheseTypes(ship, "hgn_mothership,vgr_mothership,hgn_shipyard,hgn_shipyard_g,hgn_battleshipyard,vgr_shipyard") == 1 then
				if SobGroup_GetHardPointHealth(ship, "Production 1") > 0 then     
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 1  
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 1					
				end  
				if SobGroup_GetHardPointHealth(ship, "Production 2") > 0 then   
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 2    
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 2					
				end  
				if SobGroup_GetHardPointHealth(ship, "Production 3") > 0 then   
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 2   
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 2					
				end  
				if SobGroup_GetHardPointHealth(ship, "Production 4") > 0 then   
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 4 
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 4 					
				end  			
			elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_lightcarrier") == 1 then			    
				if SobGroup_GetHardPointHealth(ship, "Production 1") > 0 then     
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 1  
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 1					
				end  
				if SobGroup_GetHardPointHealth(ship, "Production 2") > 0 then   
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 2 
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 2					
				end						     			  
			elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_carrier") == 1 then			    
				if SobGroup_GetHardPointHealth(ship, "Production 1") > 0 then     
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 1  
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 1					
				end  
				if SobGroup_GetHardPointHealth(ship, "Production 2") > 0 then   
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 2  
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 2					
				end  
				if SobGroup_GetHardPointHealth(ship, "Production 3") > 0 then   
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 2  
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 2			
				end						        			  
			elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_battlecarrier") == 1 then				    
				if SobGroup_GetHardPointHealth(ship, "Production 1") > 0 then     
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 1  
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 1					
				end  
				if SobGroup_GetHardPointHealth(ship, "Production 2") > 0 then   
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 2   
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 2					
				end  
				if SobGroup_GetHardPointHealth(ship, "Production 3") > 0 then   
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 2   
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 2					
				end  
				if SobGroup_GetHardPointHealth(ship, "Production 5") > 0 then   
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 4    
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 4					
				end  											
			elseif SobGroup_AreAnyOfTheseTypes(ship, "vgr_carrier,vgr_battlecarrier") == 1 then				    
				if SobGroup_GetHardPointHealth(ship, "Production 1") > 0 then     
					powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 1     
          powerListManager[SobGroup_OwnedBy(ship) + 1].build = powerListManager[SobGroup_OwnedBy(ship) + 1].build - 1					
				end		             			  
			end 		    			
		end				
    cons[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - consumodellasingolanave
    SobGroup_SetHardPointHealth(ship, "en", 0.5+cons[SobGroup_OwnedBy(ship) + 1]/1000)	  
		--return cons[SobGroup_OwnedBy(ship) + 1]
	--Power Station	
	elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_power") == 1 then	
	  energyproduction = 4	      
    if Player_HasResearch(SobGroup_OwnedBy(ship), "energyproduction3" ) == 1 then
      energyproduction = 7            
    elseif Player_HasResearch(SobGroup_OwnedBy(ship), "energyproduction2" ) == 1 then
      energyproduction = 6            
    elseif Player_HasResearch(SobGroup_OwnedBy(ship), "energyproduction1" ) == 1 then
      energyproduction = 5      
    end	  	
    if SobGroup_GetHardPointHealth((ship), "powerup_power") > 0 then
			energyproduction = energyproduction*2
		end		
		if SobGroup_GetHardPointHealth((ship), "hgn_orders_powersave") > 0 then
			energyproduction = energyproduction/2
		end		
	  powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + energyproduction	
		powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + energyproduction
    for i = 1,10,1 do	
			if SobGroup_GetHardPointHealth(ship, "p"..i) > 0 then
			  if SobGroup_IsDocked(ship) == 0 then
			  	powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + energyproduction   
					powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + energyproduction
          powerListMax[SobGroup_OwnedBy(ship) + 1] = powerListMax[SobGroup_OwnedBy(ship) + 1] + 100
          if SobGroup_GetHardPointHealth((ship), "hgn_orders_powersave") == 0 then					
						FX_StartEvent("hgn_power"..SobGroup_OwnedBy(ship), "Energy")
					else
            FX_StartEvent("hgn_power"..SobGroup_OwnedBy(ship), "EnergyLow")							
					end	
			 	else
			 	  powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + floor(energyproduction/1.9)
          powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + floor(energyproduction/1.9)
          powerListMax[SobGroup_OwnedBy(ship) + 1] = powerListMax[SobGroup_OwnedBy(ship) + 1] + 50 			 	  
					FX_StartEvent("hgn_power"..SobGroup_OwnedBy(ship), "EnergyLow")					
			 	end
			end 
		end			
		if SobGroup_GetHardPointHealth("hgn_power"..SobGroup_OwnedBy(ship), "hgn_orders_advpowerdisruptor") > 0 then
			powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - 25
			powerListManager[SobGroup_OwnedBy(ship) + 1].misc = powerListManager[SobGroup_OwnedBy(ship) + 1].misc - 25
		end	
		cons[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - consumodellasingolanave		
		SobGroup_SetHardPointHealth(ship, "en", 0.5+cons[SobGroup_OwnedBy(ship) + 1]/1000)	  
		--return cons[SobGroup_OwnedBy(ship) + 1]		
	--aditional core
  elseif SobGroup_AreAnyOfTheseTypes(ship, "hgn_aditional_core") == 1 then	
	  energyproduction = 10	      
    if Player_HasResearch(SobGroup_OwnedBy(ship), "energyproduction3" ) == 1 then
      energyproduction = 16            
    elseif Player_HasResearch(SobGroup_OwnedBy(ship), "energyproduction2" ) == 1 then
      energyproduction = 14            
    elseif Player_HasResearch(SobGroup_OwnedBy(ship), "energyproduction1" ) == 1 then
      energyproduction = 12      
    end   
	  if SobGroup_IsDocked(ship) == 0 then
			powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + energyproduction
			powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + energyproduction
      FX_StartEvent(ship, "EnergyLow")
		else
			powerList[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] + floor(energyproduction/1.9)
			powerListManager[SobGroup_OwnedBy(ship) + 1].production = powerListManager[SobGroup_OwnedBy(ship) + 1].production + floor(energyproduction/1.9)
		end		
		cons[SobGroup_OwnedBy(ship) + 1] = powerList[SobGroup_OwnedBy(ship) + 1] - consumodellasingolanave		
		SobGroup_SetHardPointHealth(ship, "en", 0.5+cons[SobGroup_OwnedBy(ship) + 1]/1000)	  
		--return cons[SobGroup_OwnedBy(ship) + 1]			
	end	
end   