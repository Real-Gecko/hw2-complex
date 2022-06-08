function populationinit()  
  local playerIndex = 0                           
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then         
				--Inizializza le unità, blocca le.1      
        if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then            
          Player_RestrictBuildOption(playerIndex, "hgn_orders_parade_disable")          
          Player_RestrictBuildOption(playerIndex, "Hgn_MothershipCannon2") 	   
	        Player_RestrictBuildOption(playerIndex, "Hgn_MothershipCannon3") 	   
	        Player_RestrictBuildOption(playerIndex, "Hgn_MothershipCannon4") 	 	        
	        Player_RestrictBuildOption(playerIndex, "hgn_gunturret1") 	
					Player_RestrictBuildOption(playerIndex, "hgn_rapidfiregunturret1") 	
	        Player_RestrictBuildOption(playerIndex, "hgn_defensefieldturret1") 	        
	        Player_RestrictBuildOption(playerIndex, "hgn_pulsarturret1") 	       
	        Player_RestrictBuildOption(playerIndex, "hgn_resourcecollector1") 
          Player_RestrictBuildOption(playerIndex, "hgn_salvagecollector1") 						
	        Player_RestrictBuildOption(playerIndex, "hgn_container1") 						
	        Player_RestrictBuildOption(playerIndex, "hgn_transportcell1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_scout1") 	
					Player_RestrictBuildOption(playerIndex, "hgn_empcorvette1") 	
	        Player_RestrictBuildOption(playerIndex, "hgn_minelayercorvette1") 	       
	        Player_RestrictBuildOption(playerIndex, "hgn_ionturret1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_missileturret1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_rts1")
	        Player_RestrictBuildOption(playerIndex, "hgn_artillerysentinel1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_resourcecontroller1") 	         
	        Player_RestrictBuildOption(playerIndex, "hgn_interceptor1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_attackbomber1") 		        
	        Player_RestrictBuildOption(playerIndex, "hgn_defender1") 	       
	        Player_RestrictBuildOption(playerIndex, "hgn_lbomber1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_railgunfighter1") 	         
	        Player_RestrictBuildOption(playerIndex, "hgn_hft1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_attackbomberheavy1") 	      	              
	        Player_RestrictBuildOption(playerIndex, "hgn_assaultcorvette1") 	
	        Player_RestrictBuildOption(playerIndex, "hgn_pulsarcorvette1") 	       
	        Player_RestrictBuildOption(playerIndex, "hgn_assaultfrigate1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_torpedofrigate1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_lrms1") 	       
	        Player_RestrictBuildOption(playerIndex, "hgn_marinefrigate1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_defensefieldfrigate1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_ioncannonfrigate1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_cth1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_cthion1")    	         
          Player_RestrictBuildOption(playerIndex, "hgn_bombervette1")	        
	        Player_RestrictBuildOption(playerIndex, "hgn_tulwar1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_multiguncorvette1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_destroyer1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_sweeperdestroyer1") 	        
	        Player_RestrictBuildOption(playerIndex, "hgn_missiledestroyer1")  
	        Player_RestrictBuildOption(playerIndex, "hgn_iondestroyer1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_advdestroyer1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_artillerydestroyer1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_cruisera1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_cruiserb1") 		        
	        Player_RestrictBuildOption(playerIndex, "hgn_tanker1") 	
					Player_RestrictBuildOption(playerIndex, "hgn_lighttanker1") 	
          Player_RestrictBuildOption(playerIndex, "hgn_smasher1") 	  					
	        Player_RestrictBuildOption(playerIndex, "hgn_juggernaught1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_researchstation1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_power1") 
          Player_RestrictBuildOption(playerIndex, "hgn_aditional_core1")
          Player_RestrictBuildOption(playerIndex, "hgn_plasma_inhibitor1")					
	        Player_RestrictBuildOption(playerIndex, "hgn_combatbase1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_battlecruiser1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_vortex1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_battleship1")	 
	        Player_RestrictBuildOption(playerIndex, "hgn_carrier1")
					Player_RestrictBuildOption(playerIndex, "hgn_spacecarrier1") 
	        Player_RestrictBuildOption(playerIndex, "hgn_battlecarrier1")
	        Player_RestrictBuildOption(playerIndex, "hgn_scaver1")
	        Player_RestrictBuildOption(playerIndex, "hgn_lightcarrier1") 	 
	        Player_RestrictBuildOption(playerIndex, "hgn_shipyard1") 
					Player_RestrictBuildOption(playerIndex, "hgn_battleshipyard1") 
          Player_RestrictBuildOption(playerIndex, "hgn_shipyard_g1") 					
	        Player_RestrictBuildOption(playerIndex, "hgn_commandfortress1")
	        Player_RestrictBuildOption(playerIndex, "hgn_ark1")
	        Player_RestrictBuildOption(playerIndex, "hgn_hyperspacestation1")   	        
	      else   
	        Player_RestrictBuildOption(playerIndex, "vgr_weaponplatform_gun1") 	
					Player_RestrictBuildOption(playerIndex, "vgr_weaponplatform_lance1") 	
	        Player_RestrictBuildOption(playerIndex, "vgr_weaponplatform_missile1") 	
					Player_RestrictBuildOption(playerIndex, "vgr_mobile_inhibitor1") 	
	        Player_RestrictBuildOption(playerIndex, "vgr_hyperspace_platform1") 	       
	        Player_RestrictBuildOption(playerIndex, "vgr_resourcecollector1") 	 
	        Player_RestrictBuildOption(playerIndex, "vgr_commandcorvette1") 	
	        Player_RestrictBuildOption(playerIndex, "vgr_scout1") 	       
	        Player_RestrictBuildOption(playerIndex, "vgr_container1") 
					Player_RestrictBuildOption(playerIndex, "vgr_empcorvette1") 	
	        Player_RestrictBuildOption(playerIndex, "vgr_minelayercorvette1") 
	        Player_RestrictBuildOption(playerIndex, "vgr_resourcecontroller1") 	         	
          Player_RestrictBuildOption(playerIndex, "vgr_resourcecontrollerdouble1")           		
	        Player_RestrictBuildOption(playerIndex, "vgr_defender1") 	
	        Player_RestrictBuildOption(playerIndex, "vgr_lancefighter1")
	        Player_RestrictBuildOption(playerIndex, "vgr_heavyfighter1") 	    
          Player_RestrictBuildOption(playerIndex, "vgr_elitefighter1") 	    					
	        Player_RestrictBuildOption(playerIndex, "vgr_bomber1") 
					Player_RestrictBuildOption(playerIndex, "vgr_missilebomber1") 
	        Player_RestrictBuildOption(playerIndex, "vgr_heavymissilefrigate1") 	         
	        Player_RestrictBuildOption(playerIndex, "vgr_assaultfrigate1") 	 
					Player_RestrictBuildOption(playerIndex, "vgr_advassaultfrigate1") 	 
	        Player_RestrictBuildOption(playerIndex, "vgr_infiltratorfrigate1") 	
          Player_RestrictBuildOption(playerIndex, "vgr_supportfrigate1") 	 
          Player_RestrictBuildOption(playerIndex, "vgr_supportfrigate_laser1") 	  
          Player_RestrictBuildOption(playerIndex, "vgr_supportfrigatearmed1") 
          Player_RestrictBuildOption(playerIndex, "vgr_commandfrigate1")          					
	        Player_RestrictBuildOption(playerIndex, "vgr_interceptor1") 	     
	        Player_RestrictBuildOption(playerIndex, "vgr_missilecorvette1") 	
					Player_RestrictBuildOption(playerIndex, "vgr_shamshiriictg1") 	
	        Player_RestrictBuildOption(playerIndex, "vgr_lasercorvette1") 	
          Player_RestrictBuildOption(playerIndex, "vgr_plasmacorvette1") 					
	        Player_RestrictBuildOption(playerIndex, "vgr_standvette1") 	 
	        Player_RestrictBuildOption(playerIndex, "vgr_artilleryfrigate1") 	
					Player_RestrictBuildOption(playerIndex, "vgr_longrangeartilleryfrigate1") 	
	        Player_RestrictBuildOption(playerIndex, "vgr_empfrigate1") 	        
	        Player_RestrictBuildOption(playerIndex, "vgr_multilancecorvette1") 	
	        Player_RestrictBuildOption(playerIndex, "vgr_striker1") 	
					Player_RestrictBuildOption(playerIndex, "vgr_mortarcorvette1") 	
	        Player_RestrictBuildOption(playerIndex, "vgr_destroyer1")
					Player_RestrictBuildOption(playerIndex, "vgr_pulsedestroyer1")
	        Player_RestrictBuildOption(playerIndex, "vgr_am1")  	
	        Player_RestrictBuildOption(playerIndex, "vgr_cruiser1") 	
					Player_RestrictBuildOption(playerIndex, "vgr_lightcruiser1") 	
          Player_RestrictBuildOption(playerIndex, "vgr_artilleryship1") 
          Player_RestrictBuildOption(playerIndex, "vgr_sinner1") 					
	        Player_RestrictBuildOption(playerIndex, "vgr_battlecruiser1") 
          Player_RestrictBuildOption(playerIndex, "vgr_missilebattlecruiser1") 					
	        Player_RestrictBuildOption(playerIndex, "vgr_alkhalid1")
	        Player_RestrictBuildOption(playerIndex, "vgr_dreadnaught1") 	  
	        Player_RestrictBuildOption(playerIndex, "vgr_carrier1") 	
					Player_RestrictBuildOption(playerIndex, "vgr_lightcarrier1") 	
					Player_RestrictBuildOption(playerIndex, "vgr_scaver1")
					Player_RestrictBuildOption(playerIndex, "vgr_battlecarrier1") 	
	        Player_RestrictBuildOption(playerIndex, "vgr_shipyard1") 
	        Player_RestrictBuildOption(playerIndex, "vgr_commandfortress1")	          							
	      end            
    	end   
		end 
		playerIndex = playerIndex + 1  
	end	
  Rule_Remove("populationinit")    
end  

function population()
	--determina quanti piloti/ufficiali vengono aggiunti ad ogni avanzamento di grado, basato sul parametro unitcapsrank
  local pilottoadd = 90
	local officertoadd = 4
  if unitcapsrank == 4 then				
	  pilottoadd = 120							
    officertoadd = 7							
	elseif unitcapsrank == 3 then		
		pilottoadd = 100							
    officertoadd = 5							
	elseif unitcapsrank == 2 then		
	  pilottoadd = 90							
    officertoadd = 4							
	elseif unitcapsrank == 1 then   
	  pilottoadd = 80							
    officertoadd = 3							
	else
		pilottoadd = 90							
    officertoadd = 4									
	end
  local playerIndex = 0                                              
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then  
        playerIndexList = playerIndex + 1
				if hwsaving[3] == 0 or year == 0 then					 		
					honortimefactor = (1-(year/450)) -- con set a 250: 0.9 a 25 anni, 0.8 a 50 anni, 0.6 a 100 anni - >n >honortimefactor
					if honortimefactor < 0.5 then
						honortimefactor = 0.5
					end        					
					honoramountfactor = (1-(honorList[playerIndexList]/900))  -- con set a 730: 365 è 0.5   
					if honoramountfactor < 0.5 then
						honoramountfactor = 0.5
					end 	
          honorList[playerIndexList] = 0					
					--calcola in numero di debris conquistati e poi distrutti e aggiorna le statistice delle navi perse non calcolando i debris					
					DebrisPop = (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_veildebris_chunk1")*50000) +
											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_veildebris_chunk2")*55000) +
											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_veildebris_chunk3")*60000) +
											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_veildebris_chunk4")*65000) +
											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_veildebris_chunk5")*70000) +
											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_nuclearbomb")*20000) +
											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "meg_foundry")*200000)  
					if DebrisPop < LastDebrisPop[playerIndexList] then
						Stats_Extra[playerIndexList] = Stats_Extra[playerIndexList] + (LastDebrisPop[playerIndexList] - DebrisPop)
					end   
					LastDebrisPop[playerIndexList] = DebrisPop        
					--calcolo onore
					honorbattle = 0    
					honorcapture = 0
					honortribute = 0
					honorresearch = 0
					honorbuild = 0
					honorru = 0
					--ai expert				
					if Player_HasResearch(playerIndex, "isexpert") == 1 then
						honorbattle = floor (((Stats_TotalKillsInRUs( playerIndex ) * 1.08) - (Stats_TotalLossesInRUs( playerIndex ) * 0.45) + (Stats_Extra[playerIndexList] * 0.55)) / 1000)        
						honorcapture = floor (((Stats_EnemyShipsCaptured( playerIndex ) * 3500) - (Stats_OwnShipsCaptured( playerIndex ) * 3500)) / 1000)
						honortribute = floor (((Stats_TributeDonated( playerIndex ) * 0.5) - (Stats_TributeReceived( playerIndex ) * 0.25)) / 1000)
						honorresearch = floor ((((Stats_ResearchRUValue( playerIndex ) + researchburned[playerIndexList]) * 0.51)) / 1000)
						honorbuild = floor (((Stats_TotalShipsBuiltInRUs( playerIndex ) * 0.36) + (Stats_SubsystemsBuiltInRUs( playerIndex ) * 0.36)) / 1000)
						honorru = floor (((Stats_GatheredRUs( playerIndex ) + Stats_ExtraGatheredRUs[playerIndexList]) * 0.17) / 1000)	      		      
						honorList[playerIndexList] = (((honorcapture + honorbattle + honortribute + honorru + honorresearch + honorbuild) * honoursensitivity)) + honorbonus[playerIndexList] + honourstartList[playerIndexList]    
						honorList[playerIndexList] = floor (honorList[playerIndexList] * 1.08 * honortimefactor * honoramountfactor)
					--ai hard  
					elseif Player_HasResearch(playerIndex, "ishard") == 1 then
						honorbattle = floor (((Stats_TotalKillsInRUs( playerIndex ) * 1.08) - (Stats_TotalLossesInRUs( playerIndex ) * 0.45) + (Stats_Extra[playerIndexList] * 0.55)) / 1000)        
						honorcapture = floor (((Stats_EnemyShipsCaptured( playerIndex ) * 3500) - (Stats_OwnShipsCaptured( playerIndex ) * 3500)) / 1000)
						honortribute = floor (((Stats_TributeDonated( playerIndex ) * 0.5) - (Stats_TributeReceived( playerIndex ) * 0.25)) / 1000)
						honorresearch = floor ((((Stats_ResearchRUValue( playerIndex ) + researchburned[playerIndexList]) * 0.51)) / 1000)
						honorbuild = floor (((Stats_TotalShipsBuiltInRUs( playerIndex ) * 0.36) + (Stats_SubsystemsBuiltInRUs( playerIndex ) * 0.36)) / 1000)
						honorru = floor (((Stats_GatheredRUs( playerIndex ) + Stats_ExtraGatheredRUs[playerIndexList]) * 0.17) / 1000)			         
						honorList[playerIndexList] = (((honorcapture + honorbattle + honortribute + honorru + honorresearch + honorbuild) * honoursensitivity)) + honorbonus[playerIndexList] + honourstartList[playerIndexList]    
						honorList[playerIndexList] = floor (honorList[playerIndexList] * 1.06 * honortimefactor * honoramountfactor)
					--ai normal  
					elseif Player_HasResearch(playerIndex, "isstandard") == 1 then
						honorbattle = floor (((Stats_TotalKillsInRUs( playerIndex ) * 1.08) - (Stats_TotalLossesInRUs( playerIndex ) * 0.45) + (Stats_Extra[playerIndexList] * 0.55)) / 1000)        
						honorcapture = floor (((Stats_EnemyShipsCaptured( playerIndex ) * 3500) - (Stats_OwnShipsCaptured( playerIndex ) * 3500)) / 1000)
						honortribute = floor (((Stats_TributeDonated( playerIndex ) * 0.5) - (Stats_TributeReceived( playerIndex ) * 0.25)) / 1000)
						honorresearch = floor ((((Stats_ResearchRUValue( playerIndex ) + researchburned[playerIndexList]) * 0.51)) / 1000)
						honorbuild = floor (((Stats_TotalShipsBuiltInRUs( playerIndex ) * 0.36) + (Stats_SubsystemsBuiltInRUs( playerIndex ) * 0.36)) / 1000)
						honorru = floor (((Stats_GatheredRUs( playerIndex ) + Stats_ExtraGatheredRUs[playerIndexList]) * 0.17) / 1000)			          
						honorList[playerIndexList] = (((honorcapture + honorbattle + honortribute + honorru + honorresearch + honorbuild) * honoursensitivity)) + honorbonus[playerIndexList] + honourstartList[playerIndexList]    
						honorList[playerIndexList] = floor (honorList[playerIndexList] * 1.04 * honortimefactor * honoramountfactor)
					--ai easy  
					elseif Player_HasResearch(playerIndex, "iseasy") == 1 then
						honorbattle = floor (((Stats_TotalKillsInRUs( playerIndex ) * 1.08) - (Stats_TotalLossesInRUs( playerIndex ) * 0.45) + (Stats_Extra[playerIndexList] * 0.55)) / 1000)        
						honorcapture = floor (((Stats_EnemyShipsCaptured( playerIndex ) * 3500) - (Stats_OwnShipsCaptured( playerIndex ) * 3500)) / 1000)
						honortribute = floor (((Stats_TributeDonated( playerIndex ) * 0.5) - (Stats_TributeReceived( playerIndex ) * 0.25)) / 1000)
						honorresearch = floor ((((Stats_ResearchRUValue( playerIndex ) + researchburned[playerIndexList]) * 0.51)) / 1000)
						honorbuild = floor (((Stats_TotalShipsBuiltInRUs( playerIndex ) * 0.36) + (Stats_SubsystemsBuiltInRUs( playerIndex ) * 0.36)) / 1000)
						honorru = floor (((Stats_GatheredRUs( playerIndex ) + Stats_ExtraGatheredRUs[playerIndexList]) * 0.17) / 1000)	  		      
						honorList[playerIndexList] = (((honorcapture + honorbattle + honortribute + honorru + honorresearch + honorbuild) * honoursensitivity)) + honorbonus[playerIndexList] + honourstartList[playerIndexList]    
						honorList[playerIndexList] = floor (honorList[playerIndexList] * 1.02 * honortimefactor * honoramountfactor)
					--player  
					else
						honorbattle = floor (((Stats_TotalKillsInRUs( playerIndex ) * 1.07) - (Stats_TotalLossesInRUs( playerIndex ) * 0.725) + (Stats_Extra[playerIndexList] * 0.775)) / 1000)        
						honorcapture = floor (((Stats_EnemyShipsCaptured( playerIndex ) * 3500) - (Stats_OwnShipsCaptured( playerIndex ) * 3500)) / 1000)
						honortribute = floor (((Stats_TributeDonated( playerIndex ) * 0.5) - (Stats_TributeReceived( playerIndex ) * 0.25)) / 1000)
						honorresearch = floor ((((Stats_ResearchRUValue( playerIndex ) + researchburned[playerIndexList]) * 0.5)) / 1000)
						honorbuild = floor (((Stats_TotalShipsBuiltInRUs( playerIndex ) * 0.35) + (Stats_SubsystemsBuiltInRUs( playerIndex ) * 0.35)) / 1000)
						honorru = floor (((Stats_GatheredRUs( playerIndex ) + Stats_ExtraGatheredRUs[playerIndexList]) * 0.15) / 1000)	    	      
						honorList[playerIndexList] = (((honorcapture + honorbattle + honortribute + honorru + honorresearch + honorbuild) * honoursensitivity)) + honorbonus[playerIndexList] + honourstartList[playerIndexList]    
						honorList[playerIndexList] = floor (honorList[playerIndexList] * 1 * honortimefactor * honoramountfactor)     
					end	            
					--no onore in negativo
					if honorList[playerIndexList] < 0 then
						honorList[playerIndexList] = 0
					end	        
					--solo all'inizio setta l'onore secondo i settaggi di partenza	        
					if honorinit == 0 then
						if honorList[playerIndexList] > honourstartList[playerIndexList] then
							local gap = (honorList[playerIndexList] - honourstartList[playerIndexList])	            
							honorList[playerIndexList] = floor (honourstartList[playerIndexList])	 
							honourstartList1[playerIndexList] = honourstartList[playerIndexList]         
							honourstartList[playerIndexList] = honourstartList[playerIndexList] - gap	        
						elseif honorList[playerIndexList] < honourstartList[playerIndexList] then
							local gap = (honourstartList[playerIndexList] - honorList[playerIndexList])	            
							honorList[playerIndexList] = floor (honourstartList[playerIndexList])	 
							honourstartList1[playerIndexList] = honourstartList[playerIndexList]         
							honourstartList[playerIndexList] = honourstartList[playerIndexList] + gap	                    	            
						end 
            honorinit = 1						
					end       
					--x i primi 3 anni l'onore non scende sotto il livello di partenza
					if year <= 2 then
						if honorList[playerIndexList] < honourstartList1[playerIndexList] then
							honorList[playerIndexList] = floor (honourstartList1[playerIndexList])
						end 	      
					end  
					--interface
          if playerIndex == Universe_CurrentPlayer() and ((year==0 and gametime<45) or year>0 or intro==1) then				
					  if honorList[playerIndexList] >= 480 then
							UI_SetTextLabelText("ResourceMenu", "lblhonor", ""..honorList[playerIndexList]);                                    
							UI_SetTextLabelText("UnitCapInfoPopup", "lblhonor", ""..honorList[playerIndexList]);           
						else 
							UI_SetTextLabelText("ResourceMenu", "lblhonor", ""..honorList[playerIndexList].."/"..honorList1[playerIndexList]);                                    
							UI_SetTextLabelText("UnitCapInfoPopup", "lblhonor", ""..honorList[playerIndexList].."/"..honorList1[playerIndexList]);      
						end 	
						UI_SetTextLabelText("UnitCapInfoPopup", "lblhonorbattle", ""..honorbattle);        
						UI_SetTextLabelText("UnitCapInfoPopup", "lblhonorcapture", ""..honorcapture);      
						UI_SetTextLabelText("UnitCapInfoPopup", "lblhonortribute", ""..honortribute);      
						UI_SetTextLabelText("UnitCapInfoPopup", "lblhonorresearch", ""..honorresearch);    
						UI_SetTextLabelText("UnitCapInfoPopup", "lblhonorbuild", ""..honorbuild);          
						UI_SetTextLabelText("UnitCapInfoPopup", "lblhonorru", ""..honorru);   
						--Medals
						--battle
						if (honorbattle >= 15) then                                  
							UI_SetElementVisible("UnitCapInfoPopup", "battlemedal1", 1)                       
						end                                                                                 
						if (honorbattle >= 30) then                       
							UI_SetElementVisible("UnitCapInfoPopup", "battlemedal2", 1)                       
						end                                                                                 
						if (honorbattle >= 45) then                              
							UI_SetElementVisible("UnitCapInfoPopup", "battlemedal3", 1)                       
						end                                                                                 
						if (honorbattle >= 60) then                         
							UI_SetElementVisible("UnitCapInfoPopup", "battlemedal4", 1)                       
						end                                                                                 
						if (honorbattle >= 75) then                                                                                     
							UI_SetElementVisible("UnitCapInfoPopup", "battlemedal5", 1)                       
						end    
						--capture
						if (honorcapture >= 15) then                                  
							UI_SetElementVisible("UnitCapInfoPopup", "capturemedal1", 1)                       
						end                                                                                 
						if (honorcapture >= 30) then                       
							UI_SetElementVisible("UnitCapInfoPopup", "capturemedal2", 1)                       
						end                                                                                 
						if (honorcapture >= 45) then                              
							UI_SetElementVisible("UnitCapInfoPopup", "capturemedal3", 1)                       
						end                                                                                 
						if (honorcapture >= 60) then                         
							UI_SetElementVisible("UnitCapInfoPopup", "capturemedal4", 1)                       
						end                                                                                 
						if (honorcapture >= 75) then                                                                                     
							UI_SetElementVisible("UnitCapInfoPopup", "capturemedal5", 1)                       
						end    
						--tribute
						if (honortribute >= 15) then                                  
							UI_SetElementVisible("UnitCapInfoPopup", "tributemedal1", 1)                       
						end                                                                                 
						if (honortribute >= 30) then                       
							UI_SetElementVisible("UnitCapInfoPopup", "tributemedal2", 1)                       
						end                                                                                 
						if (honortribute >= 45) then                              
							UI_SetElementVisible("UnitCapInfoPopup", "tributemedal3", 1)                       
						end                                                                                 
						if (honortribute >= 60) then                         
							UI_SetElementVisible("UnitCapInfoPopup", "tributemedal4", 1)                       
						end                                                                                 
						if (honortribute >= 75) then                                                                                     
							UI_SetElementVisible("UnitCapInfoPopup", "tributemedal5", 1)                       
						end                                                                                                            
						--research
						if (honorresearch >= 15) then                                  
							UI_SetElementVisible("UnitCapInfoPopup", "researchmedal1", 1)                       
						end                                                                                 
						if (honorresearch >= 30) then                       
							UI_SetElementVisible("UnitCapInfoPopup", "researchmedal2", 1)                       
						end                                                                                 
						if (honorresearch >= 45) then                              
							UI_SetElementVisible("UnitCapInfoPopup", "researchmedal3", 1)                       
						end                                                                                 
						if (honorresearch >= 60) then                         
							UI_SetElementVisible("UnitCapInfoPopup", "researchmedal4", 1)                       
						end                                                                                 
						if (honorresearch >= 75) then                                                                                     
							UI_SetElementVisible("UnitCapInfoPopup", "researchmedal5", 1)                       
						end                        
						--build
						if (honorbuild >= 15) then                                  
							UI_SetElementVisible("UnitCapInfoPopup", "buildmedal1", 1)                       
						end                                                                                 
						if (honorbuild >= 30) then                       
							UI_SetElementVisible("UnitCapInfoPopup", "buildmedal2", 1)                       
						end                                                                                 
						if (honorbuild >= 45) then                              
							UI_SetElementVisible("UnitCapInfoPopup", "buildmedal3", 1)                       
						end                                                                                 
						if (honorbuild >= 60) then                         
							UI_SetElementVisible("UnitCapInfoPopup", "buildmedal4", 1)                       
						end                                                                                 
						if (honorbuild >= 75) then                                                                                     
							UI_SetElementVisible("UnitCapInfoPopup", "buildmedal5", 1)                       
						end                                                                                    
						--ru
						if (honorru >= 15) then                                  
							UI_SetElementVisible("UnitCapInfoPopup", "rumedal1", 1)                       
						end                                                                                 
						if (honorru >= 30) then                       
							UI_SetElementVisible("UnitCapInfoPopup", "rumedal2", 1)                       
						end                                                                                 
						if (honorru >= 45) then                              
							UI_SetElementVisible("UnitCapInfoPopup", "rumedal3", 1)                       
						end                                                                                 
						if (honorru >= 60) then                         
							UI_SetElementVisible("UnitCapInfoPopup", "rumedal4", 1)                       
						end                                                                                 
						if (honorru >= 75) then                                                                                     
							UI_SetElementVisible("UnitCapInfoPopup", "rumedal5", 1)                       
						end           
					end					
        end				
				--fighter								
				if hwsaving[3] == 1 or year == 0 then				  
					pilotpopListAccumulator[playerIndexList] = (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_scout" ) * 3) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_interceptor" ) * 5) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_attackbomber" ) * 5) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_defender" ) * 3) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_lbomber" ) * 5) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_railgunfighter" ) * 5) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_hft" ) * 5) +   
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_attackbomberheavy" ) * 5) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_scout" ) * 3) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_interceptor" ) * 7) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_bomber" ) * 6) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_missilebomber" ) * 6) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_defender" ) * 5) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_lancefighter" ) * 5) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_heavyfighter" ) * 5) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_elitefighter" ) * 5)  
					if hwsaving[4] == 0 or year == 0 then
						fighter[playerIndexList] = Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_scout" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_interceptor" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_attackbomber" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_defender" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_lbomber" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_railgunfighter" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_hft" ) +	
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_attackbomberheavy" ) +		
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_scout" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_interceptor" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_bomber" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_missilebomber" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_defender" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_lancefighter" ) + 
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_heavyfighter" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_elitefighter" )	
					end																			 
				end
				--corvette
				if hwsaving[3] == 2 or year == 0 then
					pilotpopListAccumulator[playerIndexList] =	pilotpopListAccumulator[playerIndexList] + 
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_assaultcorvette" ) * 6) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_pulsarcorvette" ) * 6) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_bombervette" ) * 6) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_empcorvette" ) * 6) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_minelayercorvette" ) * 3) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_multiguncorvette" ) * 9) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_cth" ) * 9) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_cthion" ) * 9) +          
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_missilecorvette" ) * 8) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_lasercorvette" ) * 8) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_shamshiriictg" ) * 8) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_plasmacorvette" ) * 8) + 
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_striker" ) * 9) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_multilancecorvette" ) * 9) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mortarcorvette" ) * 9) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_empcorvette" ) * 6) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_minelayercorvette" ) * 3) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_commandcorvette" ) * 2) +
																											(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_standvette" ) * 8)													
					if hwsaving[4] == 0 or year == 0 then
						corvette[playerIndexList] = Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_assaultcorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_pulsarcorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_bombervette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_empcorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_minelayercorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_multiguncorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_cth" ) +	
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_cthion" )	+
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_missilecorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_lasercorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_shamshiriictg" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_plasmacorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_multilancecorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mortarcorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_striker" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_empcorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_minelayercorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_commandcorvette" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_standvette" )   
					end
				end
				--frigate
				if hwsaving[3] == 3 or year == 0 then
					pilotpopListAccumulator[playerIndexList] = pilotpopListAccumulator[playerIndexList] +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_assaultfrigate" ) * 6) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_torpedofrigate" ) * 6) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_lrms" ) * 7) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_marinefrigate" ) * 7) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_defensefieldfrigate" ) * 7) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_ioncannonfrigate" ) * 8) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_tulwar" ) * 9) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_heavymissilefrigate" ) * 6) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_assaultfrigate" ) * 6) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_advassaultfrigate" ) * 7) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_infiltratorfrigate" ) * 7) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_supportfrigatearmed" ) * 7) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_supportfrigate" ) * 8) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_commandfrigate" ) * 8) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_supportfrigate_laser" ) * 8) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_artilleryfrigate" ) * 8) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_longrangeartilleryfrigate" ) * 8) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_empfrigate" ) * 8)												 
					if hwsaving[4] == 0 or year == 0 then
						frigate[playerIndexList] = Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_assaultfrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_torpedofrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_lrms" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_marinefrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_defensefieldfrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_ioncannonfrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_tulwar" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_heavymissilefrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_assaultfrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_advassaultfrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_infiltratorfrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_supportfrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_commandfrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_supportfrigate_laser" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_supportfrigatearmed" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_artilleryfrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_longrangeartilleryfrigate" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_empfrigate" )   
					end
				end
				--capital
				if hwsaving[3] == 4 or year == 0 then
					pilotpopListAccumulator[playerIndexList] = pilotpopListAccumulator[playerIndexList] +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_mothership" ) * 40) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_destroyer" ) * 15) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_sweeperdestroyer" ) * 15) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_missiledestroyer" ) * 18) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_iondestroyer" ) * 18) +                       
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_advdestroyer" ) * 21) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_artillerydestroyer" ) * 21) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_cruisera" ) * 23) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_cruiserb" ) * 23) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_juggernaught" ) * 10) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_carrier" ) * 30) +  
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_spacecarrier" ) * 30) +											 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battlecarrier" ) * 30) +                       
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_lightcarrier" ) * 10) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_researchstation" ) * 10) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_combatbase" ) * 30) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_power" ) * 10) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_aditional_core" ) * 9) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_plasma_inhibitor" ) * 9) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_shipyard" ) * 40) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battleshipyard" ) * 60) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_shipyard_g" ) * 45) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_commandfortress" ) * 60) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_ark" ) * 60) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_hyperspacestation" ) * 10) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battlecruiser" ) * 30) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_vortex" ) * 35) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battleship" ) * 45) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_smasher" ) * 21) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_lighttanker" ) * 18) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_tanker" ) * 20) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_scaver" ) * 10) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mothership" ) * 50) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_destroyer" ) * 15) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_pulsedestroyer" ) * 15) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_am" ) * 12) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_cruiser" ) * 20) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_lightcruiser" ) * 20) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_artilleryship" ) * 20) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_lightcarrier" ) * 20) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_carrier" ) * 30) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_battlecarrier" ) * 30) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_shipyard" ) * 40) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_commandfortress" ) * 50) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_sinner" ) * 20) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_battlecruiser" ) * 30) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_missilebattlecruiser" ) * 30) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_dreadnaught" ) * 35) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_scaver" ) * 12) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_alkhalid" ) * 35)
					if hwsaving[4] == 0 or year == 0 then
						capital[playerIndexList] = Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_mothership" ) +                             
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_carrier" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_spacecarrier" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battlecarrier" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_lightcarrier" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_researchstation" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_combatbase" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_power" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_crewstation" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_hyperspacestation" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_shipyard" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battleshipyard" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_shipyard_g" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_commandfortress" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battlestation" ) +			
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_scaver" ) +																			 
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mothership" ) +	
                                       Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_lightcarrier" ) +																			 
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_carrier" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_battlecarrier" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_shipyard" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_scaver" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_commandfortress" ) 
						armedcapital[playerIndexList] = Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_destroyer" ) + 
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_sweeperdestroyer" ) +   
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_missiledestroyer" ) +                               
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_iondestroyer" ) + 
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_advdestroyer" ) + 
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_artillerydestroyer" ) + 
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_cruisera" ) +
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_cruiserb" ) + 
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_juggernaught" ) +
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_smasher" ) +
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_lighttanker" ) +
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_destroyer" ) +
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_pulsedestroyer" ) +
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_am" ) +
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_cruiser" ) +
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_lightcruiser" ) +
																						Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_artilleryship" )																			 
						superarmedcapital[playerIndexList] = Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battlecruiser" ) +
																								 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_vortex" ) +
																								 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battleship" ) +																	 
																								 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_tanker" ) +    
																								 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_ark" ) +			
                                                 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_sinner" ) +																								 
																								 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_battlecruiser" ) +
																								 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_missilebattlecruiser" ) +
																								 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_dreadnaught" ) +
																								 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_alkhalid" )																										 
					end
				end
				--platform
				if hwsaving[3] == 5 or year == 0 then
					pilotpopListAccumulator[playerIndexList] = pilotpopListAccumulator[playerIndexList] + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_gunturret" )) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_rapidfiregunturret" )) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_pulsarturret" ) * 2) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_ionturret" ) * 3) +     
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_missileturret" ) * 4) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_artillerysentinel" ) * 20) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_rts" ) * 5) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_defensefieldturret" ) * 5) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_weaponplatform_gun" )) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_weaponplatform_lance" )) + 						
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_weaponplatform_missile" ) * 2) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mobile_inhibitor" ) * 4) +													
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_hyperspace_platform" ) * 2) 
					if hwsaving[4] == 0 or year == 0 then
						platform[playerIndexList] = Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_gunturret" ) +
						                            Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_patcher" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_defenderdrone" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_rapidfiregunturret" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_pulsarturret" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_ionturret" ) +		
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_missileturret" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_rts" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_defensefieldturret" ) +																				
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_artillerysentinel" ) +                       
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_nuclearbomb" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_patcher" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_weaponplatform_gun" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_weaponplatform_lance" ) +					
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_weaponplatform_missile" ) +
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mobile_inhibitor" ) +																			
																				Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_hyperspace_platform" )			
					end
				end
				--utility
				if hwsaving[3] == 6 or year == 0 then
					pilotpopListAccumulator[playerIndexList] = pilotpopListAccumulator[playerIndexList] +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_resourcecollector" ) * 2) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_salvagecollector" ) * 2) + 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_resourcecontroller" ) * 4) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_container" ) * 4) +																										 
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_resourcecollector" ) * 2) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_resourcecontroller" ) * 4) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_resourcecontrollerdouble" ) * 8) +
																										 (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_container" ) * 4)																										 			
					if hwsaving[4] == 0 or year == 0 then
						utility[playerIndexList] = Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_resourcecollector" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_salvagecollector" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_resourcecontroller" ) +																			 
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_aditional_core" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_plasma_inhibitor" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_container" ) +																			 
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_transportcell" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_probe" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_proximitysensor" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_ecmprobe" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_ghost" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_core" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_resourcecollector" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_resourcecontroller" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_resourcecontrollerdouble" ) +																			 
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_container" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_probe" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_probe_smallhsbeacon" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_ghost" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_probe_prox" ) +
																			 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_probe_ecm" )
						weapon[playerIndexList] = Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_nuclearbomb" )			
						pilotpopdisplayList[playerIndexList] = fighter[playerIndexList] + corvette[playerIndexList] + frigate[playerIndexList] + capital[playerIndexList] + armedcapital[playerIndexList] + superarmedcapital[playerIndexList] + platform[playerIndexList] + utility[playerIndexList]
					end	
					pilotpopList[playerIndexList] = pilotpopListAccumulator[playerIndexList]			
				end						
				--officer
				if hwsaving[3] == 7 or year == 0 then
					officerpopList[playerIndexList] = (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_mothership" ) * 4) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_destroyer" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_sweeperdestroyer" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_missiledestroyer" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_iondestroyer" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_advdestroyer" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_artillerydestroyer" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_artillerysentinel" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_juggernaught" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_cruisera" ) * 2) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_cruiserb" ) * 2) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_carrier" ) * 2) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_spacecarrier" ) * 2) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battlecarrier" ) * 3) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_lightcarrier" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_scaver" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_researchstation" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_combatbase" ) * 3) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_power" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_shipyard" ) * 3) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battleshipyard" ) * 6) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_shipyard_g" ) * 5) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_commandfortress" ) * 6) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_ark" ) * 6) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_hyperspacestation" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battlecruiser" ) * 3) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_vortex" ) * 4) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_battleship" ) * 5) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_smasher" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_lighttanker" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_tanker" ) * 2) + 
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_mothership" ) * 5) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_destroyer" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_pulsedestroyer" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_cruiser" ) * 2) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_lightcruiser" ) * 2) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_artilleryship" ) * 2) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_lightcarrier" ) * 1) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_carrier" ) * 2) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_battlecarrier" ) * 2) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_shipyard" ) * 3) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_commandfortress" ) * 6) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_sinner" ) * 2) + 
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_battlecruiser" ) * 3) + 
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_missilebattlecruiser" ) * 3) +   																							
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_dreadnaught" ) * 3) +     
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_alkhalid" ) * 3) +
																						(Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_scaver" ) * 1)				
				end	  			
				if hwsaving[3] == 8 or year == 0 then
				  pilotmaxList[playerIndexList] = 150         
					officermaxList[playerIndexList] = 10 
          if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then 				
						--calcola piloti ed ufficiali disponibili in base ai moduli montati sulla Crew Station    
						if ncs > 0 then
							for i = 0,ncs-1,1 do
								if SobGroup_Empty("splitcrewstations"..i) == 0 then		
									if SobGroup_OwnedBy("splitcrewstations"..i) == playerIndex then				    
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 1") > 0 then
											pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + pilottoadd        
										end    
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 2") > 0 then
											pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + pilottoadd        
										end    
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 3") > 0 then
											pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + pilottoadd        
										end    
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 4") > 0 then
											pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + pilottoadd        
										end    
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 5") > 0 then
											pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + pilottoadd        
										end    
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 6") > 0 then
											pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = pilotmaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + pilottoadd        
										end            
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 7") > 0 then
											officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + officertoadd        
										end    
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 8") > 0 then
											officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + officertoadd        
										end    
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 9") > 0 then
											officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + officertoadd        
										end    
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 10") > 0 then
											officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + officertoadd        
										end    
										if SobGroup_GetHardPointHealth("splitcrewstations"..i, "Generic 11") > 0 then
											officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] = officermaxList[SobGroup_OwnedBy("splitcrewstations"..i) + 1] + officertoadd        
										end   
									end    
								end	
							end	
						end		
						--crew savior  
						if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_crewstation") > 0 then       
							if ntc[playerIndexList] > 0 then
								for i = 0,(ntc[playerIndexList]-1),1 do  	 		  
									if SobGroup_Empty("splitothers"..playerIndex .. tostring(i)) == 0	then  
                    if SobGroup_AreAnyOfTheseTypes("splitothers"..playerIndex .. tostring(i), "evac") == 1 then	
											SobGroup_ForceStayDockedIfDocking("splitothers"..playerIndex .. tostring(i)) 									
											if SobGroup_IsDockedSobGroup("splitothers"..playerIndex .. tostring(i), "hgn_crewstation"..playerIndex) == 1 then  
												if SobGroup_GetHardPointHealth("splitothers"..playerIndex .. tostring(i), "pilot") ~= 0 and SobGroup_GetHardPointHealth("splitothers"..playerIndex .. tostring(i), "officer") ~= 0 and SobGroup_GetHardPointHealth("splitothers"..playerIndex .. tostring(i), "pilot") ~= 1 and SobGroup_GetHardPointHealth("splitothers"..playerIndex .. tostring(i), "officer") ~= 1 then						        
													pilotrecruitList[playerIndexList] = floor(pilotrecruitList[playerIndexList] + (SobGroup_GetHardPointHealth("splitothers"..playerIndex .. tostring(i), "pilot") * 100))
													officerrecruitList[playerIndexList] = floor(officerrecruitList[playerIndexList] + (SobGroup_GetHardPointHealth("splitothers"..playerIndex .. tostring(i), "officer") * 100)) 
													SobGroup_SetHardPointHealth("splitothers"..playerIndex .. tostring(i), "pilot", 0) 
													SobGroup_SetHardPointHealth("splitothers"..playerIndex .. tostring(i), "officer", 0)                              
												end  
											elseif SobGroup_IsDoingAbility("splitothers"..playerIndex .. tostring(i), abilityList[9]) == 1 then  										  
											else
												--viene fatto in transportcell.lua perchè più rapido							      
											end		
										end	
									end		             
								end 
							end						          	        
						end			
						--in caso di morte di piloti ed ufficiali li sottrae al reclutamento x AI		  
						if Player_HasResearch(playerIndex, "isai" ) == 1 then
							if LastpilotpopList[playerIndexList] > pilotpopList[playerIndexList] then
								pilotrecruitList[playerIndexList] = floor(pilotrecruitList[playerIndexList] - ((LastpilotpopList[playerIndexList] - pilotpopList[playerIndexList])/2))		        
							end
							if LastofficerpopList[playerIndexList] > officerpopList[playerIndexList] then
								officerrecruitList[playerIndexList] = floor(officerrecruitList[playerIndexList] - ((LastofficerpopList[playerIndexList] - officerpopList[playerIndexList])/2))		        
							end
						else    
							if LastpilotpopList[playerIndexList] > pilotpopList[playerIndexList] then
								pilotrecruitList[playerIndexList] = floor(pilotrecruitList[playerIndexList] - (LastpilotpopList[playerIndexList] - pilotpopList[playerIndexList]))		        
							end
							if LastofficerpopList[playerIndexList] > officerpopList[playerIndexList] then
								officerrecruitList[playerIndexList] = floor(officerrecruitList[playerIndexList] - (LastofficerpopList[playerIndexList] - officerpopList[playerIndexList]))		        
							end
						end	
            --piloti reclutati mai sotto 150
 						if pilotrecruitList[playerIndexList] < 150 then 				   		      
							pilotrecruitList[playerIndexList] = 150
						end
						--se crew reclutata è > di crew max setta crew reclutata ai piloti attuali
						if pilotrecruitList[playerIndexList] > pilotmaxList[playerIndexList] then 				   		      
							pilotrecruitList[playerIndexList] = pilotmaxList[playerIndexList]
						end
						if officerrecruitList[playerIndexList] > officermaxList[playerIndexList] then 				   		      
							officerrecruitList[playerIndexList] = officermaxList[playerIndexList]
						end     
            --pareggia attuali con max, se anno = 0 inverso
						if pilotpopList[playerIndexList] > pilotrecruitList[playerIndexList] then
						  if year == 0 then
							  pilotrecruitList[playerIndexList] = pilotpopList[playerIndexList]	
							else
							  pilotpopList[playerIndexList] = pilotrecruitList[playerIndexList]	
							end									
						end	
						if officerpopList[playerIndexList] > officerrecruitList[playerIndexList] then
						  if year == 0 then
							  officerrecruitList[playerIndexList] = officerpopList[playerIndexList]		
							else
							  officerpopList[playerIndexList] = officerrecruitList[playerIndexList]	
							end											
						end							
						--calcola i piloti disponibili e blocca e sblocca le unità in base al numero di piloti ed ufficiali		      		      		      		              
						NeededPilots[playerIndexList] = pilotrecruitList[playerIndexList] - pilotpopList[playerIndexList] 
						NeededOfficers[playerIndexList] = officerrecruitList[playerIndexList] - officerpopList[playerIndexList]    
						if NeededPilots[playerIndexList] < 0 then
							NeededPilots[playerIndexList] = 0
						end  
						if NeededOfficers[playerIndexList] < 0 then
							NeededOfficers[playerIndexList] = 0
						end          
	 
						if (NeededPilots[playerIndexList] < 1) then
							if (canbuildgunturret[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "hgn_gunturret")
								Player_UnrestrictBuildOption(playerIndex, "hgn_gunturret1")
								Player_RestrictBuildOption(playerIndex, "hgn_rapidfiregunturret")
								Player_UnrestrictBuildOption(playerIndex, "hgn_rapidfiregunturret1")
								canbuildgunturret[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 1) then 
							if (canbuildgunturret[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "hgn_gunturret")
								Player_RestrictBuildOption(playerIndex, "hgn_gunturret1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_rapidfiregunturret")
								Player_RestrictBuildOption(playerIndex, "hgn_rapidfiregunturret1")
								canbuildgunturret[playerIndexList] = 0
							end  
						end
						
						if (NeededPilots[playerIndexList] < 2) then
							if (canbuildpulsarturret[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "hgn_pulsarturret")
								Player_UnrestrictBuildOption(playerIndex, "hgn_pulsarturret1")
								Player_RestrictBuildOption(playerIndex, "hgn_resourcecollector")
								Player_UnrestrictBuildOption(playerIndex, "hgn_resourcecollector1")
								Player_RestrictBuildOption(playerIndex, "hgn_salvagecollector")
								Player_UnrestrictBuildOption(playerIndex, "hgn_salvagecollector1")
								canbuildpulsarturret[playerIndexList] = 1
							end  							
						elseif (NeededPilots[playerIndexList] >= 2) then
							if (canbuildpulsarturret[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "hgn_pulsarturret")
								Player_RestrictBuildOption(playerIndex, "hgn_pulsarturret1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_resourcecollector")
								Player_RestrictBuildOption(playerIndex, "hgn_resourcecollector1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_salvagecollector")
								Player_RestrictBuildOption(playerIndex, "hgn_salvagecollector1")
								canbuildpulsarturret[playerIndexList] = 0
							end 							
						end
						
						if (NeededPilots[playerIndexList] < 3) then
							if (canbuildscout[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "hgn_scout")
								Player_UnrestrictBuildOption(playerIndex, "hgn_scout1")
								Player_RestrictBuildOption(playerIndex, "hgn_defender")
								Player_UnrestrictBuildOption(playerIndex, "hgn_defender1")
								Player_RestrictBuildOption(playerIndex, "hgn_minelayercorvette")
								Player_UnrestrictBuildOption(playerIndex, "hgn_minelayercorvette1")
								Player_RestrictBuildOption(playerIndex, "hgn_ionturret")
								Player_UnrestrictBuildOption(playerIndex, "hgn_ionturret1")
								canbuildscout[playerIndexList] = 1
							end							
						elseif (NeededPilots[playerIndexList] >= 3) then
							if (canbuildscout[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "hgn_scout")
								Player_RestrictBuildOption(playerIndex, "hgn_scout1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_defender")
								Player_RestrictBuildOption(playerIndex, "hgn_defender1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_minelayercorvette")
								Player_RestrictBuildOption(playerIndex, "hgn_minelayercorvette1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_ionturret")
								Player_RestrictBuildOption(playerIndex, "hgn_ionturret1")
								canbuildscout[playerIndexList] = 0
							end
						end
						
						if (NeededPilots[playerIndexList] < 4) then
							if (canbuildcontroller[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "hgn_resourcecontroller")
								Player_UnrestrictBuildOption(playerIndex, "hgn_resourcecontroller1")
								Player_RestrictBuildOption(playerIndex, "hgn_container")
								Player_UnrestrictBuildOption(playerIndex, "hgn_container1")
								Player_RestrictBuildOption(playerIndex, "hgn_missileturret")
								Player_UnrestrictBuildOption(playerIndex, "hgn_missileturret1")
								canbuildcontroller[playerIndexList] = 1
							end  							
						elseif (NeededPilots[playerIndexList] >= 4) then
							if (canbuildcontroller[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "hgn_resourcecontroller")
								Player_RestrictBuildOption(playerIndex, "hgn_resourcecontroller1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_container")
								Player_RestrictBuildOption(playerIndex, "hgn_container1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_missileturret")
								Player_RestrictBuildOption(playerIndex, "hgn_missileturret1")
								canbuildcontroller[playerIndexList] = 0
							end  							
						end
						
						if (NeededPilots[playerIndexList] < 5) then
							if (canbuildrts[playerIndexList] == 0) then  
								Player_RestrictBuildOption(playerIndex, "hgn_defensefieldturret")
								Player_UnrestrictBuildOption(playerIndex, "hgn_defensefieldturret1")
								Player_RestrictBuildOption(playerIndex, "hgn_rts")
								Player_UnrestrictBuildOption(playerIndex, "hgn_rts1")
								Player_RestrictBuildOption(playerIndex, "hgn_interceptor")
								Player_UnrestrictBuildOption(playerIndex, "hgn_interceptor1")
								Player_RestrictBuildOption(playerIndex, "hgn_attackbomber")
								Player_UnrestrictBuildOption(playerIndex, "hgn_attackbomber1")
								Player_RestrictBuildOption(playerIndex, "hgn_lbomber")
								Player_UnrestrictBuildOption(playerIndex, "hgn_lbomber1")
								Player_RestrictBuildOption(playerIndex, "hgn_railgunfighter")
								Player_UnrestrictBuildOption(playerIndex, "hgn_railgunfighter1")
								Player_RestrictBuildOption(playerIndex, "hgn_hft")
								Player_UnrestrictBuildOption(playerIndex, "hgn_hft1")
								Player_RestrictBuildOption(playerIndex, "hgn_attackbomberheavy")
								Player_UnrestrictBuildOption(playerIndex, "hgn_attackbomberheavy1")
								canbuildrts[playerIndexList] = 1
							end
						elseif (NeededPilots[playerIndexList] >= 5) then    
							if (canbuildrts[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "hgn_defensefieldturret")
								Player_RestrictBuildOption(playerIndex, "hgn_defensefieldturret1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_rts")
								Player_RestrictBuildOption(playerIndex, "hgn_rts1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_interceptor")
								Player_RestrictBuildOption(playerIndex, "hgn_interceptor1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_attackbomber")
								Player_RestrictBuildOption(playerIndex, "hgn_attackbomber1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_lbomber")
								Player_RestrictBuildOption(playerIndex, "hgn_lbomber1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_railgunfighter")
								Player_RestrictBuildOption(playerIndex, "hgn_railgunfighter1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_hft")
								Player_RestrictBuildOption(playerIndex, "hgn_hft1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_attackbomberheavy")
								Player_RestrictBuildOption(playerIndex, "hgn_attackbomberheavy1")
								canbuildrts[playerIndexList] = 0
							end    
						end  						
						
						if (NeededPilots[playerIndexList] < 6) then             
							if (canbuildflak[playerIndexList] == 0) then        
								Player_RestrictBuildOption(playerIndex, "hgn_assaultfrigate")
								Player_UnrestrictBuildOption(playerIndex, "hgn_assaultfrigate1")
								Player_RestrictBuildOption(playerIndex, "hgn_torpedofrigate")
								Player_UnrestrictBuildOption(playerIndex, "hgn_torpedofrigate1")
								Player_RestrictBuildOption(playerIndex, "hgn_assaultcorvette")
								Player_UnrestrictBuildOption(playerIndex, "hgn_assaultcorvette1")	
								Player_RestrictBuildOption(playerIndex, "hgn_empcorvette")
								Player_UnrestrictBuildOption(playerIndex, "hgn_empcorvette1")
								Player_RestrictBuildOption(playerIndex, "hgn_pulsarcorvette")
								Player_UnrestrictBuildOption(playerIndex, "hgn_pulsarcorvette1")
								Player_RestrictBuildOption(playerIndex, "hgn_bombervette")
								Player_UnrestrictBuildOption(playerIndex, "hgn_bombervette1")
								canbuildflak[playerIndexList] = 1
							end							
						elseif (NeededPilots[playerIndexList] >= 6) then        
							if (canbuildflak[playerIndexList] == 1) then        
								Player_UnrestrictBuildOption(playerIndex, "hgn_assaultfrigate")
								Player_RestrictBuildOption(playerIndex, "hgn_assaultfrigate1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_torpedofrigate")
								Player_RestrictBuildOption(playerIndex, "hgn_torpedofrigate1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_assaultcorvette")
								Player_RestrictBuildOption(playerIndex, "hgn_assaultcorvette1")			
								Player_UnrestrictBuildOption(playerIndex, "hgn_empcorvette")
								Player_RestrictBuildOption(playerIndex, "hgn_empcorvette1")		
								Player_UnrestrictBuildOption(playerIndex, "hgn_pulsarcorvette")
								Player_RestrictBuildOption(playerIndex, "hgn_pulsarcorvette1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_bombervette")
								Player_RestrictBuildOption(playerIndex, "hgn_bombervette1")
								canbuildflak[playerIndexList] = 0
							end							
						end
						
						if (NeededPilots[playerIndexList] < 7) then
							if (canbuildlrms[playerIndexList] == 0) then     
								Player_RestrictBuildOption(playerIndex, "hgn_lrms")
								Player_UnrestrictBuildOption(playerIndex, "hgn_lrms1")
								Player_RestrictBuildOption(playerIndex, "hgn_marinefrigate")
								Player_UnrestrictBuildOption(playerIndex, "hgn_marinefrigate1")
								Player_RestrictBuildOption(playerIndex, "hgn_defensefieldfrigate")
								Player_UnrestrictBuildOption(playerIndex, "hgn_defensefieldfrigate1")
								canbuildlrms[playerIndexList] = 1
							end							
						elseif (NeededPilots[playerIndexList] >= 7) then
							if (canbuildlrms[playerIndexList] == 1) then             
								Player_UnrestrictBuildOption(playerIndex, "hgn_lrms")
								Player_RestrictBuildOption(playerIndex, "hgn_lrms1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_marinefrigate")
								Player_RestrictBuildOption(playerIndex, "hgn_marinefrigate1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_defensefieldfrigate")
								Player_RestrictBuildOption(playerIndex, "hgn_defensefieldfrigate1")
								canbuildlrms[playerIndexList] = 0
							end							
						end
						
						if (NeededPilots[playerIndexList] < 8) then
							if (canbuildioncannon[playerIndexList] == 0) then    
								Player_RestrictBuildOption(playerIndex, "hgn_ioncannonfrigate")
								Player_UnrestrictBuildOption(playerIndex, "hgn_ioncannonfrigate1")
								canbuildioncannon[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 8) then
							if (canbuildioncannon[playerIndexList] == 1) then    
								Player_UnrestrictBuildOption(playerIndex, "hgn_ioncannonfrigate")
								Player_RestrictBuildOption(playerIndex, "hgn_ioncannonfrigate1")
								canbuildioncannon[playerIndexList] = 0
							end  
						end
						
						if (NeededPilots[playerIndexList] < 9) then            
							if (canbuildtulwar[playerIndexList] == 0) then    
								Player_RestrictBuildOption(playerIndex, "hgn_tulwar")
								Player_UnrestrictBuildOption(playerIndex, "hgn_tulwar1")
								Player_RestrictBuildOption(playerIndex, "hgn_aditional_core")
								Player_UnrestrictBuildOption(playerIndex, "hgn_aditional_core1")
								Player_RestrictBuildOption(playerIndex, "hgn_plasma_inhibitor")
								Player_UnrestrictBuildOption(playerIndex, "hgn_plasma_inhibitor1")
								Player_RestrictBuildOption(playerIndex, "hgn_multiguncorvette")
								Player_UnrestrictBuildOption(playerIndex, "hgn_multiguncorvette1")
								Player_RestrictBuildOption(playerIndex, "hgn_cth")
								Player_UnrestrictBuildOption(playerIndex, "hgn_cth1")
								Player_RestrictBuildOption(playerIndex, "hgn_cthion")
								Player_UnrestrictBuildOption(playerIndex, "hgn_cthion1")
								canbuildtulwar[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 9) then            
							if (canbuildtulwar[playerIndexList] == 1) then    
								Player_UnrestrictBuildOption(playerIndex, "hgn_tulwar")
								Player_RestrictBuildOption(playerIndex, "hgn_tulwar1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_aditional_core")
								Player_RestrictBuildOption(playerIndex, "hgn_aditional_core1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_plasma_inhibitor")
								Player_RestrictBuildOption(playerIndex, "hgn_plasma_inhibitor1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_multiguncorvette")
								Player_RestrictBuildOption(playerIndex, "hgn_multiguncorvette1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_cth")
								Player_RestrictBuildOption(playerIndex, "hgn_cth1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_cthion")
								Player_RestrictBuildOption(playerIndex, "hgn_cthion1")
								canbuildtulwar[playerIndexList] = 0
							end  
						end
						
						if (NeededPilots[playerIndexList] < 10) or (NeededOfficers[playerIndexList] < 1) then            
							if (canbuildjuggernaught[playerIndexList] == 0) then     
							  Player_RestrictBuildOption(playerIndex, "hgn_scaver")
								Player_UnrestrictBuildOption(playerIndex, "hgn_scaver1")
								Player_RestrictBuildOption(playerIndex, "hgn_juggernaught")
								Player_UnrestrictBuildOption(playerIndex, "hgn_juggernaught1")
								Player_RestrictBuildOption(playerIndex, "hgn_artillerysentinel")
								Player_UnrestrictBuildOption(playerIndex, "hgn_artillerysentinel1")
								Player_RestrictBuildOption(playerIndex, "hgn_lightcarrier")
								Player_UnrestrictBuildOption(playerIndex, "hgn_lightcarrier1")
								Player_RestrictBuildOption(playerIndex, "hgn_hyperspacestation")
								Player_UnrestrictBuildOption(playerIndex, "hgn_hyperspacestation1")
								canbuildjuggernaught[playerIndexList] = 1
							end					           
						elseif (NeededPilots[playerIndexList] >= 10) and (NeededOfficers[playerIndexList] >= 1) then            
							if (canbuildjuggernaught[playerIndexList] == 1) then    
							  Player_UnrestrictBuildOption(playerIndex, "hgn_scaver")
								Player_RestrictBuildOption(playerIndex, "hgn_scaver1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_juggernaught")
								Player_RestrictBuildOption(playerIndex, "hgn_juggernaught1")  
								Player_UnrestrictBuildOption(playerIndex, "hgn_artillerysentinel")
								Player_RestrictBuildOption(playerIndex, "hgn_artillerysentinel1")  
								Player_UnrestrictBuildOption(playerIndex, "hgn_lightcarrier")
								Player_RestrictBuildOption(playerIndex, "hgn_lightcarrier1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_hyperspacestation")
								Player_RestrictBuildOption(playerIndex, "hgn_hyperspacestation1")
								canbuildjuggernaught[playerIndexList] = 0   
							end							       
						end
						
						if (NeededPilots[playerIndexList] < 15) or (NeededOfficers[playerIndexList] < 1) then            
							if (canbuilddestroyer[playerIndexList] == 0) then  
								Player_RestrictBuildOption(playerIndex, "hgn_destroyer")
								Player_UnrestrictBuildOption(playerIndex, "hgn_destroyer1")
								Player_RestrictBuildOption(playerIndex, "hgn_sweeperdestroyer")
								Player_UnrestrictBuildOption(playerIndex, "hgn_sweeperdestroyer1")
								canbuilddestroyer[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 15) and (NeededOfficers[playerIndexList] >= 1) then            
							if (canbuilddestroyer[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "hgn_destroyer")
								Player_RestrictBuildOption(playerIndex, "hgn_destroyer1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_sweeperdestroyer")
								Player_RestrictBuildOption(playerIndex, "hgn_sweeperdestroyer1")
								canbuilddestroyer[playerIndexList] = 0
							end  
						end
						
						if (NeededPilots[playerIndexList] < 18) or (NeededOfficers[playerIndexList] < 1) then
							if (canbuildiondestroyer[playerIndexList] == 0) then  
								Player_RestrictBuildOption(playerIndex, "hgn_iondestroyer")
								Player_UnrestrictBuildOption(playerIndex, "hgn_iondestroyer1")
								Player_RestrictBuildOption(playerIndex, "hgn_missiledestroyer")
								Player_UnrestrictBuildOption(playerIndex, "hgn_missiledestroyer1")								
								Player_RestrictBuildOption(playerIndex, "hgn_lighttanker")
								Player_UnrestrictBuildOption(playerIndex, "hgn_lighttanker1")
								canbuildiondestroyer[playerIndexList] = 1
							end  							
						elseif (NeededPilots[playerIndexList] >= 18) and (NeededOfficers[playerIndexList] >= 1) then
							if (canbuildiondestroyer[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "hgn_iondestroyer")
								Player_RestrictBuildOption(playerIndex, "hgn_iondestroyer1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_missiledestroyer")
								Player_RestrictBuildOption(playerIndex, "hgn_missiledestroyer1")								
								Player_UnrestrictBuildOption(playerIndex, "hgn_lighttanker")
								Player_RestrictBuildOption(playerIndex, "hgn_lighttanker1")
								canbuildiondestroyer[playerIndexList] = 0
							end  							
						end
						
						if (NeededPilots[playerIndexList] < 21) or (NeededOfficers[playerIndexList] < 1) then
							if (canbuildadvdestroyer[playerIndexList] == 0) then  
								Player_RestrictBuildOption(playerIndex, "hgn_advdestroyer")
								Player_UnrestrictBuildOption(playerIndex, "hgn_advdestroyer1")
								Player_RestrictBuildOption(playerIndex, "hgn_artillerydestroyer")
								Player_UnrestrictBuildOption(playerIndex, "hgn_artillerydestroyer1")
								Player_RestrictBuildOption(playerIndex, "hgn_smasher")
								Player_UnrestrictBuildOption(playerIndex, "hgn_smasher1")
								canbuildadvdestroyer[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 21) and (NeededOfficers[playerIndexList] >= 1) then
							if (canbuildadvdestroyer[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "hgn_advdestroyer")
								Player_RestrictBuildOption(playerIndex, "hgn_advdestroyer1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_artillerydestroyer")
								Player_RestrictBuildOption(playerIndex, "hgn_artillerydestroyer1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_smasher")
								Player_RestrictBuildOption(playerIndex, "hgn_smasher1")
								canbuildadvdestroyer[playerIndexList] = 0
							end  
						end
						
						if (NeededPilots[playerIndexList] < 20) or (NeededOfficers[playerIndexList] < 2) then
							if (canbuildtanker[playerIndexList] == 0) then  
								Player_RestrictBuildOption(playerIndex, "hgn_tanker")
								Player_UnrestrictBuildOption(playerIndex, "hgn_tanker1") 
								canbuildtanker[playerIndexList] = 1
							end	              
						elseif (NeededPilots[playerIndexList] >= 20) and (NeededOfficers[playerIndexList] >= 2) then
							if (canbuildtanker[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "hgn_tanker")
								Player_RestrictBuildOption(playerIndex, "hgn_tanker1")   
								canbuildtanker[playerIndexList] = 0
							end	                    
						end
						
						if (NeededPilots[playerIndexList] < 10) or (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_researchstation") >= 1) or (NeededOfficers[playerIndexList] < 1) then            
							if (canbuildrs[playerIndexList] == 0) then  								
								Player_RestrictBuildOption(playerIndex, "hgn_researchstation")
								Player_UnrestrictBuildOption(playerIndex, "hgn_researchstation1")	            
								canbuildrs[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 10) and (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_researchstation") == 0) and (NeededOfficers[playerIndexList] >= 1) then                    
							if (canbuildrs[playerIndexList] == 1) then  								
								Player_UnrestrictBuildOption(playerIndex, "hgn_researchstation")
								Player_RestrictBuildOption(playerIndex, "hgn_researchstation1")	            
								canbuildrs[playerIndexList] = 0
							end  
						end    
						
						if (NeededPilots[playerIndexList] < 10) or (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_power") >= 1) or (NeededOfficers[playerIndexList] < 1) then            
							if (canbuildps[playerIndexList] == 0) then  	            
								Player_RestrictBuildOption(playerIndex, "hgn_power")
								Player_UnrestrictBuildOption(playerIndex, "hgn_power1")
								canbuildps[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 10) and (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_power") == 0) and (NeededOfficers[playerIndexList] >= 1) then                    
							if (canbuildps[playerIndexList] == 1) then  	            
								Player_UnrestrictBuildOption(playerIndex, "hgn_power")
								Player_RestrictBuildOption(playerIndex, "hgn_power1")
								canbuildps[playerIndexList] = 0
							end  
						end    
						
						if (NeededPilots[playerIndexList] < 30) or (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_combatbase") >= 1) or (NeededOfficers[playerIndexList] < 3) then            
							if (canbuildws[playerIndexList] == 0) then  	            
								Player_RestrictBuildOption(playerIndex, "hgn_combatbase")
								Player_UnrestrictBuildOption(playerIndex, "hgn_combatbase1")
								canbuildws[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 30) and (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_combatbase") == 0) and (NeededOfficers[playerIndexList] >= 3) then                    
							if (canbuildws[playerIndexList] == 1) then  	            
								Player_UnrestrictBuildOption(playerIndex, "hgn_combatbase")
								Player_RestrictBuildOption(playerIndex, "hgn_combatbase1")
								canbuildws[playerIndexList] = 0
							end  
						end    
						
						if (NeededPilots[playerIndexList] < 23) or (NeededOfficers[playerIndexList] < 2) then
							if (canbuildcruisera[playerIndexList] == 0) then  
								Player_RestrictBuildOption(playerIndex, "hgn_cruisera")
								Player_UnrestrictBuildOption(playerIndex, "hgn_cruisera1")
								Player_RestrictBuildOption(playerIndex, "hgn_cruiserb")
								Player_UnrestrictBuildOption(playerIndex, "hgn_cruiserb1")
								canbuildcruisera[playerIndexList] = 1
							end							
						elseif (NeededPilots[playerIndexList] >= 23) and (NeededOfficers[playerIndexList] >= 2) then
							if (canbuildcruisera[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "hgn_cruisera")
								Player_RestrictBuildOption(playerIndex, "hgn_cruisera1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_cruiserb")
								Player_RestrictBuildOption(playerIndex, "hgn_cruiserb1")
								canbuildcruisera[playerIndexList] = 0
							end  							
						end
														
						if (NeededPilots[playerIndexList] < 30) or (NeededOfficers[playerIndexList] < 3)  then
							if (canbuildbc[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "hgn_battlecarrier")
								Player_UnrestrictBuildOption(playerIndex, "hgn_battlecarrier1")            
								Player_RestrictBuildOption(playerIndex, "hgn_battlecruiser")
								Player_UnrestrictBuildOption(playerIndex, "hgn_battlecruiser1")
								canbuildbc[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 30) and (NeededOfficers[playerIndexList] >= 3) then
							if (canbuildbc[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "hgn_battlecarrier")
								Player_RestrictBuildOption(playerIndex, "hgn_battlecarrier1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_battlecruiser")
								Player_RestrictBuildOption(playerIndex, "hgn_battlecruiser1")
								canbuildbc[playerIndexList] = 0
							end  
						end
						
						if (NeededPilots[playerIndexList] < 35) or (NeededOfficers[playerIndexList] < 4)  then
							if (canbuildv[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "hgn_vortex")
								Player_UnrestrictBuildOption(playerIndex, "hgn_vortex1")
								canbuildv[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 35) and (NeededOfficers[playerIndexList] >= 4) then
							if (canbuildv[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "hgn_vortex")
								Player_RestrictBuildOption(playerIndex, "hgn_vortex1")
								canbuildv[playerIndexList] = 0
							end  
						end
						
						if (NeededPilots[playerIndexList] < 45) or (NeededOfficers[playerIndexList] < 5)  then
							if (canbuildbs[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "hgn_battleship")
								Player_UnrestrictBuildOption(playerIndex, "hgn_battleship1")
								Player_RestrictBuildOption(playerIndex, "hgn_shipyard_g")
								Player_UnrestrictBuildOption(playerIndex, "hgn_shipyard_g1")
								canbuildbs[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 45) and (NeededOfficers[playerIndexList] >= 5) then
							if (canbuildbs[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "hgn_battleship")
								Player_RestrictBuildOption(playerIndex, "hgn_battleship1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_shipyard_g")
								Player_RestrictBuildOption(playerIndex, "hgn_shipyard_g1")
								canbuildbs[playerIndexList] = 0
							end  
						end
						
						if (NeededPilots[playerIndexList] < 30) or (NeededOfficers[playerIndexList] < 2)  then
							if (canbuildc[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "hgn_carrier")
								Player_UnrestrictBuildOption(playerIndex, "hgn_carrier1")
								Player_RestrictBuildOption(playerIndex, "hgn_spacecarrier")
								Player_UnrestrictBuildOption(playerIndex, "hgn_spacecarrier1")
								canbuildc[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 30) and (NeededOfficers[playerIndexList] >= 2) then
							if (canbuildc[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "hgn_carrier")
								Player_RestrictBuildOption(playerIndex, "hgn_carrier1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_spacecarrier")
								Player_RestrictBuildOption(playerIndex, "hgn_spacecarrier1")
								canbuildc[playerIndexList] = 0
							end  
						end
						
						if (NeededPilots[playerIndexList] < 40) or (NeededOfficers[playerIndexList] < 3) then
							if (canbuildsy[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "hgn_shipyard")
								Player_UnrestrictBuildOption(playerIndex, "hgn_shipyard1")								
								canbuildsy[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 40) and (NeededOfficers[playerIndexList] >= 3) then
							if (canbuildsy[playerIndexList] == 1) then   
								Player_UnrestrictBuildOption(playerIndex, "hgn_shipyard")
								Player_RestrictBuildOption(playerIndex, "hgn_shipyard1")								
								canbuildsy[playerIndexList] = 0
							end  
						end   
						
						if (NeededPilots[playerIndexList] < 60) or (NeededOfficers[playerIndexList] < 6) then
							if (canbuildcf[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "hgn_commandfortress")
								Player_UnrestrictBuildOption(playerIndex, "hgn_commandfortress1")
								Player_RestrictBuildOption(playerIndex, "hgn_ark")
								Player_UnrestrictBuildOption(playerIndex, "hgn_ark1")
								Player_RestrictBuildOption(playerIndex, "hgn_battleshipyard")
								Player_UnrestrictBuildOption(playerIndex, "hgn_battleshipyard1")
								canbuildcf[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 60) and (NeededOfficers[playerIndexList] >= 6) then
							if (canbuildcf[playerIndexList] == 1) then   
								Player_UnrestrictBuildOption(playerIndex, "hgn_commandfortress")
								Player_RestrictBuildOption(playerIndex, "hgn_commandfortress1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_ark")
								Player_RestrictBuildOption(playerIndex, "hgn_ark1")
								Player_UnrestrictBuildOption(playerIndex, "hgn_battleshipyard")
								Player_RestrictBuildOption(playerIndex, "hgn_battleshipyard1")
								canbuildcf[playerIndexList] = 0
							end  
						end   	         
          else
					  --in base alle ricerche setta il massimo dei piloti          
						if Player_HasResearch(playerIndex, "Crew6" ) == 1 then
							pilotmaxList[playerIndexList] = pilotmaxList[playerIndexList] + pilottoadd           
						end
						if Player_HasResearch(playerIndex, "Crew5" ) == 1 then
							pilotmaxList[playerIndexList] = pilotmaxList[playerIndexList] + pilottoadd           
						end
						if Player_HasResearch(playerIndex, "Crew4" ) == 1 then
							pilotmaxList[playerIndexList] = pilotmaxList[playerIndexList] + pilottoadd     
						end
						if Player_HasResearch(playerIndex, "Crew3" ) == 1 then
							pilotmaxList[playerIndexList] = pilotmaxList[playerIndexList] + pilottoadd     
						end
						if Player_HasResearch(playerIndex, "Crew2" ) == 1 then
							pilotmaxList[playerIndexList] = pilotmaxList[playerIndexList] + pilottoadd    
						end
						if Player_HasResearch(playerIndex, "Crew1" ) == 1 then
							pilotmaxList[playerIndexList] = pilotmaxList[playerIndexList] + pilottoadd       
						end          
						if Player_HasResearch(playerIndex, "Officer5" ) == 1 then
							officermaxList[playerIndexList] = officermaxList[playerIndexList] + officertoadd            
						end
						if Player_HasResearch(playerIndex, "Officer4" ) == 1 then
							officermaxList[playerIndexList] = officermaxList[playerIndexList] + officertoadd         
						end
						if Player_HasResearch(playerIndex, "Officer3" ) == 1 then
							officermaxList[playerIndexList] = officermaxList[playerIndexList] + officertoadd           
						end
						if Player_HasResearch(playerIndex, "Officer2" ) == 1 then
							officermaxList[playerIndexList] = officermaxList[playerIndexList] + officertoadd      
						end
						if Player_HasResearch(playerIndex, "Officer1" ) == 1 then
							officermaxList[playerIndexList] = officermaxList[playerIndexList] + officertoadd          
						end          
						NeededPilots[playerIndexList] = pilotmaxList[playerIndexList] - pilotpopList[playerIndexList]
						NeededOfficers[playerIndexList] = officermaxList[playerIndexList] - officerpopList[playerIndexList] 
						if NeededPilots[playerIndexList] < 0 then
							NeededPilots[playerIndexList] = 0
						end  
						if NeededOfficers[playerIndexList] < 0 then
							NeededOfficers[playerIndexList] = 0
						end
						--blocca sblocca          
						if (NeededPilots[playerIndexList] < 1) then
							if (canbuildgunturret[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "vgr_weaponplatform_gun")
								Player_UnrestrictBuildOption(playerIndex, "vgr_weaponplatform_gun1")
								Player_RestrictBuildOption(playerIndex, "vgr_weaponplatform_lance")
								Player_UnrestrictBuildOption(playerIndex, "vgr_weaponplatform_lance1")
								canbuildgunturret[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 1) then
							if (canbuildgunturret[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "vgr_weaponplatform_gun")
								Player_RestrictBuildOption(playerIndex, "vgr_weaponplatform_gun1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_weaponplatform_lance")
								Player_RestrictBuildOption(playerIndex, "vgr_weaponplatform_lance1")
								canbuildgunturret[playerIndexList] = 0
							end  
						end
						
						if (NeededPilots[playerIndexList] < 2) then
							if (canbuildpulsarturret[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "vgr_weaponplatform_missile")
								Player_UnrestrictBuildOption(playerIndex, "vgr_weaponplatform_missile1")
								Player_RestrictBuildOption(playerIndex, "vgr_hyperspace_platform")
								Player_UnrestrictBuildOption(playerIndex, "vgr_hyperspace_platform1") 
								Player_RestrictBuildOption(playerIndex, "vgr_resourcecollector")
								Player_UnrestrictBuildOption(playerIndex, "vgr_resourcecollector1")
								Player_RestrictBuildOption(playerIndex, "vgr_commandcorvette")
								Player_UnrestrictBuildOption(playerIndex, "vgr_commandcorvette1")
								canbuildpulsarturret[playerIndexList] = 1
							end							
						elseif (NeededPilots[playerIndexList] >= 2) then
							if (canbuildpulsarturret[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "vgr_weaponplatform_missile")
								Player_RestrictBuildOption(playerIndex, "vgr_weaponplatform_missile1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_hyperspace_platform")
								Player_RestrictBuildOption(playerIndex, "vgr_hyperspace_platform1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_resourcecollector")
								Player_RestrictBuildOption(playerIndex, "vgr_resourcecollector1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_commandcorvette")
								Player_RestrictBuildOption(playerIndex, "vgr_commandcorvette1")
								canbuildpulsarturret[playerIndexList] = 0
							end							
						end
						
						if (NeededPilots[playerIndexList] < 3) then
							if (canbuildscout[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "vgr_scout")
								Player_UnrestrictBuildOption(playerIndex, "vgr_scout1")
								Player_RestrictBuildOption(playerIndex, "vgr_minelayercorvette")
								Player_UnrestrictBuildOption(playerIndex, "vgr_minelayercorvette1") 
								canbuildscout[playerIndexList] = 1
							end							       
						elseif (NeededPilots[playerIndexList] >= 3) then
							if (canbuildscout[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "vgr_scout")
								Player_RestrictBuildOption(playerIndex, "vgr_scout1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_minelayercorvette")
								Player_RestrictBuildOption(playerIndex, "vgr_minelayercorvette1") 
								canbuildscout[playerIndexList] = 0
							end							       
						end
						
						if (NeededPilots[playerIndexList] < 4) then
							if (canbuildcontroller[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "vgr_resourcecontroller")
								Player_UnrestrictBuildOption(playerIndex, "vgr_resourcecontroller1")
								Player_RestrictBuildOption(playerIndex, "vgr_mobile_inhibitor")
								Player_UnrestrictBuildOption(playerIndex, "vgr_mobile_inhibitor1")
								Player_RestrictBuildOption(playerIndex, "vgr_container")
								Player_UnrestrictBuildOption(playerIndex, "vgr_container1")
								canbuildcontroller[playerIndexList] = 1
							end	          
						elseif (NeededPilots[playerIndexList] >= 4) then
							if (canbuildcontroller[playerIndexList] == 1) then 
								Player_UnrestrictBuildOption(playerIndex, "vgr_resourcecontroller")
								Player_RestrictBuildOption(playerIndex, "vgr_resourcecontroller1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_mobile_inhibitor")
								Player_RestrictBuildOption(playerIndex, "vgr_mobile_inhibitor1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_container")
								Player_RestrictBuildOption(playerIndex, "vgr_container1")
								canbuildcontroller[playerIndexList] = 0
							end	           
						end
						
						if (NeededPilots[playerIndexList] < 5) then   
							if (canbuildhft[playerIndexList] == 0) then         
								Player_RestrictBuildOption(playerIndex, "vgr_defender")
								Player_UnrestrictBuildOption(playerIndex, "vgr_defender1")
								Player_RestrictBuildOption(playerIndex, "vgr_lancefighter")
								Player_UnrestrictBuildOption(playerIndex, "vgr_lancefighter1") 
								Player_RestrictBuildOption(playerIndex, "vgr_heavyfighter")
								Player_UnrestrictBuildOption(playerIndex, "vgr_heavyfighter1") 
								Player_RestrictBuildOption(playerIndex, "vgr_elitefighter")
								Player_UnrestrictBuildOption(playerIndex, "vgr_elitefighter1") 
								canbuildhft[playerIndexList] = 1
							end							            
						elseif (NeededPilots[playerIndexList] >= 5) then    
							if (canbuildhft[playerIndexList] == 1) then           
								Player_UnrestrictBuildOption(playerIndex, "vgr_defender")
								Player_RestrictBuildOption(playerIndex, "vgr_defender1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_lancefighter")
								Player_RestrictBuildOption(playerIndex, "vgr_lancefighter1")  
								Player_UnrestrictBuildOption(playerIndex, "vgr_heavyfighter")
								Player_RestrictBuildOption(playerIndex, "vgr_heavyfighter1") 
                Player_UnrestrictBuildOption(playerIndex, "vgr_elitefighter")
								Player_RestrictBuildOption(playerIndex, "vgr_elitefighter1")  								
								canbuildhft[playerIndexList] = 0
							end							   
						end
						
						if (NeededPilots[playerIndexList] < 6) then
							if (canbuildbomber[playerIndexList] == 0) then        
								Player_RestrictBuildOption(playerIndex, "vgr_bomber")
								Player_UnrestrictBuildOption(playerIndex, "vgr_bomber1")
								Player_RestrictBuildOption(playerIndex, "vgr_missilebomber")
								Player_UnrestrictBuildOption(playerIndex, "vgr_missilebomber1")
								Player_RestrictBuildOption(playerIndex, "vgr_empcorvette")
								Player_UnrestrictBuildOption(playerIndex, "vgr_empcorvette1")
								Player_RestrictBuildOption(playerIndex, "vgr_heavymissilefrigate")
								Player_UnrestrictBuildOption(playerIndex, "vgr_heavymissilefrigate1")
								Player_RestrictBuildOption(playerIndex, "vgr_assaultfrigate")
								Player_UnrestrictBuildOption(playerIndex, "vgr_assaultfrigate1")  
								canbuildbomber[playerIndexList] = 1
							end							
						elseif (NeededPilots[playerIndexList] >= 6) then
							if (canbuildbomber[playerIndexList] == 1) then                
								Player_UnrestrictBuildOption(playerIndex, "vgr_bomber")
								Player_RestrictBuildOption(playerIndex, "vgr_bomber1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_missilebomber")
								Player_RestrictBuildOption(playerIndex, "vgr_missilebomber1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_empcorvette")
								Player_RestrictBuildOption(playerIndex, "vgr_empcorvette1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_heavymissilefrigate")
								Player_RestrictBuildOption(playerIndex, "vgr_heavymissilefrigate1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_assaultfrigate")
								Player_RestrictBuildOption(playerIndex, "vgr_assaultfrigate1")       
								canbuildbomber[playerIndexList] = 0
							end							
						end
						
						if (NeededPilots[playerIndexList] < 7) then
							if (canbuildmarine[playerIndexList] == 0) then 
								Player_RestrictBuildOption(playerIndex, "vgr_infiltratorfrigate")
								Player_UnrestrictBuildOption(playerIndex, "vgr_infiltratorfrigate1")								
								Player_RestrictBuildOption(playerIndex, "vgr_supportfrigatearmed")
								Player_UnrestrictBuildOption(playerIndex, "vgr_supportfrigatearmed1")								
								Player_RestrictBuildOption(playerIndex, "vgr_advassaultfrigate")
								Player_UnrestrictBuildOption(playerIndex, "vgr_advassaultfrigate1")  
                Player_RestrictBuildOption(playerIndex, "vgr_interceptor")
								Player_UnrestrictBuildOption(playerIndex, "vgr_interceptor1")   								
								canbuildmarine[playerIndexList] = 1
							end							  
						elseif (NeededPilots[playerIndexList] >= 7) then
							if (canbuildmarine[playerIndexList] == 1) then
								Player_UnrestrictBuildOption(playerIndex, "vgr_infiltratorfrigate")
								Player_RestrictBuildOption(playerIndex, "vgr_infiltratorfrigate1")								
								Player_UnrestrictBuildOption(playerIndex, "vgr_supportfrigatearmed")
								Player_RestrictBuildOption(playerIndex, "vgr_supportfrigatearmed1")								
								Player_UnrestrictBuildOption(playerIndex, "vgr_advassaultfrigate")
								Player_RestrictBuildOption(playerIndex, "vgr_advassaultfrigate1")   
                Player_UnrestrictBuildOption(playerIndex, "vgr_interceptor")
								Player_RestrictBuildOption(playerIndex, "vgr_interceptor1")    								
								canbuildmarine[playerIndexList] = 0 
							end							  
						end
						
						if (NeededPilots[playerIndexList] < 8) then
							if (canbuildpulsargunship[playerIndexList] == 0) then 
								Player_RestrictBuildOption(playerIndex, "vgr_missilecorvette")
								Player_UnrestrictBuildOption(playerIndex, "vgr_missilecorvette1")
								Player_RestrictBuildOption(playerIndex, "vgr_shamshiriictg")
								Player_UnrestrictBuildOption(playerIndex, "vgr_shamshiriictg1")
								Player_RestrictBuildOption(playerIndex, "vgr_resourcecontrollerdouble")
								Player_UnrestrictBuildOption(playerIndex, "vgr_resourcecontrollerdouble1")								
								Player_RestrictBuildOption(playerIndex, "vgr_supportfrigate")
								Player_UnrestrictBuildOption(playerIndex, "vgr_supportfrigate1")
								Player_RestrictBuildOption(playerIndex, "vgr_commandfrigate")
								Player_UnrestrictBuildOption(playerIndex, "vgr_commandfrigate1")
								Player_RestrictBuildOption(playerIndex, "vgr_supportfrigate_laser")
								Player_UnrestrictBuildOption(playerIndex, "vgr_supportfrigate_laser1")
								Player_RestrictBuildOption(playerIndex, "vgr_lasercorvette")
								Player_UnrestrictBuildOption(playerIndex, "vgr_lasercorvette1")
								Player_RestrictBuildOption(playerIndex, "vgr_plasmacorvette")
								Player_UnrestrictBuildOption(playerIndex, "vgr_plasmacorvette1")
								Player_RestrictBuildOption(playerIndex, "vgr_standvette")
								Player_UnrestrictBuildOption(playerIndex, "vgr_standvette1")
								Player_RestrictBuildOption(playerIndex, "vgr_artilleryfrigate")
								Player_UnrestrictBuildOption(playerIndex, "vgr_artilleryfrigate1")
								Player_RestrictBuildOption(playerIndex, "vgr_empfrigate")
								Player_UnrestrictBuildOption(playerIndex, "vgr_empfrigate1")
								canbuildpulsargunship[playerIndexList] = 1
							end
						elseif (NeededPilots[playerIndexList] >= 8) then
							if (canbuildpulsargunship[playerIndexList] == 1) then 
								Player_UnrestrictBuildOption(playerIndex, "vgr_missilecorvette")
								Player_RestrictBuildOption(playerIndex, "vgr_missilecorvette1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_shamshiriictg")
								Player_RestrictBuildOption(playerIndex, "vgr_shamshiriictg1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_resourcecontrollerdouble")
								Player_RestrictBuildOption(playerIndex, "vgr_resourcecontrollerdouble1")								
								Player_UnrestrictBuildOption(playerIndex, "vgr_supportfrigate")
								Player_RestrictBuildOption(playerIndex, "vgr_supportfrigate1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_commandfrigate")
								Player_RestrictBuildOption(playerIndex, "vgr_commandfrigate1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_supportfrigate_laser")
								Player_RestrictBuildOption(playerIndex, "vgr_supportfrigate_laser1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_lasercorvette")
								Player_RestrictBuildOption(playerIndex, "vgr_lasercorvette1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_plasmacorvette")
								Player_RestrictBuildOption(playerIndex, "vgr_plasmacorvette1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_standvette")
								Player_RestrictBuildOption(playerIndex, "vgr_standvette1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_artilleryfrigate")
								Player_RestrictBuildOption(playerIndex, "vgr_artilleryfrigate1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_empfrigate")
								Player_RestrictBuildOption(playerIndex, "vgr_empfrigate1")
								canbuildpulsargunship[playerIndexList] = 0   
							end							
						end
						
						if (NeededPilots[playerIndexList] < 9) then
							if (canbuildbomberheavy[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "vgr_multilancecorvette")
								Player_UnrestrictBuildOption(playerIndex, "vgr_multilancecorvette1") 
								Player_RestrictBuildOption(playerIndex, "vgr_mortarcorvette")
								Player_UnrestrictBuildOption(playerIndex, "vgr_mortarcorvette1") 
								Player_RestrictBuildOption(playerIndex, "vgr_striker")
								Player_UnrestrictBuildOption(playerIndex, "vgr_striker1") 	
								Player_RestrictBuildOption(playerIndex, "vgr_longrangeartilleryfrigate")
								Player_UnrestrictBuildOption(playerIndex, "vgr_longrangeartilleryfrigate1") 	         							
								canbuildbomberheavy[playerIndexList] = 1
							end             
						elseif (NeededPilots[playerIndexList] >= 9) then
							if (canbuildbomberheavy[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "vgr_multilancecorvette")
								Player_RestrictBuildOption(playerIndex, "vgr_multilancecorvette1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_mortarcorvette")
								Player_RestrictBuildOption(playerIndex, "vgr_mortarcorvette1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_striker")
								Player_RestrictBuildOption(playerIndex, "vgr_striker1")	  
								Player_UnrestrictBuildOption(playerIndex, "vgr_longrangeartilleryfrigate")
								Player_RestrictBuildOption(playerIndex, "vgr_longrangeartilleryfrigate1")	           							
								canbuildbomberheavy[playerIndexList] = 0   
							end              
						end
						
						if (NeededPilots[playerIndexList] < 12) then
							if (canbuildhs[playerIndexList] == 0) then	            
								Player_RestrictBuildOption(playerIndex, "vgr_am")
								Player_UnrestrictBuildOption(playerIndex, "vgr_am1")
								Player_RestrictBuildOption(playerIndex, "vgr_scaver")
								Player_UnrestrictBuildOption(playerIndex, "vgr_scaver1")			
								canbuildhs[playerIndexList] = 1
							end             
						elseif (NeededPilots[playerIndexList] >= 12) then
							if (canbuildhs[playerIndexList] == 1) then  	            
								Player_UnrestrictBuildOption(playerIndex, "vgr_am")
								Player_RestrictBuildOption(playerIndex, "vgr_am1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_scaver")
								Player_RestrictBuildOption(playerIndex, "vgr_scaver1")
								canbuildhs[playerIndexList] = 0   
							end              
						end						
						
						if (NeededPilots[playerIndexList] < 15) or (NeededOfficers[playerIndexList] < 1) then
							if (canbuilddestroyer[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "vgr_destroyer")
								Player_UnrestrictBuildOption(playerIndex, "vgr_destroyer1")	 
								Player_RestrictBuildOption(playerIndex, "vgr_pulsedestroyer")
								Player_UnrestrictBuildOption(playerIndex, "vgr_pulsedestroyer1")	 
                Player_RestrictBuildOption(playerIndex, "vgr_lightcarrier")
								Player_UnrestrictBuildOption(playerIndex, "vgr_lightcarrier1")	 								
								canbuilddestroyer[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 15) and (NeededOfficers[playerIndexList] >= 1) then
							if (canbuilddestroyer[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "vgr_destroyer")
								Player_RestrictBuildOption(playerIndex, "vgr_destroyer1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_pulsedestroyer")
								Player_RestrictBuildOption(playerIndex, "vgr_pulsedestroyer1")	
                Player_UnrestrictBuildOption(playerIndex, "vgr_lightcarrier")
								Player_RestrictBuildOption(playerIndex, "vgr_lightcarrier1")									
								canbuilddestroyer[playerIndexList] = 0   
							end  
						end    
						
						if (NeededPilots[playerIndexList] < 20) or (NeededOfficers[playerIndexList] < 2) then
							if (canbuildv[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "vgr_cruiser")
								Player_UnrestrictBuildOption(playerIndex, "vgr_cruiser1")
								Player_RestrictBuildOption(playerIndex, "vgr_lightcruiser")
								Player_UnrestrictBuildOption(playerIndex, "vgr_lightcruiser1")
								Player_RestrictBuildOption(playerIndex, "vgr_artilleryship")
								Player_UnrestrictBuildOption(playerIndex, "vgr_artilleryship1")
								Player_RestrictBuildOption(playerIndex, "vgr_sinner")
								Player_UnrestrictBuildOption(playerIndex, "vgr_sinner1")
								canbuildv[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 20) and (NeededOfficers[playerIndexList] >= 2) then
							if (canbuildv[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "vgr_cruiser")
								Player_RestrictBuildOption(playerIndex, "vgr_cruiser1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_lightcruiser")
								Player_RestrictBuildOption(playerIndex, "vgr_lightcruiser1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_artilleryship")
								Player_RestrictBuildOption(playerIndex, "vgr_artilleryship1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_sinner")
								Player_RestrictBuildOption(playerIndex, "vgr_sinner1")
								canbuildv[playerIndexList] = 0   
							end  
						end    
									
						if (NeededPilots[playerIndexList] < 30) or (NeededOfficers[playerIndexList] < 3) then
							if (canbuildbc[playerIndexList] == 0) then        
								Player_RestrictBuildOption(playerIndex, "vgr_battlecruiser")
								Player_UnrestrictBuildOption(playerIndex, "vgr_battlecruiser1")
								Player_RestrictBuildOption(playerIndex, "vgr_missilebattlecruiser")
								Player_UnrestrictBuildOption(playerIndex, "vgr_missilebattlecruiser1")
								canbuildbc[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 30) and (NeededOfficers[playerIndexList] >= 3) then
							if (canbuildbc[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "vgr_battlecruiser")
								Player_RestrictBuildOption(playerIndex, "vgr_battlecruiser1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_missilebattlecruiser")
								Player_RestrictBuildOption(playerIndex, "vgr_missilebattlecruiser1")
								canbuildbc[playerIndexList] = 0   
							end  
						end
						
						if (NeededPilots[playerIndexList] < 30) or (NeededOfficers[playerIndexList] < 2) then
							if (canbuildc[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "vgr_carrier")
								Player_UnrestrictBuildOption(playerIndex, "vgr_carrier1")
								Player_RestrictBuildOption(playerIndex, "vgr_battlecarrier")
								Player_UnrestrictBuildOption(playerIndex, "vgr_battlecarrier1")
								canbuildc[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 30) and (NeededOfficers[playerIndexList] >= 2) then
							if (canbuildc[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "vgr_carrier")
								Player_RestrictBuildOption(playerIndex, "vgr_carrier1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_battlecarrier")
								Player_RestrictBuildOption(playerIndex, "vgr_battlecarrier1")
								canbuildc[playerIndexList] = 0   
							end  
						end
						
						if (NeededPilots[playerIndexList] < 35) or (NeededOfficers[playerIndexList] < 3) then
							if (canbuildbs[playerIndexList] == 0) then        
								Player_RestrictBuildOption(playerIndex, "vgr_alkhalid")
								Player_UnrestrictBuildOption(playerIndex, "vgr_alkhalid1")
								Player_RestrictBuildOption(playerIndex, "vgr_dreadnaught")
								Player_UnrestrictBuildOption(playerIndex, "vgr_dreadnaught1")
								canbuildbs[playerIndexList] = 1
							end
						elseif (NeededPilots[playerIndexList] >= 35) and (NeededOfficers[playerIndexList] >= 3) then
							if (canbuildbs[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "vgr_alkhalid")
								Player_RestrictBuildOption(playerIndex, "vgr_alkhalid1")
								Player_UnrestrictBuildOption(playerIndex, "vgr_dreadnaught")
								Player_RestrictBuildOption(playerIndex, "vgr_dreadnaught1")
								canbuildbs[playerIndexList] = 0   
							end 
						end
						
						if (NeededPilots[playerIndexList] < 40) or (NeededOfficers[playerIndexList] < 3) then
							if (canbuildsy[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "vgr_shipyard")
								Player_UnrestrictBuildOption(playerIndex, "vgr_shipyard1")
								canbuildsy[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 40) and (NeededOfficers[playerIndexList] >= 3) then
							if (canbuildsy[playerIndexList] == 1) then  
								Player_UnrestrictBuildOption(playerIndex, "vgr_shipyard")
								Player_RestrictBuildOption(playerIndex, "vgr_shipyard1")
								canbuildsy[playerIndexList] = 0   
							end  
						end    
						
						if (NeededPilots[playerIndexList] < 50) or (NeededOfficers[playerIndexList] < 6) then
							if (canbuildcf[playerIndexList] == 0) then
								Player_RestrictBuildOption(playerIndex, "vgr_commandfortress")
								Player_UnrestrictBuildOption(playerIndex, "vgr_commandfortress1")
								canbuildcf[playerIndexList] = 1
							end  
						elseif (NeededPilots[playerIndexList] >= 50) and (NeededOfficers[playerIndexList] >= 6) then
							if (canbuildcf[playerIndexList] == 1) then   
								Player_UnrestrictBuildOption(playerIndex, "vgr_commandfortress")
								Player_RestrictBuildOption(playerIndex, "vgr_commandfortress1")
								canbuildcf[playerIndexList] = 0
							end  
						end
					end	
					--setta gli ultimi piloti/ufficiali avuti x morte in battaglia    
					if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then      
						LastpilotpopList[playerIndexList] = pilotpopList[playerIndexList]  
						LastofficerpopList[playerIndexList] = officerpopList[playerIndexList]     
					else
						pilotrecruitList[playerIndexList] = pilotmaxList[playerIndexList]  
						officerrecruitList[playerIndexList] = officermaxList[playerIndexList]
					end	          
          --interface
          if playerIndex == Universe_CurrentPlayer() and ((year==0 and gametime<45) or year>0 or intro==1) then					
					  UI_SetTextLabelText("ResourceMenu", "lblPopUnits", ""..pilotpopList[playerIndexList].."/"..pilotrecruitList[playerIndexList].."/"..pilotmaxList[playerIndexList]);             
						UI_SetTextLabelText("UnitCapInfoPopup", "lblPopUnits", ""..pilotpopList[playerIndexList].."/"..pilotrecruitList[playerIndexList].."/"..pilotmaxList[playerIndexList]);         
						UI_SetTextLabelText("ResourceMenu", "lblPopOfficerUnits", ""..officerpopList[playerIndexList].."/"..officerrecruitList[playerIndexList].."/"..officermaxList[playerIndexList]);             
						UI_SetTextLabelText("UnitCapInfoPopup", "lblPopOfficerUnits", ""..officerpopList[playerIndexList].."/"..officerrecruitList[playerIndexList].."/"..officermaxList[playerIndexList]);                       
						UI_SetTextLabelText("UnitCapInfoPopup", "fighter", ""..fighter[playerIndexList]);
						UI_SetTextLabelText("UnitCapInfoPopup", "corvette", ""..corvette[playerIndexList]);
						UI_SetTextLabelText("UnitCapInfoPopup", "frigate", ""..frigate[playerIndexList]);
						UI_SetTextLabelText("UnitCapInfoPopup", "capital", ""..(capital[playerIndexList]+armedcapital[playerIndexList]+superarmedcapital[playerIndexList]));
						UI_SetTextLabelText("UnitCapInfoPopup", "platform", ""..platform[playerIndexList]);
						UI_SetTextLabelText("UnitCapInfoPopup", "utility", ""..utility[playerIndexList]);
						UI_SetTextLabelText("UnitCapInfoPopup", "fleet", ""..pilotpopdisplayList[playerIndexList]);						
					end					
        end
				if hwsaving[3] == 9 or year == 0 then        
					--in base all'onore da accesso o meno alla costruzione dei moduli per l'arruolamento x entrambe le razze 	                
					if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "supporter") >= 1 then
						--fleet admiral 
						if honorList[playerIndexList] >= 480 then
							if Player_GetRace(playerIndex) == Race_Hiigaran and year > 0 then   
								if SobGroup_Empty("hgn_crewstation"..playerIndex) == 1 then
								elseif SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isFleetAdmiral") > 0 then	              
									if rankflag[playerIndexList] < 7 then
										rankflag[playerIndexList] = 7
										gradoList[playerIndexList] = "FLEET ADMIRAL"
										gradoa[playerIndexList] = "FLEET ADMIRAL "
									end
								else
									--if prioritamessaggio < 20 then
									if (((gametime<95 and gametime>70) or (gametime<45 and gametime>20)) and playerIndex == Universe_CurrentPlayer() and Player_HasShipWithBuildQueue(playerIndex) == 1) then 
										Subtitle_Add(Actor_Talorn,"Next military rank available", 7)  
									end  
									--end
									honorList1[playerIndexList] = 480
								end
							else
							  if rankflag[playerIndexList] < 7 then
									rankflag[playerIndexList] = 7
									gradoList[playerIndexList] = "FLEET ADMIRAL"
									gradoa[playerIndexList] = "FLEET ADMIRAL "
									honorList1[playerIndexList] = 480	  
								end	
							end  
							--a ritroso          
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isLieutenant") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isLieutenant")            
							end               
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCommander") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCommander")            
							end  
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCaptain") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCaptain")            
							end 
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCommodore") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCommodore")            
							end 
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isAdmiral") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isAdmiral")            
							end                          
							--attuale                                  
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isFleetAdmiral") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isFleetAdmiral")    
								if year >= 1 then   
									if Player_GetRace(playerIndex) == Race_Hiigaran then	                
									else 
										honorbonus[playerIndexList] = honorbonus[playerIndexList] + 3   
									end
								end     
							end                        
				
						--admiral          
						elseif honorList[playerIndexList] >= 350 then
							if Player_GetRace(playerIndex) == Race_Hiigaran and year > 0 then   
								if SobGroup_Empty("hgn_crewstation"..playerIndex) == 1 then
								elseif SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isAdmiral") > 0 then	              
									if rankflag[playerIndexList] < 6 then
										rankflag[playerIndexList] = 6
										gradoList[playerIndexList] = "ADMIRAL      "
										gradoa[playerIndexList] = "ADMIRAL       "	
										honorList1[playerIndexList] = 480
									end
								else
									honorList1[playerIndexList] = 480
									if (((gametime<95 and gametime>70) or (gametime<45 and gametime>20)) and playerIndex == Universe_CurrentPlayer() and Player_HasShipWithBuildQueue(playerIndex) == 1) then 
										Subtitle_Add(Actor_Talorn,"Next military rank available", 7)  
									end    			          
								end
							else
							  if rankflag[playerIndexList] < 6 then
									rankflag[playerIndexList] = 6
									gradoList[playerIndexList] = "ADMIRAL      "
									gradoa[playerIndexList] = "ADMIRAL       "	
									honorList1[playerIndexList] = 480
								end	
							end  
							--a ritroso          
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isLieutenant") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isLieutenant")            
							end               
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCommander") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCommander")            
							end  
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCaptain") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCaptain")            
							end 
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCommodore") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCommodore")            
							end                      
							--attuale                                       
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isAdmiral") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isAdmiral")      
								if year >= 1 then   
									if Player_GetRace(playerIndex) == Race_Hiigaran then	                
									else 
										honorbonus[playerIndexList] = honorbonus[playerIndexList] + 3   
									end   
								end      
							end 			
													
						--Commodore       
						elseif honorList[playerIndexList] >= 240 then
							if Player_GetRace(playerIndex) == Race_Hiigaran and year > 0 then   
								if SobGroup_Empty("hgn_crewstation"..playerIndex) == 1 then
								elseif SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isCommodore") > 0 then	                
									if rankflag[playerIndexList] < 5 then
										rankflag[playerIndexList] = 5
										gradoList[playerIndexList] = "COMMODORE    "
										gradoa[playerIndexList] = "COMMODORE     "
										honorList1[playerIndexList] = 350	
									end
								else
									honorList1[playerIndexList] = 350
									if (((gametime<95 and gametime>70) or (gametime<45 and gametime>20)) and playerIndex == Universe_CurrentPlayer() and Player_HasShipWithBuildQueue(playerIndex) == 1) then 
										Subtitle_Add(Actor_Talorn,"Next military rank available", 7)  
									end   
								end
							else
							  if rankflag[playerIndexList] < 5 then
									rankflag[playerIndexList] = 5
									gradoList[playerIndexList] = "COMMODORE    "
									gradoa[playerIndexList] = "COMMODORE     "	  
									honorList1[playerIndexList] = 350  
								end	
							end           
							--a ritroso          
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isLieutenant") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isLieutenant")            
							end               
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCommander") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCommander")            
							end  
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCaptain") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCaptain")            
							end                  
							--attuale                      
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCommodore") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCommodore")   
								if year >= 1 then   
									if Player_GetRace(playerIndex) == Race_Hiigaran then	                
									else 
										honorbonus[playerIndexList] = honorbonus[playerIndexList] + 3   
									end   
								end  
							end	          
				
						--Captain              
						elseif honorList[playerIndexList] >= 150 then
							if Player_GetRace(playerIndex) == Race_Hiigaran and year > 0 then   
								if SobGroup_Empty("hgn_crewstation"..playerIndex) == 1 then
								elseif SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isCaptain") > 0 then	              
									if rankflag[playerIndexList] < 4 then
										rankflag[playerIndexList] = 4
										gradoList[playerIndexList] = "CAPTAIN      "
										gradoa[playerIndexList] = "CAPTAIN       "	
										honorList1[playerIndexList] = 240
									end
								else
									honorList1[playerIndexList] = 240
									if (((gametime<95 and gametime>70) or (gametime<45 and gametime>20)) and playerIndex == Universe_CurrentPlayer() and Player_HasShipWithBuildQueue(playerIndex) == 1) then 
										Subtitle_Add(Actor_Talorn,"Next military rank available", 7)  
									end  
								end
							else
							  if rankflag[playerIndexList] < 4 then
									rankflag[playerIndexList] = 4
									gradoList[playerIndexList] = "CAPTAIN      "
									gradoa[playerIndexList] = "CAPTAIN       "	
									honorList1[playerIndexList] = 240
								end	
							end  
							--a ritroso          
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isLieutenant") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isLieutenant")            
							end               
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCommander") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCommander")            
							end               
							--attuale                                   
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCaptain") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCaptain")    
								if year >= 1 then   
									if Player_GetRace(playerIndex) == Race_Hiigaran then	                
									else 
										honorbonus[playerIndexList] = honorbonus[playerIndexList] + 3   
									end   
								end      
							end 	    
							
						--Commander                               
						elseif honorList[playerIndexList] >= 80 then
							if Player_GetRace(playerIndex) == Race_Hiigaran and year > 0 then   
								if SobGroup_Empty("hgn_crewstation"..playerIndex) == 1 then
								elseif SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isCommander") > 0 then	              
									if rankflag[playerIndexList] < 3 then
										rankflag[playerIndexList] = 3
										gradoList[playerIndexList] = "COMMANDER    "
										gradoa[playerIndexList] = "COMMANDER     "	
										honorList1[playerIndexList] = 150
									end
								else
									honorList1[playerIndexList] = 150
									if (((gametime<95 and gametime>70) or (gametime<45 and gametime>20)) and playerIndex == Universe_CurrentPlayer() and Player_HasShipWithBuildQueue(playerIndex) == 1) then 
										Subtitle_Add(Actor_Talorn,"Next military rank available", 7)  
									end  
								end
							else
							  if rankflag[playerIndexList] < 3 then
									rankflag[playerIndexList] = 3
									gradoList[playerIndexList] = "COMMANDER    "
									gradoa[playerIndexList] = "COMMANDER     "	
									honorList1[playerIndexList] = 150
								end	
							end  
							--a ritroso          
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isLieutenant") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isLieutenant")            
							end   
							--attuale                  
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isCommander") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isCommander")   
								if year >= 1 then   
									if Player_GetRace(playerIndex) == Race_Hiigaran then	                
									else 
										honorbonus[playerIndexList] = honorbonus[playerIndexList] + 3   
									end   
								end  
							end 			 	                            	               
				 
						--Lieutenant          
						elseif honorList[playerIndexList] >= 30 then	          
							if Player_GetRace(playerIndex) == Race_Hiigaran and year > 0 then   
								if SobGroup_Empty("hgn_crewstation"..playerIndex) == 1 then
								elseif SobGroup_GetHardPointHealth("hgn_crewstation"..playerIndex, "isLieutenant") > 0 then	              
									if rankflag[playerIndexList] < 2 then
										rankflag[playerIndexList] = 2
										gradoList[playerIndexList] = "LIEUTENANT   "
										gradoa[playerIndexList] = "LIEUTENANT    "  
										honorList1[playerIndexList] = 80
									end
								else
									honorList1[playerIndexList] = 80	   
									if (((gametime<95 and gametime>70) or (gametime<45 and gametime>20)) and playerIndex == Universe_CurrentPlayer() and Player_HasShipWithBuildQueue(playerIndex) == 1) then 
										Subtitle_Add(Actor_Talorn,"Next military rank available", 7)  
									end  
									--UI_FlashButton("ResourceMenu", "lblhonorflash", 3)       
								end
							else
							  if rankflag[playerIndexList] < 2 then
									rankflag[playerIndexList] = 2
									gradoList[playerIndexList] = "LIEUTENANT   "
									gradoa[playerIndexList] = "LIEUTENANT    "  
									honorList1[playerIndexList] = 80
								end	
							end  
							--attuale                	
							if SobGroup_GetHardPointHealth("supporter"..playerIndex, "isLieutenant") == 0 then   
								SobGroup_CreateSubSystem("supporter"..playerIndex, "isLieutenant")
								if year >= 1 then   
									if Player_GetRace(playerIndex) == Race_Hiigaran then	                
									else 
										honorbonus[playerIndexList] = honorbonus[playerIndexList] + 3   
									end   
								end          
							end   	         
				
						--Ensign
						else 	         	
							if rankflag[playerIndexList] < 1 then
								rankflag[playerIndexList] = 1
								gradoList[playerIndexList] = "ENSIGN       "
								gradoa[playerIndexList] = "ENSIGN        "   
								honorList1[playerIndexList] = 30 
							end
						end	     
					end
					
					--interface
          if playerIndex == Universe_CurrentPlayer() and ((year==0 and gametime<45) or year>0 or intro==1) then					  
						UI_SetTextLabelText("ResourceMenu", "lblgrado", ""..gradoa[playerIndexList]);  
						UI_SetTextLabelText("UnitCapInfoPopup", "lblgrado1", ""..gradoa[playerIndexList]);  					  
            --rank remuneration          
						if ((lastgradoList[playerIndexList] ~= gradoList[playerIndexList]) and (cinecontatore[1] == 0)) then               
							UI_SetTextLabelText("UnitCapInfoPopup", "lblscore", ""..scoreList[Universe_CurrentPlayer() + 1]);  --serve x partenza							
							if gradoList[playerIndexList] == "ENSIGN       " then	
								remuneration = floor(200 * rankremuneration)			        
								UI_SetScreenEnabled("rank", 1)		
								UI_SetScreenVisible("rank", 1)	
								UI_SetTextLabelText("rank", "lblSubTitle", "ENSIGN");									
								UI_SetElementVisible("rank", "ensign", 1) 
								UI_SetElementVisible("rank", "lieutenant", 0) 
								UI_SetElementVisible("rank", "commander", 0) 
								UI_SetElementVisible("rank", "captain", 0) 
								UI_SetElementVisible("rank", "commodore", 0) 
								UI_SetElementVisible("rank", "admiral", 0) 
								UI_SetElementVisible("rank", "fleetadmiral", 0) 												
								UI_SetTextLabelText("rank", "lblDescription1", "Remunuration per year: "..remuneration); 	 
								UI_SetTextLabelText("rank", "lblDescription2", "Next military rank: Lieutenant (30 Honor points)"); 	
								Subtitle_Add(Actor_Talorn,"You gain the Ensign military rank", 7)  								
								Sound_SpeechPlay("Data:sound/sfx/etg/sp_elements/sp_elements_distanceexplosion/sp_elements_distanceexplosion")
								--Sound_SpeechPlay("Data:sound/sfx/etg/sp_elements/sp_elements_planet_killer_missile_hit/sp_elements_planet_killer_missile_hit")															
							
							elseif gradoList[playerIndexList] == "LIEUTENANT   " then
								remuneration = floor(600 * rankremuneration)			        
								UI_SetScreenEnabled("rank", 1)		
								UI_SetScreenVisible("rank", 1)	
								UI_SetTextLabelText("rank", "lblSubTitle", "LIEUTENANT");		
								UI_SetElementVisible("rank", "ensign", 0) 
								UI_SetElementVisible("rank", "lieutenant", 1) 
								UI_SetElementVisible("rank", "commander", 0) 
								UI_SetElementVisible("rank", "captain", 0) 
								UI_SetElementVisible("rank", "commodore", 0) 
								UI_SetElementVisible("rank", "admiral", 0) 
								UI_SetElementVisible("rank", "fleetadmiral", 0) 									
								UI_SetTextLabelText("rank", "lblDescription1", "Remunuration per year: "..remuneration); 	 
								UI_SetTextLabelText("rank", "lblDescription2", "Next military rank: Commander (80 Honor points)"); 
								UI_SetTextLabelText("rank", "lblDescription3", "Now you can build barracks, recruit pilots");
								Subtitle_Add(Actor_Talorn,"You gain the Lieutenant military rank", 7) 
								Sound_SpeechPlay("Data:sound/sfx/etg/sp_elements/sp_elements_distanceexplosion/sp_elements_distanceexplosion") 	
							
							elseif gradoList[playerIndexList] == "COMMANDER    " then
								remuneration = floor(1000 * rankremuneration)			        
								UI_SetScreenEnabled("rank", 1)		
								UI_SetScreenVisible("rank", 1)	
								UI_SetTextLabelText("rank", "lblSubTitle", "COMMANDER");	
								UI_SetElementVisible("rank", "ensign", 0) 
								UI_SetElementVisible("rank", "lieutenant", 0) 
								UI_SetElementVisible("rank", "commander", 1) 
								UI_SetElementVisible("rank", "captain", 0) 
								UI_SetElementVisible("rank", "commodore", 0) 
								UI_SetElementVisible("rank", "admiral", 0) 
								UI_SetElementVisible("rank", "fleetadmiral", 0) 										
								UI_SetTextLabelText("rank", "lblDescription1", "Remunuration per year: "..remuneration); 	 
								UI_SetTextLabelText("rank", "lblDescription2", "Next military rank: Captain (150 Honor points)"); 
								UI_SetTextLabelText("rank", "lblDescription3", "Now you can build barracks, recruit pilots and officers");
								Subtitle_Add(Actor_Talorn,"You gain the Commander military rank", 7) 
								Sound_SpeechPlay("Data:sound/sfx/etg/sp_elements/sp_elements_distanceexplosion/sp_elements_distanceexplosion")
							
							elseif gradoList[playerIndexList] == "CAPTAIN      " then
								remuneration = floor(1400 * rankremuneration)			        
								UI_SetScreenEnabled("rank", 1)		
								UI_SetScreenVisible("rank", 1)	
								UI_SetTextLabelText("rank", "lblSubTitle", "CAPTAIN");	
								UI_SetElementVisible("rank", "ensign", 0) 
								UI_SetElementVisible("rank", "lieutenant", 0) 
								UI_SetElementVisible("rank", "commander", 0) 
								UI_SetElementVisible("rank", "captain", 1) 
								UI_SetElementVisible("rank", "commodore", 0) 
								UI_SetElementVisible("rank", "admiral", 0) 
								UI_SetElementVisible("rank", "fleetadmiral", 0) 										
								UI_SetTextLabelText("rank", "lblDescription1", "Remunuration per year: "..remuneration); 	 
								UI_SetTextLabelText("rank", "lblDescription2", "Next military rank: Commodore (240 Honor points)"); 							
								UI_SetTextLabelText("rank", "lblDescription3", "Now you can build barracks, recruit pilots and officers");
								Subtitle_Add(Actor_Talorn,"You gain the Captain military rank", 7) 
								Sound_SpeechPlay("Data:sound/sfx/etg/sp_elements/sp_elements_distanceexplosion/sp_elements_distanceexplosion")
							
							elseif gradoList[playerIndexList] == "COMMODORE    " then
								remuneration = floor(1800 * rankremuneration)			        
								UI_SetScreenEnabled("rank", 1)		
								UI_SetScreenVisible("rank", 1)	
								UI_SetTextLabelText("rank", "lblSubTitle", "COMMODORE");	
								UI_SetElementVisible("rank", "ensign", 0) 
								UI_SetElementVisible("rank", "lieutenant", 0) 
								UI_SetElementVisible("rank", "commander", 0) 
								UI_SetElementVisible("rank", "captain", 0) 
								UI_SetElementVisible("rank", "commodore", 1) 
								UI_SetElementVisible("rank", "admiral", 0) 
								UI_SetElementVisible("rank", "fleetadmiral", 0) 										
								UI_SetTextLabelText("rank", "lblDescription1", "Remunuration per year: "..remuneration); 	 
								UI_SetTextLabelText("rank", "lblDescription2", "Next military rank: Admiral (350 Honor points)"); 							
								UI_SetTextLabelText("rank", "lblDescription3", "Now you can build barracks, recruit pilots and officers");
								Subtitle_Add(Actor_Talorn,"You gain the Commodore military rank", 7) 
								Sound_SpeechPlay("Data:sound/sfx/etg/sp_elements/sp_elements_distanceexplosion/sp_elements_distanceexplosion")
							
							elseif gradoList[playerIndexList] == "ADMIRAL      " then
								remuneration = floor(2200 * rankremuneration)			        
								UI_SetScreenEnabled("rank", 1)		
								UI_SetScreenVisible("rank", 1)	
								UI_SetTextLabelText("rank", "lblSubTitle", "ADMIRAL");	
								UI_SetElementVisible("rank", "ensign", 0) 
								UI_SetElementVisible("rank", "lieutenant", 0) 
								UI_SetElementVisible("rank", "commander", 0) 
								UI_SetElementVisible("rank", "captain", 0) 
								UI_SetElementVisible("rank", "commodore", 0) 
								UI_SetElementVisible("rank", "admiral", 1) 
								UI_SetElementVisible("rank", "fleetadmiral", 0) 										
								UI_SetTextLabelText("rank", "lblDescription1", "Remunuration per year: "..remuneration); 	 
								UI_SetTextLabelText("rank", "lblDescription2", "Next military rank: Fleet Admiral (480 Honor points)"); 							 
								UI_SetTextLabelText("rank", "lblDescription3", "Now you can build barracks, recruit pilots and officers");
								Subtitle_Add(Actor_Talorn,"You gain the Admiral military rank", 7) 
								Sound_SpeechPlay("Data:sound/sfx/etg/sp_elements/sp_elements_distanceexplosion/sp_elements_distanceexplosion")
							
							elseif gradoList[playerIndexList] == "FLEET ADMIRAL" then
								remuneration = floor(2600 * rankremuneration)			        
								UI_SetScreenEnabled("rank", 1)		
								UI_SetScreenVisible("rank", 1)	
								UI_SetTextLabelText("rank", "lblSubTitle", "FLEET ADMIRAL");		
								UI_SetElementVisible("rank", "ensign", 0) 
								UI_SetElementVisible("rank", "lieutenant", 0) 
								UI_SetElementVisible("rank", "commander", 0) 
								UI_SetElementVisible("rank", "captain", 0) 
								UI_SetElementVisible("rank", "commodore", 0) 
								UI_SetElementVisible("rank", "admiral", 0) 
								UI_SetElementVisible("rank", "fleetadmiral", 1) 									
								UI_SetTextLabelText("rank", "lblDescription1", "Remunuration per year: "..remuneration); 	 
								UI_SetTextLabelText("rank", "lblDescription2", "No further military rank"); 
								UI_SetTextLabelText("rank", "lblDescription3", "Now you can build barracks, recruit pilots and officers");
								Subtitle_Add(Actor_Talorn,"You gain the Fleet Admiral military rank", 7) 
								Sound_SpeechPlay("Data:sound/sfx/etg/sp_elements/sp_elements_distanceexplosion/sp_elements_distanceexplosion")
							end 							
						end						
					end
          lastgradoList[playerIndexList] = gradoList[playerIndexList]							
        end					
			end	
    end   
    playerIndex = playerIndex + 1
  end
	--update hwsaving
	hwsaving[3] = hwsaving[3] + 1 
	--reset	  
	if hwsaving[3] > 9 then
	  hwsaving[4] = hwsaving[4] + 1
		if hwsaving[4] >= 4 then
		  hwsaving[4] = 0
		end
		hwsaving[3] = 0
		Rule_Remove("population")
		Rule_AddInterval("population", runselected*1.3)	
	end	        
end  