function sobgroupscreate()  
  local playerIndex = 0                           
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then				           
	      SobGroup_Create("Player_Ships"..playerIndex)                             
	      SobGroup_Create("lastPlayer_Ships"..playerIndex)  
	      SobGroup_Create("evac"..playerIndex) 	      
        --Hiigaran
        --fighter				
	      SobGroup_Create("hgn_scout"..playerIndex)      
	      SobGroup_Create("hgn_interceptor"..playerIndex)                 
	      SobGroup_Create("hgn_attackbomber"..playerIndex)                 
	      SobGroup_Create("hgn_lbomber"..playerIndex)                     
	      SobGroup_Create("hgn_defender"..playerIndex)                         
	      SobGroup_Create("hgn_railgunfighter"..playerIndex)                    
	      SobGroup_Create("hgn_hft"..playerIndex)            
	      SobGroup_Create("hgn_attackbomberheavy"..playerIndex)      
        --corvette				
	      SobGroup_Create("hgn_assaultcorvette"..playerIndex)                     
	      SobGroup_Create("hgn_pulsarcorvette"..playerIndex)   
        SobGroup_Create("hgn_bombervette"..playerIndex)       		
        SobGroup_Create("hgn_empcorvette"..playerIndex)      				
	      SobGroup_Create("hgn_minelayercorvette"..playerIndex)                   
	      SobGroup_Create("hgn_multiguncorvette"..playerIndex)                     
	      SobGroup_Create("hgn_cth"..playerIndex)     
	      SobGroup_Create("hgn_cthion"..playerIndex)	   
	      SobGroup_Create("hgn_cthionl"..playerIndex)
        --frigate				
	      SobGroup_Create("hgn_assaultfrigate"..playerIndex)                        
	      SobGroup_Create("hgn_torpedofrigate"..playerIndex)                     
	      SobGroup_Create("hgn_lrms"..playerIndex)  
	      SobGroup_Create("hgn_defensefieldfrigate"..playerIndex)   
	      SobGroup_Create("hgn_marinefrigate"..playerIndex)                             
	      SobGroup_Create("hgn_ioncannonfrigate"..playerIndex)     
	      SobGroup_Create("hgn_tulwar"..playerIndex)
        --capital				
	      SobGroup_Create("hgn_mothership"..playerIndex)   
	      SobGroup_Create("hgn_researchstation"..playerIndex)   
	      SobGroup_Create("hgn_power"..playerIndex) 
        SobGroup_Create("hgn_aditional_core"..playerIndex)		
        SobGroup_Create("hgn_plasma_inhibitor"..playerIndex)						
	      SobGroup_Create("hgn_combatbase"..playerIndex) 
	      SobGroup_Create("hgn_crewstation"..playerIndex)            
	      SobGroup_Create("hgn_carrier"..playerIndex) 
				SobGroup_Create("hgn_spacecarrier"..playerIndex) 
	      SobGroup_Create("hgn_battlecarrier"..playerIndex) 
	      SobGroup_Create("hgn_scaver"..playerIndex) 
	      SobGroup_Create("hgn_lightcarrier"..playerIndex)                           
	      SobGroup_Create("hgn_shipyard"..playerIndex)  
				SobGroup_Create("hgn_battleshipyard"..playerIndex) 
        SobGroup_Create("hgn_shipyard_g"..playerIndex)     				
	      SobGroup_Create("hgn_battlecruiser"..playerIndex)  
	      SobGroup_Create("hgn_vortex"..playerIndex) 
	      SobGroup_Create("hgn_battleship"..playerIndex) 
	      SobGroup_Create("hgn_tanker"..playerIndex) 
				SobGroup_Create("hgn_lighttanker"..playerIndex) 
        SobGroup_Create("hgn_smasher"..playerIndex) 				
	      SobGroup_Create("hgn_destroyer"..playerIndex)  
	      SobGroup_Create("hgn_sweeperdestroyer"..playerIndex)     
	      SobGroup_Create("hgn_missiledestroyer"..playerIndex)                
	      SobGroup_Create("hgn_iondestroyer"..playerIndex)  
	      SobGroup_Create("hgn_advdestroyer"..playerIndex)  
	      SobGroup_Create("hgn_artillerydestroyer"..playerIndex)  
	      SobGroup_Create("hgn_cruisera"..playerIndex)
	      SobGroup_Create("hgn_cruiserb"..playerIndex)  
	      SobGroup_Create("hgn_juggernaught"..playerIndex)
				SobGroup_Create("hgn_commandfortress"..playerIndex)  
			  SobGroup_Create("hgn_battlestation"..playerIndex) 			   
			  SobGroup_Create("hgn_ark"..playerIndex)  
			  SobGroup_Create("hgn_hyperspacestation"..playerIndex)
        --utility				
	      SobGroup_Create("hgn_resourcecollector"..playerIndex)  
        SobGroup_Create("hgn_salvagecollector"..playerIndex)  				
	      SobGroup_Create("hgn_resourcecontroller"..playerIndex) 
	      SobGroup_Create("hgn_core"..playerIndex)  	      
				SobGroup_Create("hgn_container"..playerIndex) 	  
	      SobGroup_Create("hgn_minecontainer"..playerIndex) 	       
	      SobGroup_Create("hgn_transportcell"..playerIndex)  
	      SobGroup_Create("hgn_probe"..playerIndex)    
			  SobGroup_Create("hgn_ecmprobe"..playerIndex)     			  
			  SobGroup_Create("hgn_proximitysensor"..playerIndex)   
        --platform					                      
	      SobGroup_Create("hgn_gunturret"..playerIndex)  
        SobGroup_Create("hgn_rapidfiregunturret"..playerIndex) 				
	      SobGroup_Create("hgn_pulsarturret"..playerIndex)                
	      SobGroup_Create("hgn_ionturret"..playerIndex)  
	      SobGroup_Create("hgn_missileturret"..playerIndex)
	      SobGroup_Create("hgn_rts"..playerIndex)  
	      SobGroup_Create("hgn_defensefieldturret"..playerIndex)  
	      SobGroup_Create("hgn_artillerysentinel"..playerIndex) 
	      SobGroup_Create("hgn_massiveturret"..playerIndex)
				SobGroup_Create("hgn_defenderdrone"..playerIndex)
				SobGroup_Create("hgn_patcher"..playerIndex)
        --weapons				
	      SobGroup_Create("hgn_viper"..playerIndex)  
	      SobGroup_Create("hgn_minermissile"..playerIndex)
	      SobGroup_Create("hgn_minermissile1"..playerIndex)
				SobGroup_Create("vgr_minermissile"..playerIndex)
	      SobGroup_Create("hgn_nuclearbomb"..playerIndex)   
	      SobGroup_Create("hgn_nucleartube1"..playerIndex) 
	      SobGroup_Create("hgn_nucleartube2"..playerIndex) 
	      SobGroup_Create("hgn_nucleartube3"..playerIndex)      	                       
	      SobGroup_Create("hgn_tangomine"..playerIndex)       
			  --altro    
			  SobGroup_Create("hgn_massshield"..playerIndex) 
			  SobGroup_Create("minetargetenemies"..playerIndex) 
				--Vaygr
        --fighter				
	      SobGroup_Create("vgr_scout"..playerIndex)      
	      SobGroup_Create("vgr_interceptor"..playerIndex)                 
	      SobGroup_Create("vgr_lancefighter"..playerIndex)    
	      SobGroup_Create("vgr_heavyfighter"..playerIndex)   
        SobGroup_Create("vgr_elitefighter"..playerIndex)   				
	      SobGroup_Create("vgr_bomber"..playerIndex)   
        SobGroup_Create("vgr_missilebomber"..playerIndex)    				
	      SobGroup_Create("vgr_defender"..playerIndex) 
        --corvette 				
	      SobGroup_Create("vgr_missilecorvette"..playerIndex)  
        SobGroup_Create("vgr_shamshiriictg"..playerIndex)  				
	      SobGroup_Create("vgr_lasercorvette"..playerIndex)   
        SobGroup_Create("vgr_plasmacorvette"..playerIndex)   
        SobGroup_Create("vgr_empcorvette"..playerIndex)    				
	      SobGroup_Create("vgr_minelayercorvette"..playerIndex)                     
	      SobGroup_Create("vgr_commandcorvette"..playerIndex)               
	      SobGroup_Create("vgr_standvette"..playerIndex)                   
	      SobGroup_Create("vgr_multilancecorvette"..playerIndex)    
				SobGroup_Create("vgr_mortarcorvette"..playerIndex)    
	      SobGroup_Create("vgr_striker"..playerIndex) 
        --frigate				
	      SobGroup_Create("vgr_heavymissilefrigate"..playerIndex)                     
	      SobGroup_Create("vgr_assaultfrigate"..playerIndex)      
        SobGroup_Create("vgr_advassaultfrigate"..playerIndex)     				
	      SobGroup_Create("vgr_infiltratorfrigate"..playerIndex)  
        SobGroup_Create("vgr_supportfrigate"..playerIndex)	
				SobGroup_Create("vgr_commandfrigate"..playerIndex)	
        SobGroup_Create("vgr_supportfrigate_laser"..playerIndex)
        SobGroup_Create("vgr_supportfrigatearmed"..playerIndex)				
	      SobGroup_Create("vgr_artilleryfrigate"..playerIndex)  
				SobGroup_Create("vgr_longrangeartilleryfrigate"..playerIndex)  
	      SobGroup_Create("vgr_empfrigate"..playerIndex)
        --capital 				
	      SobGroup_Create("vgr_mothership"..playerIndex) 
        SobGroup_Create("vgr_lightcarrier"..playerIndex)  				
	      SobGroup_Create("vgr_carrier"..playerIndex)        
        SobGroup_Create("vgr_battlecarrier"..playerIndex)        				
	      SobGroup_Create("vgr_shipyard"..playerIndex)      
       	SobGroup_Create("vgr_sinner"..playerIndex) 			
	      SobGroup_Create("vgr_battlecruiser"..playerIndex) 
        SobGroup_Create("vgr_missilebattlecruiser"..playerIndex) 				
	      SobGroup_Create("vgr_alkhalid"..playerIndex)   
	      SobGroup_Create("vgr_dreadnaught"..playerIndex)     
	      SobGroup_Create("vgr_commandfortress"..playerIndex)           
	      SobGroup_Create("vgr_destroyer"..playerIndex)  
				SobGroup_Create("vgr_pulsedestroyer"..playerIndex)  
	      SobGroup_Create("vgr_am"..playerIndex)   
	      SobGroup_Create("vgr_cruiser"..playerIndex)    
        SobGroup_Create("vgr_lightcruiser"..playerIndex)    				
        SobGroup_Create("vgr_artilleryship"..playerIndex) 
        --utility				
	      SobGroup_Create("vgr_resourcecollector"..playerIndex)                   
	      SobGroup_Create("vgr_resourcecontroller"..playerIndex)  
        SobGroup_Create("vgr_resourcecontrollerdouble"..playerIndex)
				SobGroup_Create("vgr_scaver"..playerIndex) 
				SobGroup_Create("vgr_container"..playerIndex) 	     
	      SobGroup_Create("vgr_minecontainer"..playerIndex)   
	      SobGroup_Create("vgr_probe"..playerIndex)   
        SobGroup_Create("vgr_probe_smallhsbeacon"..playerIndex)   	
        SobGroup_Create("vgr_ghost"..playerIndex)   					
			  SobGroup_Create("vgr_probe_ecm"..playerIndex)     			  
			  SobGroup_Create("vgr_probe_prox"..playerIndex)  
        --platform			
        SobGroup_Create("vgr_patcher"..playerIndex)				
	      SobGroup_Create("vgr_weaponplatform_gun"..playerIndex)  
        SobGroup_Create("vgr_weaponplatform_lance"..playerIndex)  				
	      SobGroup_Create("vgr_weaponplatform_missile"..playerIndex)  	
        SobGroup_Create("vgr_mobile_inhibitor"..playerIndex)  				
	      SobGroup_Create("vgr_hyperspace_platform"..playerIndex)      	      
	      --weapons
				SobGroup_Create("vgr_nuclearbomb"..playerIndex)
				--player class			  
			  SobGroup_Create("fighters"..playerIndex)
			  SobGroup_Create("lastfighters"..playerIndex)  			   			  
			  SobGroup_Create("corvettes"..playerIndex) 	
			  SobGroup_Create("lastcorvettes"..playerIndex)		      
			  SobGroup_Create("tangos"..playerIndex)
			  SobGroup_Create("lasttangos"..playerIndex)  			  		  				  				  			  				  
			  SobGroup_Create("frigates"..playerIndex) 
				SobGroup_Create("platforms"..playerIndex) 
			  SobGroup_Create("utilities"..playerIndex)   	  	
			  SobGroup_Create("others"..playerIndex) 
			  SobGroup_Create("lastothers"..playerIndex) 		
			  SobGroup_Create("othersnoparade"..playerIndex) 
			  SobGroup_Create("lastothersnoparade"..playerIndex) 			  
			  SobGroup_Create("smallcapitals"..playerIndex)  
			  SobGroup_Create("juggernaughts"..playerIndex)       	
        SobGroup_Create("productioncapital"..playerIndex)   
        SobGroup_Create("lastproductioncapital"..playerIndex)          	    	                
        SobGroup_Create("targetmegalith"..playerIndex)    
        SobGroup_Create("capturer"..playerIndex)        
        SobGroup_Create("trader"..playerIndex)  			        
        SobGroup_Create("parader"..playerIndex) 
        SobGroup_Create("targetjuggernaughts"..playerIndex)        				 	        	      	      
				--player class enemies/allies	
        SobGroup_Create("enemies"..playerIndex)    
	      SobGroup_Create("allies"..playerIndex)        
	      SobGroup_Create("fighterenemies"..playerIndex) 	      
	      SobGroup_Create("corvetteenemies"..playerIndex)  
	      SobGroup_Create("frigateenemies"..playerIndex) 	      
	      SobGroup_Create("smallcapitalenemies"..playerIndex)  
	      SobGroup_Create("juggernaughtenemies"..playerIndex)  
	      SobGroup_Create("nuclearbombenemies"..playerIndex)  
	      SobGroup_Create("commandfortressenemies"..playerIndex) 	      
	      SobGroup_Create("bigcapitalenemies"..playerIndex) 
	      SobGroup_Create("fighterallies"..playerIndex) 	      
	      SobGroup_Create("corvetteallies"..playerIndex)  
	      SobGroup_Create("frigateallies"..playerIndex) 	      
	      SobGroup_Create("smallcapitalallies"..playerIndex)  
	      SobGroup_Create("bigcapitalallies"..playerIndex) 		           
	      SobGroup_Create("productioncapitalallies"..playerIndex) 	 
	      SobGroup_Create("lastproductioncapitalallies"..playerIndex)    
	      SobGroup_Create("massshieldenemies"..playerIndex) 
	      SobGroup_Create("orbitalstationallies"..playerIndex) 
        SobGroup_Create("traderallies"..playerIndex)	
        --megalith	       
	      SobGroup_Create("meg_gehenna_1ctm"..playerIndex)	   
        SobGroup_Create("meg_gehenna_3ctm"..playerIndex)	   				
	      SobGroup_Create("meg_balcoragate"..playerIndex) 
        SobGroup_Create("meg_foundry"..playerIndex)  				
	      SobGroup_Create("meg_dreadnaughtberth"..playerIndex)    
        SobGroup_Create("meg_tanis"..playerIndex)				
				--fleet Selector
        SobGroup_Create("selector"..playerIndex)                           
				--supporters
        SobGroup_Create("supporter"..playerIndex)            
        SobGroup_SpawnNewShipInSobGroup(playerIndex, "supporter", "supporter", "supporter"..playerIndex, "up"..playerIndex)
        SobGroup_MakeUntargeted("supporter"..playerIndex)				
    	end   
		end 
		playerIndex = playerIndex + 1  
	end	   
	--planet/star
  SobGroup_Create("star_sol")
  SobGroup_Create("planet_mercury")
	SobGroup_Create("planet_venus")	  
	SobGroup_Create("planet_moon")
	SobGroup_Create("planet_earth")
	SobGroup_Create("planet_mars")
	SobGroup_Create("planet_jupiter")
	SobGroup_Create("planet_europa")
	SobGroup_Create("planet_io")
	SobGroup_Create("planet_callisto")
	SobGroup_Create("planet_ganymeade")	  
	SobGroup_Create("planet_saturn")
	SobGroup_Create("planet_pluto")
	SobGroup_Create("planet_uranus")
	SobGroup_Create("planet_neptune")	 	  	  
	SobGroup_Create("planetnoowner")	
	--megalith/battlearena
  SobGroup_Create ("megalithnoowner")   	
	SobGroup_Create ("megalitenoowner")
	SobGroup_Create ("debrisnoowner")  
	SobGroup_Create("bas0") 
	SobGroup_Create("bas1")	 	
  SobGroup_Create("AsteroidSmasher") 	
	--Selection
  SobGroup_Create("selected")   
	--Cinematic	    
  SobGroup_Create("selectedCinematic")     
  SobGroup_Create("focus") 
  SobGroup_Create("focusalt") 	
  SobGroup_Create("tempcinematic") 
	--general class 
  SobGroup_Create("motherships")    
  SobGroup_Create("lastmotherships")     
  SobGroup_Create("shipyards")    
  SobGroup_Create("lastshipyards")      
  SobGroup_Create("carriers")      
  SobGroup_Create("lastcarriers")    
  SobGroup_Create("battlecruisers")     
  SobGroup_Create("lastbattlecruisers")      
  SobGroup_Create("juggernaughts")    
  SobGroup_Create("lastjuggernaughts")  
  SobGroup_Create("nuclearbombs")    
  SobGroup_Create("lastnuclearbombs")  
  SobGroup_Create("frigates")     
  SobGroup_Create("lastfrigates")      
  SobGroup_Create("destroyers")     
  SobGroup_Create("lastdestroyers") 
  SobGroup_Create("platforms")
	SobGroup_Create("lastplatforms")  	     
  SobGroup_Create("minecontainers")     
  SobGroup_Create("lastminecontainers")      
  SobGroup_Create("containers")     
  SobGroup_Create("lastcontainers")      
  SobGroup_Create("miningbases")     
  SobGroup_Create("lastminingbases")      
  SobGroup_Create("researchstations")         
  SobGroup_Create("lastresearchstations")  
  SobGroup_Create("powerstations")    
  SobGroup_Create("lastpowerstations")
  SobGroup_Create("weaponstations")    
  SobGroup_Create("lastweaponstations")
  SobGroup_Create("crewstations")     
  SobGroup_Create("lastcrewstations")      
  SobGroup_Create("commandfortresses")     
  SobGroup_Create("lastcommandfortresses")   
  SobGroup_Create("hyperspacestations")     
  SobGroup_Create("lasthyperspacestations")      
  SobGroup_Create("mobilerefineries")   
  SobGroup_Create("lastmobilerefineries")   
  SobGroup_Create("resourcecollectors")
  SobGroup_Create("lastresourcecollectors")  
  SobGroup_Create("proximityenemiesjuggernaughts")
  SobGroup_Create("proximityalliesjuggernaughts")  
	SobGroup_Create("gehennacollectors")      
  SobGroup_Create("splitcapturers0")
  SobGroup_Create("splitcollectors0")
	SobGroup_Create("invulnerable")
	--explosion bags  
  for i = 0,2,1 do    
    SobGroup_Create("MothershipExpBag"..i)
    SobGroup_Create("PowerStationExpBag"..i)    
    SobGroup_Create("ShipyardExpBag"..i)
    SobGroup_Create("CommandFortressExpBag"..i)   
    SobGroup_Create("NuclearBombExpBag"..i)        
  end        
  for i = 0,8,1 do    
    SobGroup_Create("JuggernaughtExpBag"..i)      
  end          
	--splitter    
  SobGroup_Create("splitter")     
  SobGroup_SpawnNewShipInSobGroup(-1, "splitter", "splitter", "splitter", "centre") 
  SobGroup_SetInvulnerability("splitter", 1)  
	SobGroup_MakeUntargeted("splitter")
	--temp
	SobGroup_Create ("tempcleaninterface")
	SobGroup_Create ("empty")
  SobGroup_Create ("temp")
	for i = 0,15,1 do
		SobGroup_Create ("temp"..i)
	end    
	--waves
	SobGroup_Create ("wave")
	SobGroup_Create ("wfighter")
	SobGroup_Create ("wcorvette")
	SobGroup_Create ("wfrigate")
	SobGroup_Create ("wcapital")
	SobGroup_Create ("wbigcapital")
  Rule_Remove("sobgroupscreate")    
end  

function sobgroups()     
	local playerIndex = 0   
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then    
        playerIndexList = playerIndex + 1        
        --Subtitle_Message("Test "..SobGroup_GetHardPointHealth("supporter"..playerIndex, "resistence"), 25)									
				--fighters
				if hwsaving[2] == 0 or (year==0 and gametime>50) then
				  --rigenera supporter in caso venga distrutto, da testare
					if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "supporter") == 0 then
						SobGroup_SpawnNewShipInSobGroup(playerIndex, "supporter", "supporter", "supporter"..playerIndex, "up"..playerIndex)         
					else
						SobGroup_MakeUntargeted("supporter"..playerIndex)				
					end 
          --hiigaran					
				  SobGroup_FillShipsByType("hgn_scout"..playerIndex, "Player_Ships"..playerIndex, "hgn_scout")                     
					SobGroup_FillShipsByType("hgn_interceptor"..playerIndex, "Player_Ships"..playerIndex, "hgn_interceptor")         
					SobGroup_FillShipsByType("hgn_attackbomber"..playerIndex, "Player_Ships"..playerIndex, "hgn_attackbomber")             
					SobGroup_FillShipsByType("hgn_defender"..playerIndex, "Player_Ships"..playerIndex, "hgn_defender")                    
					SobGroup_FillShipsByType("hgn_lbomber"..playerIndex, "Player_Ships"..playerIndex, "hgn_lbomber")                 
					SobGroup_FillShipsByType("hgn_railgunfighter"..playerIndex, "Player_Ships"..playerIndex, "hgn_railgunfighter")         
					SobGroup_FillShipsByType("hgn_hft"..playerIndex, "Player_Ships"..playerIndex, "hgn_hft")  
					SobGroup_FillShipsByType("hgn_attackbomberheavy"..playerIndex, "Player_Ships"..playerIndex, "hgn_attackbomberheavy")   
					--vaygr
					SobGroup_FillShipsByType("vgr_scout"..playerIndex, "Player_Ships"..playerIndex, "vgr_scout")                     
					SobGroup_FillShipsByType("vgr_interceptor"..playerIndex, "Player_Ships"..playerIndex, "vgr_interceptor")         
					SobGroup_FillShipsByType("vgr_bomber"..playerIndex, "Player_Ships"..playerIndex, "vgr_bomber")   
          SobGroup_FillShipsByType("vgr_missilebomber"..playerIndex, "Player_Ships"..playerIndex, "vgr_missilebomber")             
					SobGroup_FillShipsByType("vgr_defender"..playerIndex, "Player_Ships"..playerIndex, "vgr_defender")                    
					SobGroup_FillShipsByType("vgr_lancefighter"..playerIndex, "Player_Ships"..playerIndex, "vgr_lancefighter")       
					SobGroup_FillShipsByType("vgr_heavyfighter"..playerIndex, "Player_Ships"..playerIndex, "vgr_heavyfighter") 
					SobGroup_FillShipsByType("vgr_elitefighter"..playerIndex, "Player_Ships"..playerIndex, "vgr_elitefighter")
					--classes
					SobGroup_SobGroupAdd("fighters"..playerIndex, "hgn_scout"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "hgn_interceptor"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "hgn_attackbomber"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "hgn_defender"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "hgn_lbomber"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "hgn_railgunfighter"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "hgn_hft"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "hgn_attackbomberheavy"..playerIndex)	    
					SobGroup_SobGroupAdd("fighters"..playerIndex, "vgr_scout"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "vgr_interceptor"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "vgr_bomber"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "vgr_missilebomber"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "vgr_defender"..playerIndex)
					SobGroup_SobGroupAdd("fighters"..playerIndex, "vgr_lancefighter"..playerIndex)		 
					SobGroup_SobGroupAdd("fighters"..playerIndex, "vgr_heavyfighter"..playerIndex)	
					SobGroup_SobGroupAdd("fighters"..playerIndex, "vgr_elitefighter"..playerIndex)						
				end
				--corvettes
				if hwsaving[2] == 1 or (year==0 and gametime>50) then
				  --hiigaran
					SobGroup_FillShipsByType("hgn_assaultcorvette"..playerIndex, "Player_Ships"..playerIndex, "hgn_assaultcorvette")         
					SobGroup_FillShipsByType("hgn_pulsarcorvette"..playerIndex, "Player_Ships"..playerIndex, "hgn_pulsarcorvette")   
					SobGroup_FillShipsByType("hgn_bombervette"..playerIndex, "Player_Ships"..playerIndex, "hgn_bombervette") 
          SobGroup_FillShipsByType("hgn_empcorvette"..playerIndex, "Player_Ships"..playerIndex, "hgn_empcorvette")   				
					SobGroup_FillShipsByType("hgn_minelayercorvette"..playerIndex, "Player_Ships"..playerIndex, "hgn_minelayercorvette")     
					SobGroup_FillShipsByType("hgn_multiguncorvette"..playerIndex, "Player_Ships"..playerIndex, "hgn_multiguncorvette")        
					SobGroup_FillShipsByType("hgn_cth"..playerIndex, "Player_Ships"..playerIndex, "hgn_cth")
					SobGroup_FillShipsByType("hgn_cthion"..playerIndex, "Player_Ships"..playerIndex, "hgn_cthion")  	      
				  --vaygr
					SobGroup_FillShipsByType("vgr_missilecorvette"..playerIndex, "Player_Ships"..playerIndex, "vgr_missilecorvette") 
          SobGroup_FillShipsByType("vgr_shamshiriictg"..playerIndex, "Player_Ships"..playerIndex, "vgr_shamshiriictg")     					
					SobGroup_FillShipsByType("vgr_lasercorvette"..playerIndex, "Player_Ships"..playerIndex, "vgr_lasercorvette")  
					SobGroup_FillShipsByType("vgr_plasmacorvette"..playerIndex, "Player_Ships"..playerIndex, "vgr_plasmacorvette")   	
          SobGroup_FillShipsByType("vgr_empcorvette"..playerIndex, "Player_Ships"..playerIndex, "vgr_empcorvette") 					
					SobGroup_FillShipsByType("vgr_minelayercorvette"..playerIndex, "Player_Ships"..playerIndex, "vgr_minelayercorvette")         
					SobGroup_FillShipsByType("vgr_standvette"..playerIndex, "Player_Ships"..playerIndex, "vgr_standvette")    
					SobGroup_FillShipsByType("vgr_multilancecorvette"..playerIndex, "Player_Ships"..playerIndex, "vgr_multilancecorvette")   
					SobGroup_FillShipsByType("vgr_mortarcorvette"..playerIndex, "Player_Ships"..playerIndex, "vgr_mortarcorvette")    				
					SobGroup_FillShipsByType("vgr_striker"..playerIndex, "Player_Ships"..playerIndex, "vgr_striker")     
					SobGroup_FillShipsByType("vgr_commandcorvette"..playerIndex, "Player_Ships"..playerIndex, "vgr_commandcorvette")  
					--classes
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "hgn_assaultcorvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "hgn_pulsarcorvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "hgn_bombervette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "hgn_empcorvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "hgn_minelayercorvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "hgn_multiguncorvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "hgn_cth"..playerIndex)	
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "hgn_cthion"..playerIndex)	      
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_missilecorvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_shamshiriictg"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_lasercorvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_plasmacorvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_empcorvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_minelayercorvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_striker"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_standvette"..playerIndex)
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_multilancecorvette"..playerIndex)	
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_mortarcorvette"..playerIndex)	
					SobGroup_SobGroupAdd("corvettes"..playerIndex, "vgr_commandcorvette"..playerIndex)					  
				end
				--frigates
				if hwsaving[2] == 2 or (year==0 and gametime>50) then
				  --hiigaran
					SobGroup_FillShipsByType("hgn_assaultfrigate"..playerIndex, "Player_Ships"..playerIndex, "hgn_assaultfrigate")             
					SobGroup_FillShipsByType("hgn_torpedofrigate"..playerIndex, "Player_Ships"..playerIndex, "hgn_torpedofrigate")          
					SobGroup_FillShipsByType("hgn_lrms"..playerIndex, "Player_Ships"..playerIndex, "hgn_lrms")                     
					SobGroup_FillShipsByType("hgn_marinefrigate"..playerIndex, "Player_Ships"..playerIndex, "hgn_marinefrigate")            
					SobGroup_FillShipsByType("hgn_defensefieldfrigate"..playerIndex, "Player_Ships"..playerIndex, "hgn_defensefieldfrigate")
					SobGroup_FillShipsByType("hgn_ioncannonfrigate"..playerIndex, "Player_Ships"..playerIndex, "hgn_ioncannonfrigate")         
					SobGroup_FillShipsByType("hgn_tulwar"..playerIndex, "Player_Ships"..playerIndex, "hgn_tulwar")  
				  --vaygr
					SobGroup_FillShipsByType("vgr_heavymissilefrigate"..playerIndex, "Player_Ships"..playerIndex, "vgr_heavymissilefrigate")                     
					SobGroup_FillShipsByType("vgr_assaultfrigate"..playerIndex, "Player_Ships"..playerIndex, "vgr_assaultfrigate")   
					SobGroup_FillShipsByType("vgr_advassaultfrigate"..playerIndex, "Player_Ships"..playerIndex, "vgr_advassaultfrigate")  				
					SobGroup_FillShipsByType("vgr_infiltratorfrigate"..playerIndex, "Player_Ships"..playerIndex, "vgr_infiltratorfrigate")  
					SobGroup_FillShipsByType("vgr_supportfrigate"..playerIndex, "Player_Ships"..playerIndex, "vgr_supportfrigate")   
					SobGroup_FillShipsByType("vgr_commandfrigate"..playerIndex, "Player_Ships"..playerIndex, "vgr_commandfrigate")   
					SobGroup_FillShipsByType("vgr_supportfrigate_laser"..playerIndex, "Player_Ships"..playerIndex, "vgr_supportfrigate_laser") 
					SobGroup_FillShipsByType("vgr_supportfrigatearmed"..playerIndex, "Player_Ships"..playerIndex, "vgr_supportfrigatearmed") 				
					SobGroup_FillShipsByType("vgr_artilleryfrigate"..playerIndex, "Player_Ships"..playerIndex, "vgr_artilleryfrigate")  
					SobGroup_FillShipsByType("vgr_longrangeartilleryfrigate"..playerIndex, "Player_Ships"..playerIndex, "vgr_longrangeartilleryfrigate")  				
					SobGroup_FillShipsByType("vgr_empfrigate"..playerIndex, "Player_Ships"..playerIndex, "vgr_empfrigate") 
					--classes
					SobGroup_SobGroupAdd("frigates"..playerIndex, "hgn_assaultfrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "hgn_torpedofrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "hgn_lrms"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "hgn_marinefrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "hgn_defensefieldfrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "hgn_ioncannonfrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "hgn_tulwar"..playerIndex) 
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_heavymissilefrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_supportfrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_commandfrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_supportfrigate_laser"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_advassaultfrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_supportfrigatearmed"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_assaultfrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_infiltratorfrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_artilleryfrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_longrangeartilleryfrigate"..playerIndex)
					SobGroup_SobGroupAdd("frigates"..playerIndex, "vgr_empfrigate"..playerIndex) 				
				end
				--capital ships
				if hwsaving[2] == 3 or (year==0 and gametime>50) then
					--hiigaran
				  SobGroup_FillShipsByType("hgn_mothership"..playerIndex, "Player_Ships"..playerIndex, "hgn_mothership")    
					SobGroup_Clear("hgn_researchstation"..playerIndex)       
					SobGroup_FillShipsByType("hgn_researchstation"..playerIndex, "Player_Ships"..playerIndex, "hgn_researchstation") 
					SobGroup_Clear("hgn_power"..playerIndex)       
					SobGroup_FillShipsByType("hgn_power"..playerIndex, "Player_Ships"..playerIndex, "hgn_power") 
          SobGroup_FillShipsByType("hgn_aditional_core"..playerIndex, "Player_Ships"..playerIndex, "hgn_aditional_core")
          SobGroup_FillShipsByType("hgn_plasma_inhibitor"..playerIndex, "Player_Ships"..playerIndex, "hgn_plasma_inhibitor")					
					SobGroup_Clear("hgn_combatbase"..playerIndex)       
					SobGroup_FillShipsByType("hgn_combatbase"..playerIndex, "Player_Ships"..playerIndex, "hgn_combatbase") 
					SobGroup_Clear("hgn_crewstation"..playerIndex)
					SobGroup_FillShipsByType("hgn_crewstation"..playerIndex, "Player_Ships"..playerIndex, "hgn_crewstation") 
					SobGroup_FillShipsByType("hgn_carrier"..playerIndex, "Player_Ships"..playerIndex, "hgn_carrier")
					SobGroup_FillShipsByType("hgn_spacecarrier"..playerIndex, "Player_Ships"..playerIndex, "hgn_spacecarrier")
					SobGroup_FillShipsByType("hgn_battlecarrier"..playerIndex, "Player_Ships"..playerIndex, "hgn_battlecarrier")
					SobGroup_FillShipsByType("hgn_scaver"..playerIndex, "Player_Ships"..playerIndex, "hgn_scaver")    
					SobGroup_FillShipsByType("hgn_lightcarrier"..playerIndex, "Player_Ships"..playerIndex, "hgn_lightcarrier")               
					SobGroup_FillShipsByType("hgn_destroyer"..playerIndex, "Player_Ships"..playerIndex, "hgn_destroyer")
					SobGroup_FillShipsByType("hgn_sweeperdestroyer"..playerIndex, "Player_Ships"..playerIndex, "hgn_sweeperdestroyer")      
					SobGroup_FillShipsByType("hgn_missiledestroyer"..playerIndex, "Player_Ships"..playerIndex, "hgn_missiledestroyer")            
					SobGroup_FillShipsByType("hgn_iondestroyer"..playerIndex, "Player_Ships"..playerIndex, "hgn_iondestroyer")  
					SobGroup_FillShipsByType("hgn_advdestroyer"..playerIndex, "Player_Ships"..playerIndex, "hgn_advdestroyer")  
					SobGroup_FillShipsByType("hgn_artillerydestroyer"..playerIndex, "Player_Ships"..playerIndex, "hgn_artillerydestroyer")  
					SobGroup_FillShipsByType("hgn_cruisera"..playerIndex, "Player_Ships"..playerIndex, "hgn_cruisera")  
					SobGroup_FillShipsByType("hgn_cruiserb"..playerIndex, "Player_Ships"..playerIndex, "hgn_cruiserb")  
					SobGroup_FillShipsByType("hgn_juggernaught"..playerIndex, "Player_Ships"..playerIndex, "hgn_juggernaught")     
					SobGroup_FillShipsByType("hgn_shipyard"..playerIndex, "Player_Ships"..playerIndex, "hgn_shipyard")
					SobGroup_FillShipsByType("hgn_shipyard_g"..playerIndex, "Player_Ships"..playerIndex, "hgn_shipyard_g")				
					SobGroup_SobGroupAdd("hgn_shipyard"..playerIndex, "hgn_shipyard_g"..playerIndex)   
					SobGroup_FillShipsByType("hgn_battleshipyard"..playerIndex, "Player_Ships"..playerIndex, "hgn_battleshipyard") 
					SobGroup_SobGroupAdd("hgn_shipyard"..playerIndex, "hgn_battleshipyard"..playerIndex)   				
					SobGroup_FillShipsByType("hgn_battlecruiser"..playerIndex, "Player_Ships"..playerIndex, "hgn_battlecruiser") 
					SobGroup_FillShipsByType("hgn_vortex"..playerIndex, "Player_Ships"..playerIndex, "hgn_vortex") 
					SobGroup_FillShipsByType("hgn_battleship"..playerIndex, "Player_Ships"..playerIndex, "hgn_battleship") 
					SobGroup_FillShipsByType("hgn_tanker"..playerIndex, "Player_Ships"..playerIndex, "hgn_tanker")
					SobGroup_FillShipsByType("hgn_lighttanker"..playerIndex, "Player_Ships"..playerIndex, "hgn_lighttanker")
					SobGroup_FillShipsByType("hgn_smasher"..playerIndex, "Player_Ships"..playerIndex, "hgn_smasher")
					SobGroup_FillShipsByType("hgn_commandfortress"..playerIndex, "Player_Ships"..playerIndex, "hgn_commandfortress")
					SobGroup_FillShipsByType("temp", "Player_Ships"..playerIndex, "hgn_battlestation") 
					SobGroup_SobGroupAdd("hgn_battlestation"..playerIndex, "temp")	 
					SobGroup_FillShipsByType("hgn_ark"..playerIndex, "Player_Ships"..playerIndex, "hgn_ark")
					SobGroup_FillShipsByType("hgn_hyperspacestation"..playerIndex, "Player_Ships"..playerIndex, "hgn_hyperspacestation")					
					--vaygr
					SobGroup_FillShipsByType("vgr_mothership"..playerIndex, "Player_Ships"..playerIndex, "vgr_mothership")   
          SobGroup_FillShipsByType("vgr_lightcarrier"..playerIndex, "Player_Ships"..playerIndex, "vgr_lightcarrier") 					
					SobGroup_FillShipsByType("vgr_carrier"..playerIndex, "Player_Ships"..playerIndex, "vgr_carrier") 
					SobGroup_FillShipsByType("vgr_battlecarrier"..playerIndex, "Player_Ships"..playerIndex, "vgr_battlecarrier")     				
					SobGroup_FillShipsByType("vgr_destroyer"..playerIndex, "Player_Ships"..playerIndex, "vgr_destroyer")  
					SobGroup_FillShipsByType("vgr_pulsedestroyer"..playerIndex, "Player_Ships"..playerIndex, "vgr_pulsedestroyer")  
					SobGroup_FillShipsByType("vgr_am"..playerIndex, "Player_Ships"..playerIndex, "vgr_am")  
					SobGroup_FillShipsByType("vgr_cruiser"..playerIndex, "Player_Ships"..playerIndex, "vgr_cruiser") 
					SobGroup_FillShipsByType("vgr_lightcruiser"..playerIndex, "Player_Ships"..playerIndex, "vgr_lightcruiser") 
					SobGroup_FillShipsByType("vgr_artilleryship"..playerIndex, "Player_Ships"..playerIndex, "vgr_artilleryship") 				
					SobGroup_FillShipsByType("vgr_shipyard"..playerIndex, "Player_Ships"..playerIndex, "vgr_shipyard")     
          SobGroup_FillShipsByType("vgr_sinner"..playerIndex, "Player_Ships"..playerIndex, "vgr_sinner")           
					SobGroup_FillShipsByType("vgr_battlecruiser"..playerIndex, "Player_Ships"..playerIndex, "vgr_battlecruiser") 
					SobGroup_FillShipsByType("vgr_missilebattlecruiser"..playerIndex, "Player_Ships"..playerIndex, "vgr_missilebattlecruiser") 
					SobGroup_FillShipsByType("vgr_dreadnaught"..playerIndex, "Player_Ships"..playerIndex, "vgr_dreadnaught") 
					SobGroup_FillShipsByType("vgr_alkhalid"..playerIndex, "Player_Ships"..playerIndex, "vgr_alkhalid")  
          SobGroup_FillShipsByType("vgr_commandfortress"..playerIndex, "Player_Ships"..playerIndex, "vgr_commandfortress") 	
          SobGroup_FillShipsByType("vgr_scaver"..playerIndex, "Player_Ships"..playerIndex, "vgr_scaver") 
					--classes          			
					--small capital
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_researchstation"..playerIndex)        
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_power"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_aditional_core"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_plasma_inhibitor"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_combatbase"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_crewstation"..playerIndex)                   
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_destroyer"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_sweeperdestroyer"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_missiledestroyer"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_iondestroyer"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_advdestroyer"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_artillerydestroyer"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_cruisera"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_cruiserb"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_juggernaught"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_battlecruiser"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_vortex"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_battleship"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_tanker"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_lighttanker"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_smasher"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "hgn_hyperspacestation"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_destroyer"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_pulsedestroyer"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_am"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_cruiser"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_lightcruiser"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_artilleryship"..playerIndex)
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_sinner"..playerIndex) 
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_battlecruiser"..playerIndex) 
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_missilebattlecruiser"..playerIndex) 
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_alkhalid"..playerIndex) 		    
					SobGroup_SobGroupAdd("smallcapitals"..playerIndex, "vgr_dreadnaught"..playerIndex) 					  
					--production capital			
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "hgn_mothership"..playerIndex)        
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "hgn_shipyard"..playerIndex) --comprende syg e bs
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "hgn_carrier"..playerIndex)        		
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "hgn_battlecarrier"..playerIndex)	 
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "hgn_lightcarrier"..playerIndex)	  
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "hgn_commandfortress"..playerIndex)
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "hgn_battlestation"..playerIndex)
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "hgn_scaver"..playerIndex) 
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "vgr_scaver"..playerIndex) 
          SobGroup_SobGroupAdd("productioncapital"..playerIndex, "vgr_mothership"..playerIndex)
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "vgr_shipyard"..playerIndex)	
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "vgr_lightcarrier"..playerIndex)
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "vgr_carrier"..playerIndex)
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "vgr_battlecarrier"..playerIndex)
					SobGroup_SobGroupAdd("productioncapital"..playerIndex, "vgr_commandfortress"..playerIndex)           
          --trader           
					SobGroup_SobGroupAdd("trader"..playerIndex, "hgn_mothership"..playerIndex)
					SobGroup_SobGroupAdd("trader"..playerIndex, "hgn_shipyard"..playerIndex) --comprende syg e bs
					SobGroup_SobGroupAdd("trader"..playerIndex, "hgn_commandfortress"..playerIndex)					
					SobGroup_SobGroupAdd("trader"..playerIndex, "hgn_battlestation"..playerIndex)	
          SobGroup_SobGroupAdd("trader"..playerIndex, "vgr_mothership"..playerIndex)		
					SobGroup_SobGroupAdd("trader"..playerIndex, "vgr_shipyard"..playerIndex)		
					SobGroup_SobGroupAdd("trader"..playerIndex, "vgr_commandfortress"..playerIndex)								
					--parader     
					SobGroup_SobGroupAdd("parader"..playerIndex, "hgn_mothership"..playerIndex)
					SobGroup_SobGroupAdd("parader"..playerIndex, "hgn_shipyard"..playerIndex) --comprende syg e bs
					SobGroup_SobGroupAdd("parader"..playerIndex, "hgn_carrier"..playerIndex)	
					SobGroup_SobGroupAdd("parader"..playerIndex, "hgn_spacecarrier"..playerIndex)	 				
					SobGroup_SobGroupAdd("parader"..playerIndex, "hgn_battlecarrier"..playerIndex)	 
					SobGroup_SobGroupAdd("parader"..playerIndex, "hgn_lightcarrier"..playerIndex)	  					 
					SobGroup_SobGroupAdd("parader"..playerIndex, "smallcapitals"..playerIndex)        
					SobGroup_SobGroupAdd("parader"..playerIndex, "vgr_mothership"..playerIndex)
					SobGroup_SobGroupAdd("parader"..playerIndex, "vgr_shipyard"..playerIndex)	
					SobGroup_SobGroupAdd("parader"..playerIndex, "vgr_lightcarrier"..playerIndex)
					SobGroup_SobGroupAdd("parader"..playerIndex, "vgr_carrier"..playerIndex)
					SobGroup_SobGroupAdd("parader"..playerIndex, "vgr_battlecarrier"..playerIndex)
					SobGroup_SobGroupAdd("parader"..playerIndex, "vgr_commandfortress"..playerIndex)
          SobGroup_SobGroupAdd("parader"..playerIndex, "fighters"..playerIndex)
					SobGroup_SobGroupAdd("parader"..playerIndex, "corvettes"..playerIndex)
					SobGroup_SobGroupAdd("parader"..playerIndex, "frigates"..playerIndex)
          SobGroup_SobGroupAdd("parader"..playerIndex, "platforms"..playerIndex)				
          --jug
					SobGroup_SobGroupAdd("juggernaughts"..playerIndex, "hgn_juggernaught"..playerIndex)					
				end
				--platforms
				if hwsaving[2] == 4 or (year==0 and gametime>50) then
				  --hiigaran
					SobGroup_FillShipsByType("hgn_gunturret"..playerIndex, "Player_Ships"..playerIndex, "hgn_gunturret")
          SobGroup_FillShipsByType("hgn_rapidfiregunturret"..playerIndex, "Player_Ships"..playerIndex, "hgn_rapidfiregunturret")					
					SobGroup_FillShipsByType("hgn_pulsarturret"..playerIndex, "Player_Ships"..playerIndex, "hgn_pulsarturret")       
					SobGroup_FillShipsByType("hgn_ionturret"..playerIndex, "Player_Ships"..playerIndex, "hgn_ionturret") 		
					SobGroup_FillShipsByType("hgn_missileturret"..playerIndex, "Player_Ships"..playerIndex, "hgn_missileturret")
					SobGroup_FillShipsByType("hgn_rts"..playerIndex, "Player_Ships"..playerIndex, "hgn_rts") 
					SobGroup_FillShipsByType("hgn_defensefieldturret"..playerIndex, "Player_Ships"..playerIndex, "hgn_defensefieldturret") 		
					SobGroup_FillShipsByType("hgn_artillerysentinel"..playerIndex, "Player_Ships"..playerIndex, "hgn_artillerysentinel") 		
					SobGroup_FillShipsByType("hgn_massiveturret"..playerIndex, "Player_Ships"..playerIndex, "hgn_massiveturret")
          SobGroup_FillShipsByType("hgn_defenderdrone"..playerIndex, "Player_Ships"..playerIndex, "hgn_defenderdrone")					
				  SobGroup_FillShipsByType("hgn_patcher"..playerIndex, "Player_Ships"..playerIndex, "hgn_patcher") 
					--vaygr
					SobGroup_FillShipsByType("vgr_weaponplatform_gun"..playerIndex, "Player_Ships"..playerIndex, "vgr_weaponplatform_gun")    
          SobGroup_FillShipsByType("vgr_weaponplatform_lance"..playerIndex, "Player_Ships"..playerIndex, "vgr_weaponplatform_lance")    					
					SobGroup_FillShipsByType("vgr_weaponplatform_missile"..playerIndex, "Player_Ships"..playerIndex, "vgr_weaponplatform_missile")   
          SobGroup_FillShipsByType("vgr_mobile_inhibitor"..playerIndex, "Player_Ships"..playerIndex, "vgr_mobile_inhibitor") 					
					SobGroup_FillShipsByType("vgr_hyperspace_platform"..playerIndex, "Player_Ships"..playerIndex, "vgr_hyperspace_platform") 
          SobGroup_FillShipsByType("vgr_patcher"..playerIndex, "Player_Ships"..playerIndex, "vgr_patcher")					
          --classes
 					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_gunturret"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_rapidfiregunturret"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_pulsarturret"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_ionturret"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_missileturret"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_rts"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_defensefieldturret"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_artillerysentinel"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_massiveturret"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_defenderdrone"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "hgn_patcher"..playerIndex) 	
					SobGroup_SobGroupAdd("platforms"..playerIndex, "vgr_weaponplatform_gun"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "vgr_weaponplatform_lance"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "vgr_weaponplatform_missile"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "vgr_mobile_inhibitor"..playerIndex)
					SobGroup_SobGroupAdd("platforms"..playerIndex, "vgr_hyperspace_platform"..playerIndex)   
          SobGroup_SobGroupAdd("platforms"..playerIndex, "vgr_patcher"..playerIndex) 	 					
				end
				--utilities
				if hwsaving[2] == 5 or (year==0 and gametime>50) then
				  --hiigaran
          SobGroup_FillShipsByType("hgn_resourcecollector"..playerIndex, "Player_Ships"..playerIndex, "hgn_resourcecollector")   
          SobGroup_FillShipsByType("hgn_salvagecollector"..playerIndex, "Player_Ships"..playerIndex, "hgn_salvagecollector") 					
					SobGroup_FillShipsByType("hgn_resourcecontroller"..playerIndex, "Player_Ships"..playerIndex, "hgn_resourcecontroller") 
					SobGroup_FillShipsByType("temp", "Player_Ships"..playerIndex, "hgn_core") 
					SobGroup_SobGroupAdd("hgn_core"..playerIndex, "temp")	 
					SobGroup_ForceStayDockedIfDocking("hgn_core"..playerIndex)     										
					SobGroup_FillShipsByType("hgn_ecmprobe"..playerIndex, "Player_Ships"..playerIndex, "hgn_ecmprobe") 		
					SobGroup_FillShipsByType("hgn_probe"..playerIndex, "Player_Ships"..playerIndex, "hgn_probe") 			 	      
					SobGroup_FillShipsByType("hgn_proximitysensor"..playerIndex, "Player_Ships"..playerIndex, "hgn_proximitysensor") 
          SobGroup_FillShipsByType("temp", "Player_Ships"..playerIndex, "hgn_massshield")  	 
					SobGroup_SobGroupAdd("hgn_massshield"..playerIndex, "temp")
					SobGroup_FillShipsByType("temp", "Player_Ships"..playerIndex, "hgn_massshield1")  	 
					SobGroup_SobGroupAdd("hgn_massshield"..playerIndex, "temp")
					SobGroup_FillShipsByType("temp", "Player_Ships"..playerIndex, "hgn_massshield2")  	 
					SobGroup_SobGroupAdd("hgn_massshield"..playerIndex, "temp")           
					SobGroup_FillShipsByType("temp", "Player_Ships"..playerIndex, "hgn_massshield3")  	 
					SobGroup_SobGroupAdd("hgn_massshield"..playerIndex, "temp") 
          --vaygr
          SobGroup_FillShipsByType("vgr_resourcecollector"..playerIndex, "Player_Ships"..playerIndex, "vgr_resourcecollector")     
					SobGroup_FillShipsByType("vgr_resourcecontroller"..playerIndex, "Player_Ships"..playerIndex, "vgr_resourcecontroller") 
					SobGroup_FillShipsByType("vgr_resourcecontrollerdouble"..playerIndex, "Player_Ships"..playerIndex, "vgr_resourcecontrollerdouble")					        
					SobGroup_FillShipsByType("vgr_probe_ecm"..playerIndex, "Player_Ships"..playerIndex, "vgr_probe_ecm")    
					SobGroup_FillShipsByType("vgr_probe_prox"..playerIndex, "Player_Ships"..playerIndex, "vgr_probe_prox")    
					SobGroup_FillShipsByType("vgr_probe"..playerIndex, "Player_Ships"..playerIndex, "vgr_probe")	
          SobGroup_FillShipsByType("vgr_probe_smallhsbeacon"..playerIndex, "Player_Ships"..playerIndex, "vgr_probe_smallhsbeacon")	
          SobGroup_FillShipsByType("vgr_ghost"..playerIndex, "Player_Ships"..playerIndex, "vgr_ghost")						
          --classes
          SobGroup_SobGroupAdd("utilities"..playerIndex, "hgn_resourcecollector"..playerIndex)
					SobGroup_SobGroupAdd("utilities"..playerIndex, "hgn_salvagecollector"..playerIndex)
					SobGroup_SobGroupAdd("utilities"..playerIndex, "hgn_resourcecontroller"..playerIndex)
					SobGroup_SobGroupAdd("utilities"..playerIndex, "hgn_core"..playerIndex)	
					SobGroup_SobGroupAdd("utilities"..playerIndex, "vgr_resourcecollector"..playerIndex)
					SobGroup_SobGroupAdd("utilities"..playerIndex, "vgr_resourcecontroller"..playerIndex) 
					SobGroup_SobGroupAdd("utilities"..playerIndex, "vgr_resourcecontrollerdouble"..playerIndex)
					SobGroup_SobGroupAdd("othersnoparade"..playerIndex, "hgn_ecmprobe"..playerIndex)
					SobGroup_SobGroupAdd("othersnoparade"..playerIndex, "hgn_probe"..playerIndex)
					SobGroup_SobGroupAdd("othersnoparade"..playerIndex, "hgn_proximitysensor"..playerIndex) 							
          SobGroup_SobGroupAdd("othersnoparade"..playerIndex, "vgr_probe_ecm"..playerIndex)
					SobGroup_SobGroupAdd("othersnoparade"..playerIndex, "vgr_probe_prox"..playerIndex)
					SobGroup_SobGroupAdd("othersnoparade"..playerIndex, "vgr_probe"..playerIndex)   
					SobGroup_SobGroupAdd("othersnoparade"..playerIndex, "vgr_probe_smallhsbeacon"..playerIndex)   
					SobGroup_SobGroupAdd("othersnoparade"..playerIndex, "vgr_ghost"..playerIndex)   
					--megalith
          SobGroup_FillShipsByType("meg_gehenna_1ctm"..playerIndex, "Player_Ships"..playerIndex, "meg_gehenna_1ctm")     
					SobGroup_SobGroupAdd("miningbases", "meg_gehenna_1ctm"..playerIndex)	
					SobGroup_FillShipsByType("meg_gehenna_3ctm"..playerIndex, "Player_Ships"..playerIndex, "meg_gehenna_3ctm")     
					SobGroup_SobGroupAdd("miningbases", "meg_gehenna_3ctm"..playerIndex)	
					SobGroup_FillShipsByType("meg_balcoragate"..playerIndex, "Player_Ships"..playerIndex, "meg_balcoragate") 
					if SobGroup_Count("meg_balcoragate"..playerIndex) > 0 then   
						FX_StartEvent("meg_balcoragate"..playerIndex, "Gate_Trigger")          
					end		 
					SobGroup_FillShipsByType("meg_foundry"..playerIndex, "Player_Ships"..playerIndex, "meg_foundry") 
					if SobGroup_Count("meg_foundry"..playerIndex) > 0 then   
						SobGroup_AbilityActivate("meg_foundry"..playerIndex, AB_Scuttle, 1)
					end	 		
					SobGroup_FillShipsByType("meg_dreadnaughtberth"..playerIndex, "Player_Ships"..playerIndex, "meg_dreadnaughtberth") 
					if SobGroup_Count("meg_dreadnaughtberth"..playerIndex) > 0 then   
						SobGroup_AbilityActivate("meg_dreadnaughtberth"..playerIndex, AB_Lights, 1)
					end	 						
				end
				if hwsaving[2] == 6 or (year==0 and gametime>50) then
					SobGroup_SobGroupAdd("frigates", "frigates"..playerIndex)  
          SobGroup_SobGroupAdd("platforms", "platforms"..playerIndex)						
					SobGroup_SobGroupAdd("motherships", "hgn_mothership"..playerIndex) 
					SobGroup_SobGroupAdd("motherships", "vgr_mothership"..playerIndex)
					SobGroup_SobGroupAdd("shipyards", "hgn_shipyard"..playerIndex) 
					SobGroup_SobGroupAdd("shipyards", "vgr_shipyard"..playerIndex) 
					SobGroup_SobGroupAdd("carriers", "hgn_carrier"..playerIndex)
					SobGroup_SobGroupAdd("carriers", "hgn_spacecarrier"..playerIndex)
					SobGroup_SobGroupAdd("carriers", "hgn_battlecarrier"..playerIndex)
					SobGroup_SobGroupAdd("carriers", "hgn_lightcarrier"..playerIndex)
					SobGroup_SobGroupAdd("carriers", "hgn_scaver"..playerIndex)
					SobGroup_SobGroupAdd("carriers", "vgr_scaver"..playerIndex)
					SobGroup_SobGroupAdd("carriers", "vgr_lightcarrier"..playerIndex)
					SobGroup_SobGroupAdd("carriers", "vgr_carrier"..playerIndex)
					SobGroup_SobGroupAdd("carriers", "vgr_battlecarrier"..playerIndex)
					SobGroup_SobGroupAdd("battlecruisers", "hgn_battlecruiser"..playerIndex)  
					SobGroup_SobGroupAdd("battlecruisers", "hgn_vortex"..playerIndex)
					SobGroup_SobGroupAdd("battlecruisers", "hgn_battleship"..playerIndex)    
					SobGroup_SobGroupAdd("battlecruisers", "hgn_tanker"..playerIndex)  
					SobGroup_SobGroupAdd("battlecruisers", "hgn_lighttanker"..playerIndex)  
					SobGroup_SobGroupAdd("battlecruisers", "vgr_sinner"..playerIndex)
					SobGroup_SobGroupAdd("battlecruisers", "vgr_battlecruiser"..playerIndex)
          SobGroup_SobGroupAdd("battlecruisers", "vgr_missilebattlecruiser"..playerIndex)					
					SobGroup_SobGroupAdd("battlecruisers", "vgr_alkhalid"..playerIndex)
					SobGroup_SobGroupAdd("battlecruisers", "vgr_dreadnaught"..playerIndex)
          SobGroup_SobGroupAdd("battlecruisers", "vgr_am"..playerIndex)					
					SobGroup_SobGroupAdd("juggernaughts", "juggernaughts"..playerIndex)							
					SobGroup_SobGroupAdd("destroyers", "hgn_destroyer"..playerIndex)
					SobGroup_SobGroupAdd("destroyers", "hgn_sweeperdestroyer"..playerIndex)	
					SobGroup_SobGroupAdd("destroyers", "hgn_missiledestroyer"..playerIndex)	 
					SobGroup_SobGroupAdd("destroyers", "hgn_iondestroyer"..playerIndex)	 
					SobGroup_SobGroupAdd("destroyers", "hgn_advdestroyer"..playerIndex)	
					SobGroup_SobGroupAdd("destroyers", "hgn_artillerydestroyer"..playerIndex)	 
					SobGroup_SobGroupAdd("destroyers", "hgn_cruisera"..playerIndex)	 
					SobGroup_SobGroupAdd("destroyers", "hgn_cruiserb"..playerIndex)	 
					SobGroup_SobGroupAdd("destroyers", "hgn_smasher"..playerIndex)	 						  
					SobGroup_SobGroupAdd("destroyers", "vgr_destroyer"..playerIndex)	
					SobGroup_SobGroupAdd("destroyers", "vgr_pulsedestroyer"..playerIndex)		      	      
					SobGroup_SobGroupAdd("destroyers", "vgr_cruiser"..playerIndex) 
					SobGroup_SobGroupAdd("destroyers", "vgr_lightcruiser"..playerIndex) 
					SobGroup_SobGroupAdd("destroyers", "vgr_artilleryship"..playerIndex)     								 		                  
					SobGroup_SobGroupAdd("mobilerefineries", "hgn_resourcecontroller"..playerIndex)
					SobGroup_SobGroupAdd("mobilerefineries", "vgr_resourcecontroller"..playerIndex)
					SobGroup_SobGroupAdd("mobilerefineries", "vgr_resourcecontrollerdouble"..playerIndex)
					SobGroup_SobGroupAdd("resourcecollectors", "hgn_resourcecollector"..playerIndex)
					SobGroup_SobGroupAdd("resourcecollectors", "hgn_salvagecollector"..playerIndex)
					SobGroup_SobGroupAdd("resourcecollectors", "vgr_resourcecollector"..playerIndex)								
					SobGroup_SobGroupAdd("researchstations", "hgn_researchstation"..playerIndex)	
					SobGroup_SobGroupAdd("powerstations", "hgn_power"..playerIndex)	
					SobGroup_SobGroupAdd("powerstations", "hgn_aditional_core"..playerIndex)
          SobGroup_SobGroupAdd("powerstations", "hgn_plasma_inhibitor"..playerIndex)					
					SobGroup_SobGroupAdd("weaponstations", "hgn_combatbase"..playerIndex)
					SobGroup_SobGroupAdd("hyperspacestations", "hgn_hyperspacestation"..playerIndex)	 
					SobGroup_SobGroupAdd("crewstations", "hgn_crewstation"..playerIndex)		
					SobGroup_SobGroupAdd("commandfortresses", "hgn_commandfortress"..playerIndex)	
					SobGroup_SobGroupAdd("commandfortresses", "hgn_battlestation"..playerIndex)	
					SobGroup_SobGroupAdd("commandfortresses", "hgn_ark"..playerIndex)		      
					SobGroup_SobGroupAdd("commandfortresses", "vgr_commandfortress"..playerIndex)		          
				end
				if hwsaving[2] == 7 or (year==0 and gametime>50) then
				  --pulisce classi x clcolo amici/nemici	
					SobGroup_Clear("enemies"..playerIndex)    
					SobGroup_Clear("allies"..playerIndex)        
					SobGroup_Clear("fighterenemies"..playerIndex) 	      
					SobGroup_Clear("corvetteenemies"..playerIndex)  
					SobGroup_Clear("frigateenemies"..playerIndex) 	      
					SobGroup_Clear("smallcapitalenemies"..playerIndex)  
					SobGroup_Clear("bigcapitalenemies"..playerIndex) 
					SobGroup_Clear("fighterallies"..playerIndex) 	      
					SobGroup_Clear("corvetteallies"..playerIndex)  
					SobGroup_Clear("frigateallies"..playerIndex) 	      
					SobGroup_Clear("smallcapitalallies"..playerIndex)  
					SobGroup_Clear("bigcapitalallies"..playerIndex) 	
					SobGroup_Clear("minetargetenemies"..playerIndex)						     
					SobGroup_Clear("productioncapitalallies"..playerIndex)	 
					SobGroup_Clear("massshieldenemies"..playerIndex)
					SobGroup_Clear("orbitalstationallies"..playerIndex)
					SobGroup_Clear("traderallies"..playerIndex)	      
					--calcola nemici ed alleati x ogni singolo giocatore sia cpu che umano	        
					local hasallied = 0              	    
					for z = 0,(Universe_PlayerCount()-1),1 do	        
						if Player_IsAlive(z) == 1 then
							--enemies	        
							if AreAllied(playerIndex, z) == 0 then		     	            
								SobGroup_SobGroupAdd("enemies"..playerIndex, "Player_Ships"..z)
								--small capital	            
								SobGroup_SobGroupAdd("smallcapitalenemies"..playerIndex, "smallcapitals"..z)		
								SobGroup_SobGroupAdd("smallcapitalenemies"..playerIndex, "hgn_carrier"..z)
								SobGroup_SobGroupAdd("smallcapitalenemies"..playerIndex, "hgn_spacecarrier"..z)
								SobGroup_SobGroupAdd("smallcapitalenemies"..playerIndex, "hgn_battlecarrier"..z)
								SobGroup_SobGroupAdd("smallcapitalenemies"..playerIndex, "hgn_lightcarrier"..z)	
								SobGroup_SobGroupAdd("smallcapitalenemies"..playerIndex, "hgn_scaver"..z)
                SobGroup_SobGroupAdd("smallcapitalenemies"..playerIndex, "vgr_scaver"..z)		
                SobGroup_SobGroupAdd("smallcapitalenemies"..playerIndex, "vgr_lightcarrier"..z)								
								SobGroup_SobGroupAdd("smallcapitalenemies"..playerIndex, "vgr_carrier"..z)	
								SobGroup_SobGroupAdd("smallcapitalenemies"..playerIndex, "vgr_battlecarrier"..z)								
								--juggernaughts
								SobGroup_SobGroupAdd("juggernaughtenemies"..playerIndex, "juggernaughts"..z)
								--nuclear bomb              
								SobGroup_SobGroupAdd("nuclearbombenemies"..playerIndex, "hgn_nuclearbomb"..z)
								--command fortress
								SobGroup_SobGroupAdd("commandfortressenemies"..playerIndex, "hgn_commandfortress"..z) 
								SobGroup_SobGroupAdd("commandfortressenemies"..playerIndex, "hgn_battlestation"..z)
								SobGroup_SobGroupAdd("commandfortressenemies"..playerIndex, "hgn_ark"..z)  
								SobGroup_SobGroupAdd("commandfortressenemies"..playerIndex, "vgr_commandfortress"..z)                		                                                       
								--big capital	            
								SobGroup_SobGroupAdd("bigcapitalenemies"..playerIndex, "hgn_mothership"..z)
								SobGroup_SobGroupAdd("bigcapitalenemies"..playerIndex, "hgn_shipyard"..z)
								SobGroup_SobGroupAdd("bigcapitalenemies"..playerIndex, "hgn_commandfortress"..z)
								SobGroup_SobGroupAdd("bigcapitalenemies"..playerIndex, "hgn_battlestation"..z)
								SobGroup_SobGroupAdd("bigcapitalenemies"..playerIndex, "hgn_ark"..z)
								SobGroup_SobGroupAdd("bigcapitalenemies"..playerIndex, "hgn_massshield"..z)
								SobGroup_SobGroupAdd("bigcapitalenemies"..playerIndex, "vgr_mothership"..z)
								SobGroup_SobGroupAdd("bigcapitalenemies"..playerIndex, "vgr_shipyard"..z)		
								SobGroup_SobGroupAdd("bigcapitalenemies"..playerIndex, "vgr_commandfortress"..z)          
								--fighter	                      
								SobGroup_SobGroupAdd("fighterenemies"..playerIndex, "fighters"..z)		            
								--corvette	            
								SobGroup_SobGroupAdd("corvetteenemies"..playerIndex, "corvettes"..z)		                   
								--frigate/utility/platforms 	            
								SobGroup_SobGroupAdd("frigateenemies"..playerIndex, "frigates"..z)
								SobGroup_SobGroupAdd("frigateenemies"..playerIndex, "utilities"..z)
								SobGroup_SobGroupAdd("frigateenemies"..playerIndex, "platforms"..z)								   			
								--mass shields  			          
								SobGroup_SobGroupAdd("massshieldenemies"..playerIndex, "hgn_massshield"..z)	 	                                 	            
							else	     
								--se ha alleato setta il subsystem hasallied in supporter	            
								if z ~= playerIndex then
									hasallied = 1	               	              
								end 	                 
								--allies	     
								SobGroup_SobGroupAdd("allies"..playerIndex, "Player_Ships"..z)
								--fighter                
								SobGroup_SobGroupAdd("fighterallies"..playerIndex, "fighters"..z)		               
								--corvette	            
								SobGroup_SobGroupAdd("corvetteallies"..playerIndex, "corvettes"..z)	 
								--orbital station
								SobGroup_SobGroupAdd("orbitalstationallies"..playerIndex, "hgn_battlestation"..z)		
								--trader
								SobGroup_SobGroupAdd("traderallies"..playerIndex, "trader"..z)									
								--frigate/utility/platforms              
								SobGroup_SobGroupAdd("frigateallies"..playerIndex, "frigates"..z)
								SobGroup_SobGroupAdd("frigateallies"..playerIndex, "utilities"..z)
								SobGroup_SobGroupAdd("frigateallies"..playerIndex, "platforms"..z)								             
								--small capital	 
								SobGroup_SobGroupAdd("smallcapitalallies"..playerIndex, "smallcapitals"..z)		           
								SobGroup_SobGroupAdd("smallcapitalallies"..playerIndex, "hgn_carrier"..z)
								SobGroup_SobGroupAdd("smallcapitalallies"..playerIndex, "hgn_spacecarrier"..z)
								SobGroup_SobGroupAdd("smallcapitalallies"..playerIndex, "hgn_battlecarrier"..z)
								SobGroup_SobGroupAdd("smallcapitalallies"..playerIndex, "hgn_lightcarrier"..z)	
								SobGroup_SobGroupAdd("smallcapitalallies"..playerIndex, "hgn_scaver"..z)
								SobGroup_SobGroupAdd("smallcapitalallies"..playerIndex, "vgr_scaver"..z)
								SobGroup_SobGroupAdd("smallcapitalallies"..playerIndex, "vgr_lightcarrier"..z)	
								SobGroup_SobGroupAdd("smallcapitalallies"..playerIndex, "vgr_carrier"..z)	
								SobGroup_SobGroupAdd("smallcapitalallies"..playerIndex, "vgr_battlecarrier"..z)									
								--big capital	            
								SobGroup_SobGroupAdd("bigcapitalallies"..playerIndex, "hgn_mothership"..z)
								SobGroup_SobGroupAdd("bigcapitalallies"..playerIndex, "hgn_shipyard"..z)
								SobGroup_SobGroupAdd("bigcapitalallies"..playerIndex, "hgn_commandfortress"..z)
								SobGroup_SobGroupAdd("bigcapitalallies"..playerIndex, "hgn_battlestation"..z)
								SobGroup_SobGroupAdd("bigcapitalallies"..playerIndex, "hgn_ark"..z)
								SobGroup_SobGroupAdd("bigcapitalallies"..playerIndex, "vgr_mothership"..z)
								SobGroup_SobGroupAdd("bigcapitalallies"..playerIndex, "vgr_shipyard"..z)	
								SobGroup_SobGroupAdd("bigcapitalallies"..playerIndex, "vgr_commandfortress"..z)			        
								--trading, mining, auto-repair  			      
								SobGroup_SobGroupAdd("productioncapitalallies"..playerIndex, "productioncapital"..z)															
							end
						end  
					end 
					SobGroup_SobGroupAdd("minetargetenemies"..playerIndex, "smallcapitalenemies"..playerIndex)   
					SobGroup_SobGroupAdd("minetargetenemies"..playerIndex, "bigcapitalenemies"..playerIndex)
					--setta hp support hasallied se c'è alleato	      
					if hasallied >= 1 then
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "hasallied") == 0 then   
							SobGroup_CreateSubSystem("supporter"..playerIndex, "hasallied")            
						end               
					else   
						if SobGroup_GetHardPointHealth("supporter"..playerIndex, "hasallied") > 0 then 
							SobGroup_SetHardPointHealth("supporter"..playerIndex, "hasallied", 0) 
						end  
					end 
				end
				if hwsaving[2] == 8 or (year==0 and gametime>50) then
				  nfi[playerIndexList] = SobGroup_UpdateClass("fighters"..playerIndex, "lastfighters"..playerIndex, nfi[playerIndexList], 0, 0, 0)   
					nco[playerIndexList] = SobGroup_UpdateClass("corvettes"..playerIndex, "lastcorvettes"..playerIndex, nco[playerIndexList], 0, 0, 0)
					nonp[playerIndexList] = SobGroup_UpdateClass("othersnoparade"..playerIndex, "lastothersnoparade"..playerIndex, nonp[playerIndexList], 0, 0, 0)       	
					npc[playerIndexList] = SobGroup_UpdateClass("productioncapital"..playerIndex, "lastproductioncapital"..playerIndex, npc[playerIndexList], 0, 0, 0)      
					npca[playerIndexList] = SobGroup_UpdateClass("productioncapitalallies"..playerIndex, "lastproductioncapitalallies"..playerIndex, npca[playerIndexList], 0, 0, 0)       
					npsa[playerIndexList] = SobGroup_UpdateClass("Player_Ships"..playerIndex, "lastPlayer_Ships"..playerIndex, npsa[playerIndexList], 0, 0, 0)  					
	      end   
	    end  
		end  	
		playerIndex = playerIndex + 1  
	end	   	
	if hwsaving[2] == 9 or (year==0 and gametime>50) then		
		--update class x tutti
		nms = SobGroup_UpdateClass("motherships", "lastmotherships", nms, 1, 0, 1)
		nd = SobGroup_UpdateClass("destroyers", "lastdestroyers", nd, 1, 0, 0)
		nsy = SobGroup_UpdateClass("shipyards", "lastshipyards", nsy, 1, 0, 1)
		nc = SobGroup_UpdateClass("carriers", "lastcarriers", nc, 1, 0, 1)
		nbc = SobGroup_UpdateClass("battlecruisers", "lastbattlecruisers", nbc, 1, 0, 1)
		nj = SobGroup_UpdateClass("juggernaughts", "lastjuggernaughts", nj, 1, 0, 1)  
		nf = SobGroup_UpdateClass("frigates", "lastfrigates", nf, 0, 0)		 
		nmb = SobGroup_UpdateClass("miningbases", "lastminingbases", nmb, 0, 0, 0)  
		nrs = SobGroup_UpdateClass("researchstations", "lastresearchstations", nrs, 1, 0, 1)  
		nps = SobGroup_UpdateClass("powerstations", "lastpowerstations", nps, 1, 0, 1)
		nws = SobGroup_UpdateClass("weaponstations", "lastweaponstations", nws, 1, 0, 1)
		ncs = SobGroup_UpdateClass("crewstations", "lastcrewstations", ncs, 1, 0, 1)  
		ncf = SobGroup_UpdateClass("commandfortresses", "lastcommandfortresses", ncf, 1, 0, 1)  
		nmr = SobGroup_UpdateClass("mobilerefineries", "lastmobilerefineries", nmr, 0, 0, 0)  
		nrc = SobGroup_UpdateClass("resourcecollectors", "lastresourcecollectors", nrc, 0, 0, 0)   
		nhs = SobGroup_UpdateClass("hyperspacestations", "lasthyperspacestations", nhs, 1, 0, 1)        
		np =  SobGroup_UpdateClass("platforms", "lastplatforms", np, 0, 0, 0)	    	
	end		
	--update hwsaving
	hwsaving[2] = hwsaving[2] + 1
	--reset
	if hwsaving[2] > 9 or (year==0 and gametime>50) then
	  hwsaving[2] = 0
		Rule_Remove("sobgroups")
		Rule_AddInterval("sobgroups", runselected*1.8)	
	end	
end

------------------------------------------------------------------------------------------------------------------------------------------------------

function SobGroup_UpdateClass(Group, LastGroup, Counter, HasExperience, HasRU, HasName)
	--Group > LastGroup
	if SobGroup_Count(Group) > SobGroup_Count(LastGroup) then 
	  SobGroup_Clear ("temp")
    SobGroup_FillSubstract("temp", Group, LastGroup)    
		--se uguale a 1    
    if SobGroup_Count("temp") == 1 then     
			--FX
			SobGroup_AbilityActivate("temp", AB_Lights, 1)
		  if SobGroup_AreAnyOfTheseTypes("temp", "hgn_hyperspacestation") == 1 then    
		    FX_StartEvent("temp", "amb")
		  end
			if SobGroup_AreAnyOfTheseTypes("temp", "hgn_plasma_inhibitor") == 1 then    
				SobGroup_AbilityActivate("temp", AB_Lights, 0)		
      end
		  if SobGroup_AreAnyOfTheseTypes("temp", "hgn_nuclearbomb") == 1 then    
		    FX_StartEvent("temp", "amb")
		  end		  
			--experience	    
	    if HasExperience == 1 then 
	      SobGroup_SetHardPointHealth("temp", "experience", 0.00001)	       
	      if SobGroup_AreAnyOfTheseTypes("temp", "hgn_battlestation") == 1 then
	        SobGroup_SetHardPointHealth("temp", "pop", 0.000001)	       
	      end
	    end  
			--ru	    
	    if HasRU == 1 then 
	      SobGroup_SetHardPointHealth("temp", "ru", 0.5)	       
	    end  	
			--name	    
	    if HasName == 1 then 
	      if SobGroup_OwnedBy("temp") == Universe_CurrentPlayer() then			  
		      if SobGroup_AreAnyOfTheseTypes("temp", "hgn_mothership") == 1 then
		        Ping_LabelVisible(Ping_AddSobGroup("Pride of Hiigara", "name", "temp"), 1)
		      elseif SobGroup_AreAnyOfTheseTypes("temp", "vgr_mothership") == 1 then
		        Ping_LabelVisible(Ping_AddSobGroup("Vaygr Leader", "name", "temp"), 1) 
		      elseif SobGroup_AreAnyOfTheseTypes("temp", "hgn_shipyard") == 1 then   
		      else
		        name = unitname[casualizzatore[15]+1]
			      number = unitnumber[casualizzatore[15]+1]
			      Ping_LabelVisible(Ping_AddSobGroup(name .. tostring(number) .. "", "name", "temp"), 1)
			      unitnumber[casualizzatore[15]+1] = unitnumber[casualizzatore[15]+1] + 1   
		      end		      
		    end  
	    end  	     			
			--trade container 
			if SobGroup_AreAnyOfTheseTypes("temp", "hgn_container, vgr_container") == 1 then
				for z = 0,(Universe_PlayerCount()-1),1 do
					if Player_IsAlive(z) == 1 then     
						if AreAllied(SobGroup_OwnedBy("temp"), z) == 1 and z ~= SobGroup_OwnedBy("temp") then	                           									
							SobGroup_DockSobGroup("temp", "trader"..z)   															
						end
					end
				end								 
			end  	    
	    SobGroup_SetSwitchOwnerFlag("temp", 0)  
      --assign  			
      for i = 0,Counter,1 do					
				SobGroup_Create("split" .. tostring(Group) .. tostring(i))
				if SobGroup_Empty ("split" .. tostring(Group) .. tostring(i)) == 1 then					
					SobGroup_SobGroupAdd("split" .. tostring(Group) .. tostring(i), "temp")
					if i == Counter then
						Counter = Counter + 1
					end					
					break
				end
			end		
		--se > di 1	      
	  else
	    --per navi soggette ad essere spesso nella zona launchtimebeforestart, da fare      
			local SobNum = SobGroup_SplitGroupFromGroup("temp1", "temp", SobGroup_Count("temp"), "splitter")       							
			if SobNum >= 1 then
				for i = 0,(SobNum - 1),1 do					
					--FX
					SobGroup_AbilityActivate("temp1"..i, AB_Lights, 1)
					if SobGroup_AreAnyOfTheseTypes("temp1"..i, "hgn_hyperspacestation") == 1 then    
						FX_StartEvent("temp1"..i, "amb")
					end
					if SobGroup_AreAnyOfTheseTypes("temp1"..i, "hgn_plasma_inhibitor") == 1 then    
						SobGroup_AbilityActivate("temp1"..i, AB_Lights, 0)	            				
					end
					if SobGroup_AreAnyOfTheseTypes("temp1"..i, "hgn_nuclearbomb") == 1 then    
						FX_StartEvent("temp1"..i, "amb")
					end			  
					--experience	    
					if HasExperience == 1 then 
						SobGroup_SetHardPointHealth("temp1"..i, "experience", 0.00001)	       
						if SobGroup_AreAnyOfTheseTypes("temp1"..i, "hgn_battlestation") == 1 then
							SobGroup_SetHardPointHealth("temp1"..i, "pop", 0.000001)	       
						end
					end  
					--ru	    
					if HasRU == 1 then 
						SobGroup_SetHardPointHealth("temp1"..i, "ru", 0.5)	       
					end  	
					--name	    
					if HasName == 1 then 
						if SobGroup_OwnedBy("temp1"..i) == Universe_CurrentPlayer() then			  
							if SobGroup_AreAnyOfTheseTypes("temp1"..i, "hgn_mothership") == 1 then
								Ping_LabelVisible(Ping_AddSobGroup("Pride of Hiigara", "name", "temp1"..i), 1)
							elseif SobGroup_AreAnyOfTheseTypes("temp1"..i, "vgr_mothership") == 1 then
								Ping_LabelVisible(Ping_AddSobGroup("Vaygr Leader", "name", "temp1"..i), 1)  
							else
								name = unitname[casualizzatore[15]+1]
								number = unitnumber[casualizzatore[15]+1]
								Ping_LabelVisible(Ping_AddSobGroup(name .. tostring(number) .. "", "name", "temp1"..i), 1)
								unitnumber[casualizzatore[15]+1] = unitnumber[casualizzatore[15]+1] + 1   
							end		      
						end  
					end  						
          --trade container 
          if SobGroup_AreAnyOfTheseTypes("temp1"..i, "hgn_container, vgr_container") == 1 then
						for z = 0,(Universe_PlayerCount()-1),1 do
							if Player_IsAlive(z) == 1 then     
								if AreAllied(SobGroup_OwnedBy("temp1"..i), z) == 1 and z ~= SobGroup_OwnedBy("temp1"..i) then	                           									
									SobGroup_DockSobGroup("temp1"..i, "trader"..z)   															
								end
							end
						end								 
					end
					SobGroup_SetSwitchOwnerFlag("temp1"..i, 0)					
					--assign  			
					for z = 0,Counter,1 do					
						SobGroup_Create("split" .. tostring(Group) .. tostring(z))
						if SobGroup_Empty ("split" .. tostring(Group) .. tostring(z)) == 1 then					
							SobGroup_SobGroupAdd("split" .. tostring(Group) .. tostring(z), "temp1"..i)
							if z == Counter then
								Counter = Counter + 1
							end							
							break
						end
					end		
				end
			end	
	  end
		SobGroup_Clear(LastGroup)
	  SobGroup_SobGroupAdd(LastGroup, Group)
	--Group = 0	  
	elseif SobGroup_Count(Group) == 0 then
    Counter = 0  
    SobGroup_Clear(LastGroup)   
	--Queues reduction if huge    
  else
    if Counter >= 15 then	
			for z = (Counter-1),0,-1 do
				if SobGroup_Empty ("split" .. tostring(Group) .. tostring(z)) == 1 then
					Counter = Counter - 1					
				else
          break				
				end			
			end
		end		
    SobGroup_Clear(LastGroup)  
    SobGroup_SobGroupAdd(LastGroup, Group)   
  end  
  return Counter
end    

function SobGroup_SplitGroupFromGroup(SobGroupOut, SobGroupToSplit, NumberToSplit, SobGroupFrom)
  local index = 0
  local distance = 0
	local distancemax = 250000
  local bool = 0
  local SobNum = 0  
	SobGroup_Create ("TempSobGroup")  
  SobGroup_Create ("TempSobGroup1") 
  SobGroup_Clear ("TempSobGroup")  
  SobGroup_Clear ("TempSobGroup1")
  SobGroup_SobGroupAdd ("TempSobGroup", SobGroupToSplit)
  if SobGroup_Empty (SobGroupToSplit) == 1 then
    return 0
  end
  if NumberToSplit > SobGroup_Count(SobGroupToSplit) then
    NumberToSplit = SobGroup_Count(SobGroupToSplit)
  end
	if levelweareplaying == 0 then
	  distancemax = 1000000
	end	
  while index < NumberToSplit do
    bool = 0
    interval = 625.0  
    while bool == 0 do
      distance = distance + interval
      if distance > distancemax then        
        bool = 1
        return SobNum
      end
      SobGroup_FillProximitySobGroup ("TempSobGroup1", "TempSobGroup", SobGroupFrom, distance)            
      if SobGroup_Empty ("TempSobGroup1") == 1 then                
      else
        if SobGroup_Count ("TempSobGroup1") > 1 then                    
          if interval <= .2 then                        
            SobGroup_Create(SobGroupOut .. tostring(SobNum))
            SobGroup_Clear (SobGroupOut .. tostring(SobNum))
            SobGroup_SobGroupAdd (SobGroupOut .. tostring(SobNum), "TempSobGroup1")
            SobGroup_Create("tempsob")
            SobGroup_FillSubstract("tempsob", "TempSobGroup", SobGroupOut .. tostring(SobNum))
            SobGroup_Clear ("TempSobGroup")
            SobGroup_SobGroupAdd ("TempSobGroup", "tempsob")
            bool = 1
          else
            distance = distance - interval
            interval = interval / 5
          end
        else                    
          SobGroup_Create(SobGroupOut .. tostring(SobNum))
          SobGroup_Clear (SobGroupOut .. tostring(SobNum))
          SobGroup_SobGroupAdd (SobGroupOut .. tostring(SobNum), "TempSobGroup1")
          SobGroup_Create("tempsob")
          SobGroup_FillSubstract("tempsob", "TempSobGroup", SobGroupOut .. tostring(SobNum))
          SobGroup_Clear ("TempSobGroup")
          SobGroup_SobGroupAdd ("TempSobGroup", "tempsob")
          bool = 1
        end
      end            
    end
    index = index + SobGroup_Count(SobGroupOut .. tostring(SobNum))
    SobNum = SobNum + 1
  end
  return SobNum
end 

function SobGroup_GetDistanceToSobGroup(sg_Group1, sg_Group2)
  if SobGroup_Empty(sg_Group1) == 0 and SobGroup_Empty(sg_Group2) == 0 then
		local t_position1 = SobGroup_GetPosition(sg_Group1)
		local t_position2 = SobGroup_GetPosition(sg_Group2)
		local li_distance = floor(sqrt((t_position1[1] - t_position2[1])*(t_position1[1] - t_position2[1]) + (t_position1[2] - t_position2[2])*(t_position1[2] - t_position2[2]) + (t_position1[3] - t_position2[3])*(t_position1[3] - t_position2[3])))
		return li_distance
  else
    return nil
  end
end