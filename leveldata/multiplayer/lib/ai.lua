function ai()    
  local playerIndex = 0 
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then
        if Player_HasResearch(playerIndex, "isai" ) == 1 then				
          playerIndexList = playerIndex + 1  
          --level of difficulty
					if year < 1 then
						if Player_HasResearch(playerIndex, "iseasy" ) == 1 then  
							CPULODvalueList[playerIndexList] = 0	          
						elseif Player_HasResearch(playerIndex, "isstandard" ) == 1 then  
							CPULODvalueList[playerIndexList] = 1  	          
						elseif Player_HasResearch(playerIndex, "ishard" ) == 1 then  
							CPULODvalueList[playerIndexList] = 2	          
						elseif Player_HasResearch(playerIndex, "isexpert" ) == 1 then  
							CPULODvalueList[playerIndexList] = 3  	          
						end  
					end					
					if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then
					  if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_mothership") > 0 then	
							--CF
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_commandfortress") > 0 then		
								if SobGroup_FillProximitySobGroup ("temp", "hgn_mothership"..playerIndex, "hgn_commandfortress"..playerIndex, 12000) == 0 then
									if SobGroup_AreAllInHyperspace("hgn_commandfortress"..playerIndex) == 1 then                
										SobGroup_ExitHyperSpaceSobGroup("hgn_commandfortress"..playerIndex, "hgn_mothership"..playerIndex, 6000)
									else
										SobGroup_EnterHyperSpaceOffMap("hgn_commandfortress"..playerIndex)
									end				
								end
							end												
							--OS	
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battlestation") > 0 then					
								if SobGroup_FillProximitySobGroup ("temp", "hgn_mothership"..playerIndex, "hgn_battlestation"..playerIndex, 14000) == 0 then
									if SobGroup_AreAllInHyperspace("hgn_battlestation"..playerIndex) == 1 then                
										SobGroup_ExitHyperSpaceSobGroup("hgn_battlestation"..playerIndex, "hgn_mothership"..playerIndex, 7000)
									else
										SobGroup_EnterHyperSpaceOffMap("hgn_battlestation"..playerIndex)
									end				
								end
							end											
							--Platforms
              if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_gunturret") > 0 then               
								SobGroup_ParadeSobGroup("hgn_gunturret"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end    
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_rapidfiregunturret") > 0 then               
								SobGroup_ParadeSobGroup("hgn_rapidfiregunturret"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end    
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_pulsarturret") > 0 then               
								SobGroup_ParadeSobGroup("hgn_pulsarturret"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end    
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_ionturret") > 0 then               
								SobGroup_ParadeSobGroup("hgn_ionturret"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end    
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_missileturret") > 0 then               
								SobGroup_ParadeSobGroup("hgn_missileturret"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end    
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_defensefieldturret") > 0 then               
								SobGroup_ParadeSobGroup("hgn_defensefieldturret"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end  
              if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_rts") > 0 then               
								SobGroup_ParadeSobGroup("hgn_rts"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end  	
              if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_artillerysentinel") > 0 then               
								SobGroup_ParadeSobGroup("hgn_artillerysentinel"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end  							
							--RS                   
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_researchstation") > 0 then               
								SobGroup_ParadeSobGroup("hgn_researchstation"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end            
							--PS                    
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_power") > 0 then               
								SobGroup_ParadeSobGroup("hgn_power"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end           
							--CS                    
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_crewstation") > 0 then               
								SobGroup_ParadeSobGroup("hgn_crewstation"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end          
							--WS
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_combatbase") > 0 then               
								SobGroup_ParadeSobGroup("hgn_combatbase"..playerIndex, "hgn_mothership"..playerIndex, 0)  
							end 			
						end	
					else
					  if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mothership") >= 1 then	
							--CF
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_commandfortress") > 0 then
								if SobGroup_FillProximitySobGroup ("temp", "vgr_mothership"..playerIndex, "vgr_commandfortress"..playerIndex, 12000) == 0 then
									if SobGroup_AreAllInHyperspace("vgr_commandfortress"..playerIndex) == 1 then                
										SobGroup_ExitHyperSpaceSobGroup("vgr_commandfortress"..playerIndex, "vgr_mothership"..playerIndex, 6000)
									else
										SobGroup_EnterHyperSpaceOffMap("vgr_commandfortress"..playerIndex)
									end				
								end		
							end					
							--Platforms
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_weaponplatform_gun") > 0 then               
								SobGroup_ParadeSobGroup("vgr_weaponplatform_gun"..playerIndex, "vgr_mothership"..playerIndex, 0)  
							end  
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_weaponplatform_lance") > 0 then               
								SobGroup_ParadeSobGroup("vgr_weaponplatform_lance"..playerIndex, "vgr_mothership"..playerIndex, 0)  
							end  
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_weaponplatform_missile") > 0 then               
								SobGroup_ParadeSobGroup("vgr_weaponplatform_missile"..playerIndex, "vgr_mothership"..playerIndex, 0)  
							end  		
           	end
					end					
					if tempodicostruzioneList[5] <=	CPULODvalueList[playerIndexList] then	            
						--ru injection
						if Player_GetRU(playerIndex) < 500+(CPULODvalueList[playerIndexList]*100) then   
							Player_SetRU(playerIndex, Player_GetRU(playerIndex) + (500+(CPULODvalueList[playerIndexList]*500)))
						end
						--Hiigaran                       
						if Player_GetRace(playerIndex) == Race_Hiigaran then      
							--RC      
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_resourcecollector") < 4 then
								if costruzioneforzata("hgn_resourcecollector", 1, playerIndex, "isai", 500, 0, 0, 0, 4, "hgn_mothership", "experience",2) == 1 then
								end   
							--TC                      
							elseif SobGroup_Count("hgn_crewstation"..playerIndex) >= 1 and Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_transportcell") == 0 then    
								SobGroup_CreateShip("hgn_crewstation"..playerIndex, "hgn_transportcell")       	
							--WS        
							elseif SobGroup_Count("hgn_combatbase"..playerIndex) >= 1 then
								if (SobGroup_FillProximitySobGroup ("temp", "minetargetenemies"..playerIndex, "hgn_combatbase"..playerIndex, 5500) == 1) and						     
									 (SobGroup_IsDoingAbility("hgn_combatbase"..playerIndex, abilityList[2]) == 1) then
									if costruzioneforzata("hgn_tangomine_ws", 2, playerIndex, "canbuildminems", 2500, 0, 0, 0, 6, "hgn_combatbase", "experience",14) == 1 then
									end 
								elseif SobGroup_FillProximitySobGroup ("temp", "minetargetenemies"..playerIndex, "hgn_combatbase"..playerIndex, 20000) == 1 then
									if costruzioneforzata("hgn_viper_ws", 2, playerIndex, "canbuildmissilems", 2500, 0, 0, 0, 6, "hgn_combatbase", "experience",14) == 1 then
									end	               
								end  
							--MS
							elseif SobGroup_Count("hgn_mothership"..playerIndex) >= 1 then
								if (SobGroup_FillProximitySobGroup ("temp", "minetargetenemies"..playerIndex, "hgn_mothership"..playerIndex, 5500) == 1) and						     
									 (SobGroup_IsDoingAbility("hgn_mothership"..playerIndex, abilityList[2]) == 1) then
									if costruzioneforzata("hgn_tangomine", 2, playerIndex, "canbuildminems", 2000, 0, 0, 0, 6, "hgn_mothership", "experience",12) == 1 then
									end 
								elseif SobGroup_FillProximitySobGroup ("temp", "minetargetenemies"..playerIndex, "hgn_mothership"..playerIndex, 20000) == 1 then
									if costruzioneforzata("hgn_viper", 2, playerIndex, "canbuildmissilems", 2000, 0, 0, 0, 6, "hgn_mothership", "experience",12) == 1 then
									end	               
								end              
							end                 
							--Fleet 	
							if costruzioneforzata("hgn_cruisera", 	           3, playerIndex, "CruiserTech",            2000, 23, 2, 0, 3, "hgn_mothership", "Production 4", 11) == 1 then  
							elseif costruzioneforzata("hgn_advdestroyer",      2, playerIndex, "AdvDestroyerTech",       1500, 21, 1, 0, 3, "hgn_mothership", "Production 4", 9) == 1 then
							elseif costruzioneforzata("hgn_cth",               1, playerIndex, "AssaultGunshipTech",     750,  9,  0, 0, 5, "hgn_mothership", "Production 2", 7) == 1 then 
							elseif costruzioneforzata("hgn_hft",               1, playerIndex, "avengertech",            500,  7,  0, 0, 5, "hgn_mothership", "Production 1", 5) == 1 then
							end	
							if costruzioneforzata("hgn_battlecruiser",         3, playerIndex, "BattlecruiserIonWeapons",2500, 25, 3, 150, 2,"hgn_shipyard", "Production 5", 13) == 1 then  
							elseif costruzioneforzata("hgn_cruisera", 	       3, playerIndex, "CruiserTech",            2000, 23, 2, 0, 3,  "hgn_shipyard", "Production 4", 11) == 1 then  
							elseif costruzioneforzata("hgn_advdestroyer",      2, playerIndex, "AdvDestroyerTech",       1500, 21, 1, 0, 3,  "hgn_shipyard", "Production 4", 9) == 1 then
							elseif costruzioneforzata("hgn_cth",               1, playerIndex, "AssaultGunshipTech",     750,  9,  0, 0, 5,  "hgn_shipyard", "Production 2", 7) == 1 then 
							elseif costruzioneforzata("hgn_hft",               1, playerIndex, "avengertech",            500,  7,  0, 0, 5,  "hgn_shipyard", "Production 1", 5) == 1 then
							end	
							if costruzioneforzata("hgn_artillerysentinel",     3, playerIndex, "Sentinel",               4000, 10, 1, 0, 2, "hgn_mothership", "experience", 10) == 1 then
							elseif costruzioneforzata("hgn_rts",               2, playerIndex, "RTS",                    2000, 5,  0, 0, 1, "hgn_mothership", "experience", 8) == 1 then        
							elseif Player_HasResearch(playerIndex, "Sentinel") == 0 then
								if costruzioneforzata("hgn_missileturret",       2, playerIndex, "PlatformMissileWeapons", 1000, 4,  0, 0, 3, "hgn_mothership", "experience", 5) == 1 then           
								elseif costruzioneforzata("hgn_ionturret",       2, playerIndex, "PlatformIonWeapons1",    1000, 3,  0, 0, 3, "hgn_mothership", "experience", 4) == 1 then   
								elseif costruzioneforzata("hgn_pulsarturret",    1, playerIndex, "PlatformIonWeapons",     1000, 2,  0, 0, 3, "hgn_mothership", "experience", 3) == 1 then   
								elseif costruzioneforzata("hgn_gunturret",       1, playerIndex, "isai",                   1000, 1,  0, 0, 3, "hgn_mothership", "experience", 2) == 1 then
								end
							end		
							if costruzioneforzata("hgn_nuclearbomb",           3, playerIndex, "instanttech1",           6000, 0,  0, 0, 0,  "hgn_commandfortress", "Generic 1", 20) == 1 then 
							end
							---ricerca tech forzata
							if researchforzata("PlatformIonWeapons",          playerIndex, "isai", 1000, 0,   6) == 1 then
							elseif researchforzata("PlatformIonWeapons1",     playerIndex, "isai", 1000, 0,   9) == 1 then
							elseif researchforzata("PlatformMissileWeapons",  playerIndex, "isai", 1000, 0,   12) == 1 then
							elseif researchforzata("RTS",                     playerIndex, "isai", 2000, 0,   15) == 1 then
							elseif researchforzata("Sentinel",                playerIndex, "isai", 4000, 0,   18) == 1 then
							--
							elseif researchforzata("DestroyerTech",           playerIndex, "isai", 1000, 0,   13) == 1 then   
							elseif researchforzata("AdvDestroyerTech",        playerIndex, "isai", 1500, 0,   16) == 1 then 
							elseif researchforzata("CruiserTech",             playerIndex, "isai", 2500, 0,   19) == 1 then 
							elseif researchforzata("BattlecruiserIonWeapons", playerIndex, "isai", 3000, 150, 22) == 1 then 
							elseif researchforzata("VortexTech",              playerIndex, "isai", 3500, 150, 25) == 1 then 					
							elseif researchforzata("BattleshipTech",          playerIndex, "isai", 4000, 240, 28) == 1 then 					
							end				
							---ricerca forzata
							if researchforzata    ("crewcellcargo1",            playerIndex, "isai", 200,  0, 1) == 1 then   
							elseif researchforzata("crewcellcargo2",            playerIndex, "isai", 400,  0, 1) == 1 then
							elseif researchforzata("crewcellcargo3",            playerIndex, "isai", 600,  0, 1) == 1 then		
							elseif researchforzata("ImprovedTorpedoMothership", playerIndex, "isai", 1000, 0, 1) == 1 then
							elseif researchforzata("hic1",                      playerIndex, "isai", 2000, 0, 10) == 1 then
							elseif researchforzata("hic2",                      playerIndex, "isai", 3000, 0, 15) == 1 then		
							--						
							elseif researchforzata("NBDetonationPower",         playerIndex, "isai", 4000, 0, 20) == 1 then
							elseif researchforzata("NBDetonationRange",         playerIndex, "isai", 4000, 0, 20) == 1 then
							elseif researchforzata("NBDetonationPower1",        playerIndex, "isai", 5000, 0, 30) == 1 then
							elseif researchforzata("NBDetonationRange1",        playerIndex, "isai", 5000, 0, 30) == 1 then
							elseif researchforzata("NBDetonationPower2",        playerIndex, "isai", 6000, 0, 40) == 1 then						
							elseif researchforzata("NBDetonationRange2",        playerIndex, "isai", 6000, 0, 40) == 1 then						
							end						
							--elimina unit? superflue
							if year > 10 then
								if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_artillerysentinel") >= 2 then
									SobGroup_TakeDamage("hgn_gunturret"..playerIndex, 1)
									SobGroup_TakeDamage("hgn_rapidfiregunturret"..playerIndex, 1)
									SobGroup_TakeDamage("hgn_pulsarturret"..playerIndex, 1)
									SobGroup_TakeDamage("hgn_ionturret"..playerIndex, 1)
									SobGroup_TakeDamage("hgn_missileturret"..playerIndex, 1)
                  SobGroup_TakeDamage("hgn_massiveturret"..playerIndex, 1)									
								end								
								if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_carrier") > 0 or
									 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battlecarrier") > 0 then
									SobGroup_TakeDamage("hgn_lightcarrier"..playerIndex, 1)													
								end	 						
							end
							--Docking MS -> SY
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_mothership") > 0 and 
							  SobGroup_HealthPercentage("hgn_mothership"..playerIndex) > 0 and               
								year >= (25/gamespeedprogression-(CPULODvalueList[playerIndexList]*3)) and
								Player_GetRU(playerIndex) > (3500-(CPULODvalueList[playerIndexList]*300)) and
								SobGroup_GetHardPointHealth("hgn_researchstation"..playerIndex, "Generic 3") > 0 and
								SobGroup_GetHardPointHealth("hgn_mothership"..playerIndex, "Weapon 1") > 0 and
								SobGroup_GetHardPointHealth("hgn_mothership"..playerIndex, "Weapon 2") > 0 and
								SobGroup_GetHardPointHealth("hgn_mothership"..playerIndex, "Weapon 3") > 0 and
								SobGroup_GetHardPointHealth("hgn_mothership"..playerIndex, "Weapon 7") > 0 and
								SobGroup_UnderAttack("hgn_mothership"..playerIndex) == 0 and
								SobGroup_GetHardPointHealth("hgn_mothership"..playerIndex, "poh2") == 0 then              
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "poh2")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "HGN_SCC_6xAC_Turret_cf1")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "HGN_SCC_6xAC_Turret_cf2")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "HGN_SCC_6xAC_Turret_cf3")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "HGN_SCC_6xAC_Turret_cf4")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_ms_nuclear")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_ms_armor_bottom")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_ms_armor_top")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_ms_armor_bridge")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_ms_armor_engine")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_ms_armor_plates")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_cf_ionbeamturret2")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_cf_ionbeamturret3")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_cf_ionbeamturret4")
								SobGroup_CreateSubSystem("hgn_mothership"..playerIndex, "hgn_cf_ionbeamturret5")
								Ping_LabelVisible(Ping_AddSobGroup("Adv. Pride of Hiigara (Battle Asset)", "name", "hgn_mothership"..playerIndex), 1)              
							end    
							
	--Vaygr------------------------------------------------------------------------------------------------------       
			 
						else
						  --RC	
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_resourcecollector") < 4 then
								if costruzioneforzata("vgr_resourcecollector", 1, playerIndex, "isai", 500, 0, 0, 0, 4, "vgr_mothership", "experience",2) == 1 then
								end	
							end
							--Fleet
              if costruzioneforzata("vgr_cruiser", 		         			3, playerIndex, "CruiserTech", 					 2000, 20, 2, 0,   2, "vgr_mothership", "Production 4", 11) == 1 then   													
							elseif costruzioneforzata("vgr_pulsedestroyer", 		  2, playerIndex, "PulseDestroyerGuns",    1500, 15, 1, 0,   3, "vgr_mothership", "Production 4", 10) == 1 then       						
							elseif costruzioneforzata("vgr_destroyer", 		        2, playerIndex, "DestroyerGuns",         1000, 15, 1, 0,   3, "vgr_mothership", "Production 4", 9) == 1 then
							elseif costruzioneforzata("Vgr_AdvAssaultFrigate",    1, playerIndex, "MultiCannonTech",       750, 8 , 0, 0,   5, "vgr_mothership", "Production 3", 7) == 1 then						
							elseif costruzioneforzata("vgr_striker",              1, playerIndex, "Striker",               750, 9,  0, 0,   5, "vgr_mothership", "Production 2", 7) == 1 then   
              elseif costruzioneforzata("Vgr_EliteFighter",         1, playerIndex, "MultiroleTech",         500, 5,  0, 0,   5, "vgr_mothership", "Production 1", 5) == 1 then							
							end
							if costruzioneforzata("vgr_alkhalid", 	    	        3, playerIndex, "BattleshipTech",        3000, 35, 3, 240, 2, "vgr_shipyard", "Production 5", 13) == 1 then
							elseif costruzioneforzata("vgr_missilebattlecruiser", 3, playerIndex, "MissileBattlecruiserIonWeapons",  2500,  25, 3, 150, 2, "vgr_shipyard", "Production 5", 12) == 1 then	
							elseif costruzioneforzata("vgr_cruiser", 		     			3, playerIndex, "CruiserTech", 					 2000, 20, 2, 0,   2, "vgr_shipyard", "Production 4", 11) == 1 then   													
							elseif costruzioneforzata("vgr_pulsedestroyer", 		  2, playerIndex, "PulseDestroyerGuns",    1500, 15, 1, 0,   3, "vgr_shipyard", "Production 4", 10) == 1 then       						
							elseif costruzioneforzata("vgr_destroyer", 		        2, playerIndex, "DestroyerGuns",         1000, 15, 1, 0,   3, "vgr_shipyard", "Production 4", 9) == 1 then
							elseif costruzioneforzata("Vgr_AdvAssaultFrigate",    1, playerIndex, "MultiCannonTech",       750, 8 , 0, 0,   5, "vgr_shipyard", "Production 3", 7) == 1 then						
							elseif costruzioneforzata("vgr_striker",              1, playerIndex, "Striker",               750, 9,  0, 0,   5, "vgr_shipyard", "Production 2", 7) == 1 then   
              elseif costruzioneforzata("Vgr_EliteFighter",         1, playerIndex, "MultiroleTech",         500, 5,  0, 0,   5, "vgr_shipyard", "Production 1", 5) == 1 then								
							end							
							if costruzioneforzata("vgr_weaponplatform_missile",   2, playerIndex, "PlatformHeavyMissiles", 1000, 2, 0, 0, 3, "vgr_mothership", "experience", 4) == 1 then               
							elseif costruzioneforzata("vgr_weaponplatform_gun",   1, playerIndex, "isai",                  1000, 1, 0, 0, 3, "vgr_mothership", "experience", 3) == 1 then 
              elseif costruzioneforzata("vgr_weaponplatform_lance", 1, playerIndex, "isai",                  1000, 1, 0, 0, 3, "vgr_mothership", "experience", 2) == 1 then   							
							end
							--pod controller/mine/missile
							if SobGroup_Count("vgr_mothership"..playerIndex) >= 1 and year >= 10/gamespeedprogression then
								if (SobGroup_FillProximitySobGroup ("temp", "minetargetenemies"..playerIndex, "vgr_mothership"..playerIndex, 5500) == 1) and						     
								 (SobGroup_IsDoingAbility("vgr_mothership"..playerIndex, abilityList[2]) == 1) then
									if costruzioneforzata("vgr_boa", 2, playerIndex, "canbuildminems", 3000, 0, 0, 0, 6, "vgr_mothership", "experience",12) == 1 then
									end 
									if SobGroup_Count("temp") >= 3 and
										 Player_GetRU(playerIndex) > 4500 and                 
										 SobGroup_GetHardPointHealth("vgr_mothership"..playerIndex, "pl") == 0 then
										SobGroup_CreateSubSystem("vgr_mothership"..playerIndex, "vgr_pl")
									end								
								elseif SobGroup_FillProximitySobGroup ("temp", "minetargetenemies"..playerIndex, "vgr_mothership"..playerIndex, 20000) == 1 then
									if costruzioneforzata("vgr_cruse", 2, playerIndex, "canbuildmissilems", 3000, 0, 0, 0, 6, "vgr_mothership", "experience",12) == 1 then
									end	               
								end 		
							end
							--ricerca tech forzata
							if researchforzata("PlatformHeavyMissiles",       playerIndex, "isai", 1000, 0,   9) == 1 then
							--
							elseif researchforzata("DestroyerGuns",           playerIndex, "isai", 1000, 0,   13) == 1 then   
							elseif researchforzata("PulseDestroyerGuns",      playerIndex, "isai", 1500, 0,   16) == 1 then 
							elseif researchforzata("CruiserTech",             playerIndex, "isai", 2000, 30,  19) == 1 then						
							elseif researchforzata("BattlecruiserIonWeapons", playerIndex, "isai", 2500, 150, 22) == 1 then
							elseif researchforzata("BattleshipTech",          playerIndex, "isai", 3000, 240, 25) == 1 then
							elseif researchforzata("DreadnaughtTech",         playerIndex, "isai", 3500, 240, 28) == 1 then		
							elseif researchforzata("CommandFortressTech",     playerIndex, "isai", 4000, 350, 31) == 1 then								
							end	
							--vgr MS
							if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mothership") > 0 and
    						SobGroup_HealthPercentage("vgr_mothership"..playerIndex) > 0 then  
								if year >= (28/gamespeedprogression-(CPULODvalueList[playerIndexList]*3)) and
									Player_GetRU(playerIndex) > (4000-(CPULODvalueList[playerIndexList]*300)) and
									SobGroup_GetHardPointHealth("vgr_mothership"..playerIndex, "c") == 0 then              
									SobGroup_CreateSubSystem("vgr_mothership"..playerIndex, "vgr_ms_plasma")            
								elseif year >= (25/gamespeedprogression-(CPULODvalueList[playerIndexList]*3)) and
									Player_GetRU(playerIndex) > (3500-(CPULODvalueList[playerIndexList]*300)) and
									SobGroup_GetHardPointHealth("vgr_mothership"..playerIndex, "Weapon 1") == 0 then              
									SobGroup_CreateSubSystem("vgr_mothership"..playerIndex, "vgr_qje_quadflechette_stbdF")
								elseif year >= (22/gamespeedprogression-(CPULODvalueList[playerIndexList]*3)) and
									Player_GetRU(playerIndex) > (3000-(CPULODvalueList[playerIndexList]*300)) and
									SobGroup_GetHardPointHealth("vgr_mothership"..playerIndex, "armor") == 0 then              
									SobGroup_CreateSubSystem("vgr_mothership"..playerIndex, "vgr_ms_armor")
								end	
							end                   						
						end   
						
	-------both races upgrades---------------------------------------------------------------------------------------

						--ricerca tech forzata
						if researchforzata    ("CapitalRetire",                      		playerIndex, "isai", 100,    0, 1) == 1 then   
						elseif researchforzata("HyperspaceCostUpgrade1",             		playerIndex, "isai", 500,    0, 5) == 1 then 
						elseif researchforzata("HyperspaceCostUpgrade2",             		playerIndex, "isai", 1000,   0, 10) == 1 then						
						elseif researchforzata("maintenance1",                       		playerIndex, "isai", 500,    0, 5) == 1 then
						elseif researchforzata("maintenance2",                       		playerIndex, "isai", 1000,   0, 10) == 1 then
						elseif researchforzata("maintenance3",                       		playerIndex, "isai", 1500,   0, 15) == 1 then		
						elseif researchforzata("ResourceCollectorRURATEUpgrade1",    		playerIndex, "isai", 500,    0, 1) == 1 then		
						elseif researchforzata("ResourceCollectorRUCAPUpgrade1",     		playerIndex, "isai", 500,    0, 1) == 1 then		
						elseif researchforzata("ResourceCollectorRUDROPOFFUpgrade1", 		playerIndex, "isai", 500,    0, 1) == 1 then		
						elseif researchforzata("UtilitySpeedUpgrade1",               		playerIndex, "isai", 500,    0, 1) == 1 then		
						elseif researchforzata("resourcecollectorextraction1",       		playerIndex, "isai", 500,    0, 1) == 1 then		
						--h1
						elseif researchforzata("FighterHealthUpgrade1",              		playerIndex, "isai", 500,    0, 4) == 1 then	
						elseif researchforzata("CorvetteHealthUpgrade1",             		playerIndex, "isai", 750,    0, 5) == 1 then		
						elseif researchforzata("FrigateHealthUpgrade1",   					 		playerIndex, "isai", 1000,   0, 6) == 1 then		
						elseif researchforzata("ArmedCapitalHealthUpgrade1",         		playerIndex, "isai", 1250,   0, 7) == 1 then	
						elseif researchforzata("SuperArmedCapitalHealthUpgrade1",    		playerIndex, "isai", 1250,   0, 8) == 1 then
						elseif researchforzata("CapitalHealthUpgrade1",              		playerIndex, "isai", 1500,   0, 9) == 1 then								
						--h2
						elseif researchforzata("FighterHealthUpgrade2",              		playerIndex, "isai", 500*2,  0, 10) == 1 then	
						elseif researchforzata("CorvetteHealthUpgrade2",             		playerIndex, "isai", 750*2,  0, 11) == 1 then		
						elseif researchforzata("FrigateHealthUpgrade2",   					 		playerIndex, "isai", 1000*2, 0, 12) == 1 then		
						elseif researchforzata("ArmedCapitalHealthUpgrade2",         		playerIndex, "isai", 1250*2, 0, 13) == 1 then	
						elseif researchforzata("SuperArmedCapitalHealthUpgrade2",    		playerIndex, "isai", 1250*2, 0, 14) == 1 then	
						elseif researchforzata("CapitalHealthUpgrade2",              		playerIndex, "isai", 1500*2, 0, 15) == 1 then			
						--w1
						elseif researchforzata("FighterWeaponDamageUpgrade1",        		playerIndex, "isai", 500,  0, 16) == 1 then	
						elseif researchforzata("CorvetteWeaponDamageUpgrade1",       		playerIndex, "isai", 750,  0, 17) == 1 then		
						elseif researchforzata("FrigateWeaponDamageUpgrade1",   		 		playerIndex, "isai", 1000, 0, 18) == 1 then		
						elseif researchforzata("ArmedCapitalWeaponDamageUpgrade1",   		playerIndex, "isai", 1250, 0, 19) == 1 then	
						elseif researchforzata("SuperArmedCapitalWeaponDamageUpgrade1", playerIndex, "isai", 1250, 0, 20) == 1 then	
						elseif researchforzata("CapitalWeaponDamageUpgrade1",        		playerIndex, "isai", 1500, 0, 21) == 1 then								
						--h3
						elseif researchforzata("FighterHealthUpgrade3",             		playerIndex, "isai", 500*3,  0, 22) == 1 then	
						elseif researchforzata("CorvetteHealthUpgrade3",             		playerIndex, "isai", 750*3,  0, 23) == 1 then		
						elseif researchforzata("FrigateHealthUpgrade3",   					 		playerIndex, "isai", 1000*3, 0, 24) == 1 then		
						elseif researchforzata("ArmedCapitalHealthUpgrade3",         		playerIndex, "isai", 1250*3, 0, 25) == 1 then	
						elseif researchforzata("SuperArmedCapitalHealthUpgrade3",    		playerIndex, "isai", 1250*3, 0, 26) == 1 then
						elseif researchforzata("CapitalHealthUpgrade3",              		playerIndex, "isai", 1500*3, 0, 27) == 1 then	
						--w2
						elseif researchforzata("FighterWeaponDamageUpgrade2",        		playerIndex, "isai", 500*2,  0, 28) == 1 then	
						elseif researchforzata("CorvetteWeaponDamageUpgrade2",       		playerIndex, "isai", 750*2,  0, 29) == 1 then		
						elseif researchforzata("FrigateWeaponDamageUpgrade2",   		 		playerIndex, "isai", 1000*2, 0, 30) == 1 then		
						elseif researchforzata("ArmedCapitalWeaponDamageUpgrade2",   		playerIndex, "isai", 1250*2, 0, 31) == 1 then	
						elseif researchforzata("SuperArmedCapitalWeaponDamageUpgrade2",	playerIndex, "isai", 1250*2, 0, 32) == 1 then
						elseif researchforzata("CapitalWeaponDamageUpgrade2",        		playerIndex, "isai", 1500*2, 0, 33) == 1 then	
						--s1
						elseif researchforzata("FighterSpeedUpgrade1",               		playerIndex, "isai", 500,  0, 34) == 1 then	
						elseif researchforzata("CorvetteSpeedUpgrade1",              		playerIndex, "isai", 750,  0, 35) == 1 then		
						elseif researchforzata("FrigateSpeedUpgrade1",   		         		playerIndex, "isai", 1000, 0, 36) == 1 then		
						elseif researchforzata("ArmedCapitalSpeedUpgrade1",          		playerIndex, "isai", 1250, 0, 37) == 1 then	
						elseif researchforzata("SuperArmedCapitalSpeedUpgrade1",     		playerIndex, "isai", 1250, 0, 38) == 1 then	
						elseif researchforzata("CapitalSpeedUpgrade1",               		playerIndex, "isai", 1500, 0, 39) == 1 then			
						--w3	
						elseif researchforzata("FighterWeaponDamageUpgrade3",        		playerIndex, "isai", 500*3,  0, 40) == 1 then	
						elseif researchforzata("CorvetteWeaponDamageUpgrade3",       		playerIndex, "isai", 750*3,  0, 41) == 1 then		
						elseif researchforzata("FrigateWeaponDamageUpgrade3",   		 		playerIndex, "isai", 1000*3, 0, 42) == 1 then		
						elseif researchforzata("ArmedCapitalWeaponDamageUpgrade3",   		playerIndex, "isai", 1250*3, 0, 43) == 1 then	
						elseif researchforzata("SuperArmedCapitalWeaponDamageUpgrade3",	playerIndex, "isai", 1250*3, 0, 44) == 1 then
						elseif researchforzata("CapitalWeaponDamageUpgrade3",        		playerIndex, "isai", 1500*3, 0, 45) == 1 then	
						--s2
						elseif researchforzata("FighterSpeedUpgrade2",               		playerIndex, "isai", 500*2,  0, 46) == 1 then	
						elseif researchforzata("CorvetteSpeedUpgrade2",              		playerIndex, "isai", 750*2,  0, 47) == 1 then		
						elseif researchforzata("FrigateSpeedUpgrade2",   		         		playerIndex, "isai", 1000*2, 0, 48) == 1 then		
						elseif researchforzata("ArmedCapitalSpeedUpgrade2",          		playerIndex, "isai", 1250*2, 0, 49) == 1 then	
						elseif researchforzata("SuperArmedCapitalSpeedUpgrade2",     		playerIndex, "isai", 1250*2, 0, 50) == 1 then	
						elseif researchforzata("CapitalSpeedUpgrade2",               		playerIndex, "isai", 1500*2, 0, 51) == 1 then			     					
						end					
						--EVO
						if SobGroup_Empty("star_sol") == 0 then
							if Player_CanResearch(playerIndex, "CapitalSpeedUpgrade3" ) == 1 then
								Player_GrantResearchOption(playerIndex, "CapitalSpeedUpgrade3" )
							elseif Player_CanResearch(playerIndex, "CapitalSpeedUpgrade2" ) == 1 then
								Player_GrantResearchOption(playerIndex, "CapitalSpeedUpgrade2" )
							elseif Player_CanResearch(playerIndex, "CapitalSpeedUpgrade1" ) == 1 then
								Player_GrantResearchOption(playerIndex, "CapitalSpeedUpgrade1" )
							end							
							if Player_CanResearch(playerIndex, "HyperspaceCostUpgrade3" ) == 1 then
								Player_GrantResearchOption(playerIndex, "HyperspaceCostUpgrade3" )
							elseif Player_CanResearch(playerIndex, "HyperspaceCostUpgrade2" ) == 1 then
								Player_GrantResearchOption(playerIndex, "HyperspaceCostUpgrade2" )
							elseif Player_CanResearch(playerIndex, "HyperspaceCostUpgrade1" ) == 1 then
								Player_GrantResearchOption(playerIndex, "HyperspaceCostUpgrade1" )
							end								
						end	
					else	
					  --textList[CPULODvalueList[playerIndexList]+1] = 0	
					end 
				end	
      end  
    end  
    playerIndex = playerIndex + 1
  end  
	--aggiorna tempodicostruzione x costruzioneforzata  
  for i = 2,4,1 do
    if tempodicostruzioneList[i] >= i then
      tempodicostruzioneList[i] = 1
    else  
      tempodicostruzioneList[i] = tempodicostruzioneList[i] + 1
    end  
  end  
	--level of difficulty
  tempodicostruzioneList[5] = tempodicostruzioneList[5] - 1
  if tempodicostruzioneList[5] < 0 then
		tempodicostruzioneList[5] = 3
  end				  			
end

---forced construction--------------------

function costruzioneforzata(type, tempodicostruzione, giocatore, research, money, pilot, officer, rank, maxn, builder, module, gameprogression)
  if ((tempodicostruzioneList[tempodicostruzione] == 1) and
  (Player_HasResearch(giocatore, research) == 1) and
  (Player_GetRU(giocatore) > money) and
  (NeededPilots[giocatore+1] > (pilot*1.75)) and
  (NeededOfficers[giocatore+1] > (officer*1.5)) and
  (honorList[giocatore+1] >= rank) and
  (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(giocatore, type) < (maxn + (CPULODvalueList[giocatore+1]/1.5))) and
  (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(giocatore, builder) > 0) and
  (SobGroup_GetHardPointHealth(builder .. tostring(giocatore), module) > 0) and
	year > gameprogression/gamespeedprogression) then
    if SobGroup_Empty(builder .. tostring(giocatore)) == 0 then
      SobGroup_CreateShip(builder .. tostring(giocatore), type)      		
			--local sup = gameprogression/gamespeedprogression
      --Subtitle_Message("AI: Built "..type .. " " .. sup, 7)			
      return 1
    end
  end  
end

---forced research--------------------

function researchforzata(type, giocatore, research, money, rank, gameprogression)
  if ((Player_HasResearch(giocatore, research) == 1 and Player_HasResearch(giocatore, type) == 0 and Player_CanResearch(giocatore, type) == 1) and
  (Player_GetRU(giocatore) > money) and
  (honorList[giocatore+1] >= rank) and    
	year > gameprogression/gamespeedprogression+(7-CPULODvalueList[giocatore+1]*2)) then
    Player_GrantResearchOption(giocatore, type)
		--local sup = gameprogression/gamespeedprogression
    --Subtitle_Message("AI: Researched "..type .. " " .. sup, 7)			
		return 1    
  end  
end

---Juggernaut-----------------------------

function aijuggernaught()  
  if nj == 0 then
    return nil
  end
  if njCounter == 0 then   
    for i = 1,6,1 do                       
      alternatejug[i] = 0
    end
  end       	          
	if Player_HasResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "isai" ) == 1 and SobGroup_Empty("splitjuggernaughts"..njCounter) == 0 then	         	
		--MOVE/KAMIKAZE		
	  if alternatejug[SobGroup_OwnedBy("splitjuggernaughts"..njCounter) + 1] == 0 then			                 							    						      				      
	    local distance = 1000
	    while SobGroup_Count("targetjuggernaughts"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter)) == 0 and distance < 40000 do
	      if SobGroup_FillProximitySobGroup ("targetjuggernaughts"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "bigcapitalenemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, distance) == 1 then  
	        if distance <= 2000 then							          
	          SobGroup_Kamikaze("splitjuggernaughts"..njCounter, "targetjuggernaughts"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter))
	        else   	          
	          SobGroup_MoveToSobGroup("splitjuggernaughts"..njCounter, "targetjuggernaughts"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter))
	          SobGroup_Attack(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, "targetjuggernaughts"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter))
	        end  
	        break
	      end      
	      distance = distance + 1000
	    end  
	    SobGroup_Clear("targetjuggernaughts"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter))
	    alternatejug[SobGroup_OwnedBy("splitjuggernaughts"..njCounter) + 1] = 1
	  else
	    alternatejug[SobGroup_OwnedBy("splitjuggernaughts"..njCounter) + 1] = 0  		
	  end   
		--PRIORITA'
    if SobGroup_FillProximitySobGroup("temp", "massshieldenemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 1525) == 1 then         
      SobGroup_Kamikaze("splitjuggernaughts"..njCounter, "temp")      
    end   	  
		--EXPLODE					      			            			    
	  local explode = 0					      
	  local exploderange = 1					      
	  if Player_HasResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "DetonationPower2" ) == 1 then
	    exploderange = 1.75
	  elseif Player_HasResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "DetonationPower1" ) == 1 then
	    exploderange = 1.5
	  elseif Player_HasResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "DetonationPower" ) == 1 then
	    exploderange = 1.25
	  end	             				          
		--fighter									      
	  SobGroup_FillProximitySobGroup ("proximityenemiesjuggernaughts", "fighterenemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 2750 * exploderange) 
	  SobGroup_FillProximitySobGroup ("proximityalliesjuggernaughts", "fighterallies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 2750 * exploderange)		  			      					      
	  if SobGroup_Count("proximityenemiesjuggernaughts") > 32 then
	    explode = explode + 4
	  elseif SobGroup_Count("proximityenemiesjuggernaughts") > 27 then 
	    explode = explode + 2 
	  elseif SobGroup_Count("proximityenemiesjuggernaughts") >= 22 then 
	    explode = explode + 1   
	  end	
	  if SobGroup_Count("proximityalliesjuggernaughts") > 32 then
	    explode = explode - 3
	  elseif SobGroup_Count("proximityalliesjuggernaughts") > 27 then 
	    explode = explode - 2 
	  elseif SobGroup_Count("proximityalliesjuggernaughts") >= 22 then 
	    explode = explode - 1   
	  end	
		--corvette                      
	  SobGroup_FillProximitySobGroup ("proximityenemiesjuggernaughts", "corvetteenemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 2250 * exploderange) 
	  SobGroup_FillProximitySobGroup ("proximityalliesjuggernaughts", "corvetteallies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 2250 * exploderange)		                       
	  if SobGroup_Count("proximityenemiesjuggernaughts") > 20 then
	    explode = explode + 4
	  elseif SobGroup_Count("proximityenemiesjuggernaughts") > 17 then 
	    explode = explode + 2 
	  elseif SobGroup_Count("proximityenemiesjuggernaughts") >= 14 then 
	    explode = explode + 1   
	  end	   
	  if SobGroup_Count("proximityalliesjuggernaughts") > 20 then
	    explode = explode - 3
	  elseif SobGroup_Count("proximityalliesjuggernaughts") > 17 then 
	    explode = explode - 2 
	  elseif SobGroup_Count("proximityalliesjuggernaughts") >= 14 then 
	    explode = explode - 1   
	  end	         
		--frigate/Utility             
	  SobGroup_FillProximitySobGroup ("proximityenemiesjuggernaughts", "frigateenemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 1750 * exploderange) 
	  SobGroup_FillProximitySobGroup ("proximityalliesjuggernaughts", "frigateallies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 1750 * exploderange)	                              
	  if SobGroup_Count("proximityenemiesjuggernaughts") > 6 then
	    explode = explode + 4
	  elseif SobGroup_Count("proximityenemiesjuggernaughts") > 5 then 
	    explode = explode + 2 
	  elseif SobGroup_Count("proximityenemiesjuggernaughts") >= 3 then 
	    explode = explode + 1   
	  end		
	  if SobGroup_Count("proximityalliesjuggernaughts") > 6 then
	    explode = explode - 3
	  elseif SobGroup_Count("proximityalliesjuggernaughts") > 5 then 
	    explode = explode - 2 
	  elseif SobGroup_Count("proximityalliesjuggernaughts") >= 3 then 
	    explode = explode - 1   
	  end		
	  if SobGroup_AreAnyOfTheseTypes("proximityenemiesjuggernaughts", "hgn_core") then
	    explode = explode + 3
	  end
	  if SobGroup_AreAnyOfTheseTypes("proximityalliesjuggernaughts", "hgn_core") then
	    explode = explode - 3
	  end            
		--Small Capital                  
	  SobGroup_FillProximitySobGroup ("proximityenemiesjuggernaughts", "smallcapitalenemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 1100 * exploderange) 
	  SobGroup_FillProximitySobGroup ("proximityalliesjuggernaughts", "smallcapitalallies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 1100 * exploderange)		                   
	  if SobGroup_Count("proximityenemiesjuggernaughts") > 2 then
	    explode = explode + 4
	  elseif SobGroup_Count("proximityenemiesjuggernaughts") > 1 then 
	    explode = explode + 2 
	  elseif SobGroup_Count("proximityenemiesjuggernaughts") > 0 then 
	    explode = explode + 1   
	  end	
	  if SobGroup_Count("proximityalliesjuggernaughts") > 3 then
	    explode = explode - 3
	  elseif SobGroup_Count("proximityalliesjuggernaughts") > 2 then 
	    explode = explode - 2 
	  elseif SobGroup_Count("proximityalliesjuggernaughts") > 1 then 
	    explode = explode - 1   
	  end	
		--Big Capital					                     
	  SobGroup_FillProximitySobGroup ("proximityenemiesjuggernaughts", "bigcapitalenemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 1150 * exploderange) 
	  SobGroup_FillProximitySobGroup ("proximityalliesjuggernaughts", "bigcapitalallies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 1150 * exploderange)		                   
	  if SobGroup_Count("proximityenemiesjuggernaughts") >= 1 then
	    explode = explode + 3					      
	  end	
	  if SobGroup_Count("proximityalliesjuggernaughts") >= 1 then
	    explode = explode - 1					      
	  end	
		--Vicino a Command Fortress
	  SobGroup_FillProximitySobGroup ("proximityenemiesjuggernaughts", "commandfortressenemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 2350) 	
	  if SobGroup_Count("proximityenemiesjuggernaughts") >= 1 then
	    explode = explode + 4                         			      
	  end		  
		--Vicino a Big Capital
	  SobGroup_FillProximitySobGroup ("proximityenemiesjuggernaughts", "bigcapitalenemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 1000) 	
	  if SobGroup_Count("proximityenemiesjuggernaughts") >= 1 then
	    explode = explode + 4                         			      
	  end	
		--Vicino a scudo
  	SobGroup_FillProximitySobGroup ("proximityenemiesjuggernaughts", "massshieldenemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 2000) 	
	  if SobGroup_Count("proximityenemiesjuggernaughts") >= 1 then
	    explode = explode + 4                         			      
	  end	  
		--Explode						      							      			      
	  if explode >= 3 then
	    SobGroup_TakeDamage("splitjuggernaughts"..njCounter, 1)
			--RESEARCH						        
      juggernaughtList[SobGroup_OwnedBy("splitjuggernaughts"..njCounter)+1] = juggernaughtList[SobGroup_OwnedBy("splitjuggernaughts"..njCounter)+1] + 1 			        
      if (juggernaughtList[SobGroup_OwnedBy("splitjuggernaughts"..njCounter)+1] >= (4 - CPULODvalueList[SobGroup_OwnedBy("splitjuggernaughts"..njCounter)+1])) and (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "hgn_juggernaught") > 0) then
        if Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "DetonationPower" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "DetonationPower" ) 
        elseif Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "DetonationRange" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "DetonationRange" ) 
        elseif Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "JuggernaughtMAXHEALTHUpgrade1" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "JuggernaughtMAXHEALTHUpgrade1" ) 
        end 
      end   
      if (juggernaughtList[SobGroup_OwnedBy("splitjuggernaughts"..njCounter)+1] >= (5 - CPULODvalueList[SobGroup_OwnedBy("splitjuggernaughts"..njCounter)+1])) and (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "hgn_juggernaught") > 0) and (Player_GetRU(SobGroup_OwnedBy("splitjuggernaughts"..njCounter)) >= 2500) then
        if Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "DetonationPower1" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "DetonationPower1" )
        elseif Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "DetonationRange1" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "DetonationRange1" ) 
        elseif Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "JuggernaughtMAXHEALTHUpgrade2" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "JuggernaughtMAXHEALTHUpgrade2" ) 
        elseif Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "JuggernaughtMAXSPEEDUpgrade1" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "JuggernaughtMAXSPEEDUpgrade1" )   
        end  
      end  
      if (juggernaughtList[SobGroup_OwnedBy("splitjuggernaughts"..njCounter)+1] >= (7 - CPULODvalueList[SobGroup_OwnedBy("splitjuggernaughts"..njCounter)+1])) and (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "hgn_juggernaught") > 1) and (Player_GetRU(SobGroup_OwnedBy("splitjuggernaughts"..njCounter)) >= 5000) then
        if Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "DetonationPower2" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "DetonationPower2" )
        elseif Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "DetonationRange2" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "DetonationRange2" ) 
        elseif Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "JuggernaughtMAXHEALTHUpgrade3" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "JuggernaughtMAXHEALTHUpgrade3" ) 
        elseif Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "JuggernaughtMAXSPEEDUpgrade2" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "JuggernaughtMAXSPEEDUpgrade2" )  
        elseif Player_CanResearch(SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "JuggernaughtDRIVEUpgrade1" ) == 1 then
          Player_Research( SobGroup_OwnedBy("splitjuggernaughts"..njCounter) , "JuggernaughtDRIVEUpgrade1" )        
        end  
      end    	    
		end 
	end
	if SobGroup_Empty("splitjuggernaughts"..njCounter) == 0 then			
		--se jug vicino a target colpo di reni per attacco speed x 4, lo fa anche x i giocatori non AI   
	  if SobGroup_FillProximitySobGroup ("temp", "enemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter,1050) == 1 then
	    if SobGroup_IsDoingAbility("splitjuggernaughts"..njCounter, abilityList[2]) == 1 then 	
			  if SobGroup_AreAnyFromTheseAttackFamilies("temp", "Mothership, BigCapitalShip, SmallCapitalShip") == 1 then
			    spd = SobGroup_HealthPercentage("splitjuggernaughts"..njCounter)	
			    if spd > 0 then		                 
			      SobGroup_SetMaxSpeedMultiplier("splitjuggernaughts"..njCounter, (4.45*spd))	
			      FX_StartEvent("splitjuggernaughts"..njCounter, "urlo")	  
			    end    			     					      
			  end	 
			end 
		else
		  SobGroup_SetMaxSpeedMultiplier("splitjuggernaughts"..njCounter, 1) 	  
		end		
		--se vicinissimo esplode		
		if SobGroup_FillProximitySobGroup ("temp", "enemies"..SobGroup_OwnedBy("splitjuggernaughts"..njCounter), "splitjuggernaughts"..njCounter, 300) == 1 then	    
		  if SobGroup_AreAnyFromTheseAttackFamilies("temp", "Mothership, BigCapitalShip, SmallCapitalShip") == 1 then			                 
		    SobGroup_TakeDamage("splitjuggernaughts"..njCounter, 1)			     					      
		  end	 			 		
		end			
	end	
	njCounter = njCounter + 1
  if njCounter >= nj then
    njCounter = 0
  end   
  Rule_Remove("aijuggernaught")	
	Rule_AddInterval("aijuggernaught", (10.6789/nj))
end