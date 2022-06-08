function megalithinitialize()
	--trova il primo giocatore vivo
  local primogiocatorevivo = 0
  for i = 0,5,1 do	
		if SobGroup_Empty("Player_Ships"..i) == 0 then
		  primogiocatorevivo = i
			break
		end    
	end
  if Player_FillProximitySobGroup("temp", -1, "Player_Ships"..primogiocatorevivo, 10000000) == 1 then 
		--battle arena
		SobGroup_Create("banoowner")
		SobGroup_FillShipsByType("banoowner", "temp", "ba")   
		if SobGroup_Count("banoowner") > 0 then			
      Volume_AddSphere("battlearena",{0,0,0,},17000)		
			Rule_AddInterval("battlearenagm", 2.5)
			leveltype = "battlearena"
		end	
    --AI waves		
		SobGroup_Clear("banoowner")
		SobGroup_FillShipsByType("banoowner", "temp", "aiw")
		if SobGroup_Count("banoowner") > 0 then	
		  Rule_AddInterval("buildonstarttraining", 140)
			leveltype = "training"
		end
		--benchmark
		SobGroup_Clear("banoowner")
		SobGroup_FillShipsByType("banoowner", "temp", "b")
		if SobGroup_Count("banoowner") > 0 then	
		  Rule_AddInterval("Cinematic", 0.5)
		  Rule_AddInterval("buildonstartmovies", 1.5)
			leveltype = "benchmark"
			traininglevel = 1
		end
		--mining base  
    SobGroup_FillShipsByType("temp1", "temp", "meg_gehenna_1ctm")  
    SobGroup_SobGroupAdd("megalithnoowner", "temp1")  
		SobGroup_FillShipsByType("temp1", "temp", "meg_gehenna_3ctm")  
    SobGroup_SobGroupAdd("megalithnoowner", "temp1")  		
    local SobNum = SobGroup_SplitGroupFromGroup("temp", "megalithnoowner", SobGroup_Count("megalithnoowner"), "Player_Ships"..primogiocatorevivo) 
		for i = 0,(SobNum - 1),1 do	
		  if SobGroup_Empty("temp"..i) == 0 then
				SobGroup_SetHardPointHealth("temp"..i, "ru", 0.01) 
				SobGroup_AbilityActivate("temp"..i, AB_Lights, 0) 
			end    
		end 
		MaxCount[1] = (SobNum - 1)
		--cores    	  		
    SobGroup_Clear("temp1")		
    SobGroup_Clear("temp2")	
    SobGroup_FillShipsByType("temp1", "temp", "core_navigation")     
    SobGroup_SobGroupAdd("temp2", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "core_harvest")     
    SobGroup_SobGroupAdd("temp2", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "core_attack")     
    SobGroup_SobGroupAdd("temp2", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "core_defense")     
    SobGroup_SobGroupAdd("temp2", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "core_build")     
    SobGroup_SobGroupAdd("temp2", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "core_repair")     
    SobGroup_SobGroupAdd("temp2", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "core_cloak")     
    SobGroup_SobGroupAdd("temp2", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "core_hyperspace")     
    SobGroup_SobGroupAdd("temp2", "temp1")                
    local SobNum = SobGroup_SplitGroupFromGroup("cores", "temp2", SobGroup_Count("temp2"), "Player_Ships"..primogiocatorevivo) 
		for i = 0,(SobNum - 1),1 do	
		  if SobGroup_Empty("cores"..i) == 0 then		    
				Ping_LabelVisible(Ping_AddSobGroup("", "juggernaught", "cores"..i), 1)
			end    
		end
		--debris	  		
    SobGroup_Clear("temp1")		
    SobGroup_FillShipsByType("temp1", "temp", "meg_veildebris_chunk1")     
    SobGroup_SobGroupAdd("debrisnoowner", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "meg_veildebris_chunk2")     
    SobGroup_SobGroupAdd("debrisnoowner", "temp1")   
    SobGroup_FillShipsByType("temp1", "temp", "meg_veildebris_chunk3")     
    SobGroup_SobGroupAdd("debrisnoowner", "temp1")   
    SobGroup_FillShipsByType("temp1", "temp", "meg_veildebris_chunk4")     
    SobGroup_SobGroupAdd("debrisnoowner", "temp1")   
    SobGroup_FillShipsByType("temp1", "temp", "meg_veildebris_chunk5")     
    SobGroup_SobGroupAdd("debrisnoowner", "temp1")                        
    local SobNum = SobGroup_SplitGroupFromGroup("debris", "debrisnoowner", SobGroup_Count("debrisnoowner"), "Player_Ships"..primogiocatorevivo) 
		for i = 0,(SobNum - 1),1 do	
		  if SobGroup_Empty("debris"..i) == 0 then
			  SobGroup_SetSwitchOwnerFlag("debris"..i, 0)
		    if SobGroup_AreAnyOfTheseTypes("debris"..i, "meg_veildebris_chunk1") == 1 then
		      availableru = "50000" 
		    elseif SobGroup_AreAnyOfTheseTypes("debris"..i, "meg_veildebris_chunk2") == 1 then  
		      availableru = "55000"  
		    elseif SobGroup_AreAnyOfTheseTypes("debris"..i, "meg_veildebris_chunk3") == 1 then  
		      availableru = "60000"  
		    elseif SobGroup_AreAnyOfTheseTypes("debris"..i, "meg_veildebris_chunk4") == 1 then  
		      availableru = "65000"  
		    elseif SobGroup_AreAnyOfTheseTypes("debris"..i, "meg_veildebris_chunk5") == 1 then  
		      availableru = "70000"  
		    end  	      
				Ping_LabelVisible(Ping_AddSobGroup(availableru .. " RUs", "megalithnoowner", "debris"..i), 1)
			end    
		end
		MaxCount[2] = (SobNum - 1)
		--asteroids
    SobGroup_Clear("temp1")      
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_3_grey_nosalvage")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_3_grey_nosalvage_big")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_4_grey_nosalvage")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_4_grey_nosalvage_big")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_5_grey_nosalvage")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_5_grey_nosalvage_big")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_3_ice_nosalvage")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_3_ice_nosalvage_big")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_4_ice_nosalvage")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_4_ice_nosalvage_big")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_5_ice_nosalvage")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")  
    SobGroup_FillShipsByType("temp1", "temp", "asteroid_5_ice_nosalvage_big")     
    SobGroup_SobGroupAdd("AsteroidSmasher", "temp1")    
    local SobNum = SobGroup_SplitGroupFromGroup("asteroidbelt", "AsteroidSmasher", SobGroup_Count("AsteroidSmasher"), "Player_Ships"..primogiocatorevivo) 
		for i = 0,(SobNum - 1),1 do	
		  if SobGroup_Empty("asteroidbelt"..i) == 0 then
			  SobGroup_SetSwitchOwnerFlag("asteroidbelt"..i, 0)
		    if SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_3_grey_nosalvage") == 1 then
		      availableru = "8000" 
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_4_grey_nosalvage") == 1 then  
		      availableru = "9000"  
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_5_grey_nosalvage") == 1 then  
		      availableru = "10000"  
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_3_ice_nosalvage") == 1 then  
		      availableru = "12000"  
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_4_ice_nosalvage") == 1 then  
		      availableru = "13000"  
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_5_ice_nosalvage") == 1 then  
		      availableru = "14000"    
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_3_grey_nosalvage_big") == 1 then
		      availableru = "16000" 
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_4_grey_nosalvage_big") == 1 then  
		      availableru = "18000"  
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_5_grey_nosalvage_big") == 1 then  
		      availableru = "20000"  
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_3_ice_nosalvage_big") == 1 then  
		      availableru = "24000"  
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_4_ice_nosalvage_big") == 1 then  
		      availableru = "26000"  
		    elseif SobGroup_AreAnyOfTheseTypes("asteroidbelt"..i, "asteroid_5_ice_nosalvage_big") == 1 then  
		      availableru = "28000"    
		    end  	      
				Ping_LabelVisible(Ping_AddSobGroup(availableru .. " RUs", "megalithnoowner", "asteroidbelt"..i), 1)
			end    
		end   
		SobGroup_SobGroupAdd("AsteroidSmasher", "debrisnoowner")
		--SobGroup_SobGroupAdd("AsteroidSmasher", "megalithnoowner")		
		MaxCount[3] = (SobNum - 1)
		--megalith   
    SobGroup_Clear("temp1")    
    SobGroup_FillShipsByType("temp1", "temp", "meg_balcoragate")  
    SobGroup_SobGroupAdd("megalitenoowner", "temp1")   
    SobGroup_FillShipsByType("temp1", "temp", "meg_tanis_new")  
    SobGroup_SobGroupAdd("megalitenoowner", "temp1") 
    SobGroup_FillShipsByType("temp1", "temp", "meg_foundry")  
    SobGroup_SobGroupAdd("megalitenoowner", "temp1")      
    SobGroup_FillShipsByType("temp1", "temp", "meg_bentus")  
    SobGroup_SobGroupAdd("megalitenoowner", "temp1")
    SobGroup_FillShipsByType("temp1", "temp", "meg_bigred")  
    SobGroup_SobGroupAdd("megalitenoowner", "temp1")
    SobGroup_FillShipsByType("temp1", "temp", "meg_dreadnaughtberth")  
    SobGroup_SobGroupAdd("megalitenoowner", "temp1")   
    local SobNum = SobGroup_SplitGroupFromGroup("megalite", "megalitenoowner", SobGroup_Count("megalitenoowner"), "Player_Ships"..primogiocatorevivo) 
	  for i = 0,(SobNum - 1),1 do	
	    if SobGroup_Empty("megalite"..i) == 0 then			  
	      SobGroup_AbilityActivate("megalite"..i, AB_Scuttle, 0)
				SobGroup_SetSwitchOwnerFlag("megalite"..i, 0)
		    if SobGroup_AreAnyOfTheseTypes("megalite"..i, "meg_balcoragate") == 1 then
		      megalitenoowner = Ping_AddSobGroup("Hyperspace Megalith", "megalitenoowner", "megalite"..i)		
          Ping_LabelVisible(megalitenoowner, 1)					
		      Ping_AddDescription(megalitenoowner, 0, "-50% Hyperspace Cost")
		      Ping_AddDescription(megalitenoowner, 1, "-50% Hyperspace Recovery Time")
		      Ping_AddDescription(megalitenoowner, 2, "-50% Hyperspace Transaction Time")
		      Ping_AddDescription(megalitenoowner, 3, "-50% Hyperspace Exit Damage")				          
		    elseif SobGroup_AreAnyOfTheseTypes("megalite"..i, "meg_tanis_new") == 1 then				  
		      megalitenoowner1 = Ping_AddSobGroup("Defense/Support Megalith", "megalitenoowner1", "megalite"..i)	
          Ping_LabelVisible(megalitenoowner1, 1)					
		      Ping_AddDescription(megalitenoowner1, 0, "+10% Health")
		      Ping_AddDescription(megalitenoowner1, 1, "+100% Health Regegeration Rate")
		      Ping_AddDescription(megalitenoowner1, 2, "+100% Docked Ships Repair Speed")	         	  
		    elseif SobGroup_AreAnyOfTheseTypes("megalite"..i, "meg_foundry") == 1 then  		      
		      availableru = 200000
		      megalitenoowner2 = Ping_AddSobGroup(availableru .. " RUs", "megalitenoowner2", "megalite"..i)		      	  		        
		      Ping_LabelVisible(megalitenoowner2, 1) 		
          Ping_AddDescription(megalitenoowner2, 0, "Harvest Megalith")					
		      Ping_AddDescription(megalitenoowner2, 1, "+50% Collector Harvest")
		      Ping_AddDescription(megalitenoowner2, 2, "+50% Collector Load Capacity")
		      Ping_AddDescription(megalitenoowner2, 3, "+50% Collector Drop-Off")	          						
		    elseif SobGroup_AreAnyOfTheseTypes("megalite"..i, "meg_dreadnaughtberth") == 1 then
		      SobGroup_AbilityActivate("megalite"..i, AB_Lights, 0)
		      megalitenoowner3 = Ping_AddSobGroup("Attack Megalith", "megalitenoowner3", "megalite"..i)	
          Ping_LabelVisible(megalitenoowner3, 1)					
		      Ping_AddDescription(megalitenoowner3, 0, "+40% Weapon Damage")
		      Ping_AddDescription(megalitenoowner3, 1, "+40% Weapon Accuracy")	   
		    elseif SobGroup_AreAnyOfTheseTypes("megalite"..i, "meg_bentus") == 1 then 	
          megalitenoowner4 = Ping_AddSobGroup("Anti-Radiation Megalith", "megalitenoowner4", "megalite"..i)
          Ping_LabelVisible(megalitenoowner4, 1)					
		      Ping_AddDescription(megalitenoowner4, 0, "-50% Nebula Damage")
		      Ping_AddDescription(megalitenoowner4, 1, "-50% Dust Cloud Damage")	      
		    elseif SobGroup_AreAnyOfTheseTypes("megalite"..i, "meg_bigred") == 1 then  	  
          megalitenoowner5 = Ping_AddSobGroup("Cloak Megalith", "megalitenoowner5", "megalite"..i)	
          Ping_LabelVisible(megalitenoowner5, 1)					
		      Ping_AddDescription(megalitenoowner5, 0, "+50% Cloak Strenght")
		      Ping_AddDescription(megalitenoowner5, 1, "+50% Cloak Time")
					Ping_AddDescription(megalitenoowner5, 2, "-50% Cloak Detection")
		      Ping_AddDescription(megalitenoowner5, 3, "-50% Sensor Distortion")		      			 				
		    end
			end    
		end   			   
		MaxCount[4] = (SobNum - 1)
		--planet
	  SobGroup_Clear("temp1")	 
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
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_mercury")     
	  SobGroup_SobGroupAdd("planetnoowner", "temp1")   
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_venus")     
	  SobGroup_SobGroupAdd("planetnoowner", "temp1")    		
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_moon")     
	  SobGroup_SobGroupAdd("planetnoowner", "temp1")   
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_earth")     
	  SobGroup_SobGroupAdd("planetnoowner", "temp1")   
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_mars") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_jupiter") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_europa") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_io") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_callisto") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_ganymeade") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_saturn") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_pluto") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_uranus") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  SobGroup_FillShipsByType("temp1", "temp", "hgn_planet_neptune") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  SobGroup_FillShipsByType("temp1", "temp", "star_sol") 
	  SobGroup_SobGroupAdd("planetnoowner", "temp1") 
	  local wehaveaplanet = 0
	  local SobNum = SobGroup_SplitGroupFromGroup("planet", "planetnoowner", SobGroup_Count("planetnoowner"), "Player_Ships"..primogiocatorevivo) 
	  for i = 0,(SobNum - 1),1 do	
	    if SobGroup_Empty("planet"..i) == 0 then
	      SobGroup_AbilityActivate("planet"..i, AB_Scuttle, 0)
				SobGroup_SetSwitchOwnerFlag("planet"..i, 0)
		    if SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_mercury") == 1 then			      		      
		      wehaveaplanet = wehaveaplanet + 1			      
		      SobGroup_SobGroupAdd("planet_mercury", "planet"..i)   
		      SobGroup_SetSwitchOwnerFlag("planet_mercury", 0) 
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_venus") == 1 then			      		      
		      wehaveaplanet = wehaveaplanet + 1			      
		      SobGroup_SobGroupAdd("planet_venus", "planet"..i)   
		      SobGroup_SetSwitchOwnerFlag("planet_venus", 0) 
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_moon") == 1 then			      		      
		      wehaveaplanet = wehaveaplanet + 1			      
		      SobGroup_SobGroupAdd("planet_moon", "planet"..i)   
		      SobGroup_SetSwitchOwnerFlag("planet_moon", 0)     
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_earth") == 1 then  	          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_earth", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_earth", 0)    
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_mars") == 1 then      		          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_mars", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_mars", 0) 
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_jupiter") == 1 then      		          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_jupiter", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_jupiter", 0) 
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_europa") == 1 then      		          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_europa", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_europa", 0) 
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_io") == 1 then      		          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_io", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_io", 0) 
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_callisto") == 1 then      		          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_callisto", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_callisto", 0) 
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_ganymeade") == 1 then      		          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_ganymeade", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_ganymeade", 0) 		
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_saturn") == 1 then      		          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_saturn", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_saturn", 0)   
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_pluto") == 1 then  	          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_pluto", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_pluto", 0)  
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_uranus") == 1 then  	          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_uranus", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_uranus", 0)       
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "hgn_planet_neptune") == 1 then  	          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("planet_neptune", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("planet_neptune", 0)     
		    elseif SobGroup_AreAnyOfTheseTypes("planet"..i, "star_sol") == 1 then  	          
		      wehaveaplanet = wehaveaplanet + 1 		      
		      SobGroup_SobGroupAdd("star_sol", "planet"..i) 
		      SobGroup_SetSwitchOwnerFlag("star_sol", 0)  
		      Rule_AddInterval("solFX", 20)  --da inserire poi in planet management 
					for y = 0,(Universe_PlayerCount()-1),1 do	        
						if Player_IsAlive(y) == 1 then	
							if Player_CanResearch(y, "wehavesun" ) == 1 then
								Player_GrantResearchOption(y, "wehavesun")
							end
						end
					end	
		    end
			end    
		end 
		if wehaveaplanet >= 1 then
		  Rule_AddInterval("planetmanagement", 19)		  
		end
		--determina quale planet bar attivare
    if wehaveaplanet > 10 then
      levelweareplaying = 0
    elseif SobGroup_Empty("planet_earth") == 0 then	
		  levelweareplaying = 1
    elseif SobGroup_Empty("planet_jupiter") == 0 then
		  levelweareplaying = 2
    elseif SobGroup_Empty("planet_saturn") == 0 then
		  levelweareplaying = 3
		elseif SobGroup_Empty("planet_neptune") == 0 then
		  levelweareplaying = 4
    end	
		MaxCount[5] = (SobNum - 1) 
		--vortex
		SobGroup_Clear("temp1")
		SobGroup_Create("vortex")
	  SobGroup_FillShipsByType("temp1", "temp", "zzz_blackhole")     
	  SobGroup_SobGroupAdd("vortex", "temp1")   
		SobGroup_FillShipsByType("temp1", "temp", "zzz_blackhole_red")     
	  SobGroup_SobGroupAdd("vortex", "temp1")   
		SobGroup_FillShipsByType("temp1", "temp", "zzz_blackhole_green")     
	  SobGroup_SobGroupAdd("vortex", "temp1")   
  end  
  Rule_Remove("megalithinitialize")
  Rule_AddInterval("megalith", 6.11)
end

function solFX()
  if SobGroup_Empty("star_sol") == 0 then
  	FX_StartEvent("star_sol", "flare")  
  end	 
end

function megalith()  
  local availableru
	--pings megalith noowner
  if SobGroup_Empty("megalithnoowner") == 0 then	      
		for i = 0,(megalithnoownercount - 1),1 do	
		  if SobGroup_Empty("megalithnoowner"..i) == 0 then			
			  if SobGroup_PlayerIsInSensorRange("megalithnoowner"..i, Universe_CurrentPlayer()) == 1 then	
			    availableru = SobGroup_GetHardPointHealth("megalithnoowner"..i, "ru") * 100000 			    
			    Ping_LabelVisible(Ping_AddSobGroup(floor(availableru) .. " RUs", "megalithnoowner", "megalithnoowner"..i), 1)   
			  else		 
			    availableru = "??"   			   
			    Ping_LabelVisible(Ping_AddSobGroup(availableru .. " RUs", "megalithnoowner", "megalithnoowner"..i), 1)   
			  end  
			end    
		end
	end
  local playerIndex = 0     
  while playerIndex < Universe_PlayerCount() do    
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then 
        local playerIndexList = playerIndex + 1       
				--crea sobgroups
				SobGroup_FillShipsByType("hgn_minecontainer"..playerIndex, "Player_Ships"..playerIndex, "hgn_minecontainer") 
				SobGroup_FillShipsByType("vgr_minecontainer"..playerIndex, "Player_Ships"..playerIndex, "vgr_minecontainer") 	
				SobGroup_SobGroupAdd("minecontainers", "hgn_minecontainer"..playerIndex)
				SobGroup_SobGroupAdd("minecontainers", "vgr_minecontainer"..playerIndex)							
				--se c'è mining base                            
        if SobGroup_Count("meg_gehenna_1ctm"..playerIndex) > 0 or SobGroup_Count("meg_gehenna_3ctm"..playerIndex) > 0 then                            
					--calcolo ricerche        
          if Player_HasResearch(playerIndex, "resourcecollectorextraction3" ) == 1 then 
						resourcecollectorextractionList[playerIndexList] = 0.00019 * 1.8 
					elseif (Player_HasResearch(playerIndex, "resourcecollectorextraction2" ) == 1) then 
						resourcecollectorextractionList[playerIndexList] = 0.00019 * 1.5 
					elseif (Player_HasResearch(playerIndex, "resourcecollectorextraction1" ) == 1) then 
						resourcecollectorextractionList[playerIndexList] = 0.00019 * 1.25 
					end 
					if Player_HasResearch(playerIndex, "minecontainerrurate3" ) == 1 then 
						minecontainerrurateList[playerIndexList] = 0.0025 * 1.8 
						minecontainerrurateDisplayList[playerIndexList] = 9   --5*1.8(9) 
					elseif (Player_HasResearch(playerIndex, "minecontainerrurate2" ) == 1) then 
						minecontainerrurateList[playerIndexList] = 0.0025 * 1.5 
						minecontainerrurateDisplayList[playerIndexList] = 7.5   --5*1.5(7.5) 
					elseif (Player_HasResearch(playerIndex, "minecontainerrurate1" ) == 1) then 
						minecontainerrurateList[playerIndexList] = 0.0025 * 1.25 
						minecontainerrurateDisplayList[playerIndexList] = 6.25   --5*1.25(6.25) 
					end 
					if Player_HasResearch(playerIndex, "minecontainerload3" ) == 1 then 
						minecontainerloadList[playerIndexList] = 0.634 * 1.315 
						minecontainerloadDisplayList[playerIndexList] = 10000   --4000*2.5 
					elseif (Player_HasResearch(playerIndex, "minecontainerload2" ) == 1) then 
						minecontainerloadList[playerIndexList] = 0.634 * 1.21 
						minecontainerloadDisplayList[playerIndexList] = 8000   --4000*2 
					elseif (Player_HasResearch(playerIndex, "minecontainerload1" ) == 1) then 
						minecontainerloadList[playerIndexList] = 0.634 * 1.11 
						minecontainerloadDisplayList[playerIndexList] = 6000   --4000*1.2 
					end 
					if Player_HasResearch(playerIndex, "minecontainerdropoff3" ) == 1 then 
						minecontainerdropoffList[playerIndexList] = 0.0025 * 1.8 
						minecontainerdropoffDisplayList[playerIndexList] = 9   --5*1.8(9) 
					elseif (Player_HasResearch(playerIndex, "minecontainerdropoff2" ) == 1) then 
						minecontainerdropoffList[playerIndexList] = 0.0025 * 1.5 
						minecontainerdropoffDisplayList[playerIndexList] = 7.5   --5*1.5(7.5) 
					elseif (Player_HasResearch(playerIndex, "minecontainerdropoff1" ) == 1) then 
						minecontainerdropoffList[playerIndexList] = 0.0025 * 1.25 
						minecontainerdropoffDisplayList[playerIndexList] = 6.25   --5*1.25(6.25) 
					end
					--calcolo estrazione RU da miniera                                        
          for i = 0,(nmb - 1),1 do
            if SobGroup_Empty("splitminingbases"..i) == 0 then
							--raccoglie i collettori dockati                    
	            if SobGroup_OwnedBy("splitminingbases"..i) == playerIndex then    
			          SobGroup_SetAutoLaunch("splitminingbases"..i, ShipHoldStayDockedUpToLimit)
			          SobGroup_GetSobGroupDockedWithGroup("splitminingbases"..i, "gehennacollectors") 
			          SobGroup_Create("hgn_resourcecollector_insidemegalith"..i) 
			          SobGroup_Create("hgn_minecontainer_insidemegalith"..i)     
			          if Player_GetRace(playerIndex) == Race_Hiigaran then
								  SobGroup_Clear("temp")
								  SobGroup_FillShipsByType("temp", "gehennacollectors", "hgn_resourcecollector")
                  SobGroup_SobGroupAdd("hgn_resourcecollector_insidemegalith"..i, "temp")	
                  SobGroup_Clear("temp")									
			            SobGroup_FillShipsByType("temp", "gehennacollectors", "hgn_salvagecollector") 
									SobGroup_SobGroupAdd("hgn_resourcecollector_insidemegalith"..i, "temp")
			            SobGroup_FillShipsByType("hgn_minecontainer_insidemegalith"..i, "gehennacollectors", "hgn_minecontainer")
			          else
			            SobGroup_FillShipsByType("hgn_resourcecollector_insidemegalith"..i, "gehennacollectors", "vgr_resourcecollector") 	
			            SobGroup_FillShipsByType("hgn_minecontainer_insidemegalith"..i, "gehennacollectors", "vgr_minecontainer")
			          end  
			          if battlearena[1] < 200 then	
				          local ruvalue = SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") + ((resourcecollectorextractionList[playerIndexList] * SobGroup_Count("hgn_resourcecollector_insidemegalith"..i)) / 2.9)
				          if ruvalue <= 1 then
				            if ruvalue <= 0.00100 then                      
				              SobGroup_SetHardPointHealth("splitminingbases"..i, "ru", 0.00100) 
				            else
				              SobGroup_SetHardPointHealth("splitminingbases"..i, "ru", ruvalue) 
				            end       
				          else
				            SobGroup_SetHardPointHealth("splitminingbases"..i, "ru", 1)  
				          end  
				        end  
			          SobGroup_Clear("gehennacollectors")
								--fx		      
	              if SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) == 0 then
	                FX_StopEvent("splitminingbases"..i, "Sound")
	                bloccomegalith[i+1] = 0
	              end
	              if SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) > 0 then
	                FX_StartEvent("splitminingbases"..i, "Mining1")                
	                if bloccomegalith[i+1] == 0 then
	                  FX_StartEvent("splitminingbases"..i, "Sound")
	                  bloccomegalith[i+1] = 1
	                end                
	              end
	              if SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) > 5 then
	                FX_StartEvent("splitminingbases"..i, "Mining2")
	              end
	              if SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) > 10 then
	                FX_StartEvent("splitminingbases"..i, "Mining3")
	              end
	              if SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) > 15 then
	                FX_StartEvent("splitminingbases"..i, "Mining4")
	              end  
	              if SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) > 20 then
	                FX_StartEvent("splitminingbases"..i, "Mining5")
	              end    
	              if SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) > 25 then
	                FX_StartEvent("splitminingbases"..i, "Mining6")
	              end                                   
			        end 
							--pings megalith owner                            
		          if SobGroup_OwnedBy("splitminingbases"..i) == Universe_CurrentPlayer() then			          	  
						    availableru = SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") * 100000							    
						    megalithowner = Ping_AddSobGroup("" .. floor(availableru) .. " RUs", "megalithowner", "splitminingbases"..i) 	   
                Ping_LabelVisible(megalithowner, 1)		
						    Ping_AddDescription(megalithowner, 0, "" .. SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) .. " Resource Collectors (inside)")
		            Ping_AddDescription(megalithowner, 1, "" .. SobGroup_Count("hgn_minecontainer_insidemegalith"..i) .. " Mine Containers (inside)")									    
						  elseif AreAllied(Universe_CurrentPlayer(), SobGroup_OwnedBy("splitminingbases"..i)) == 1 then							
							  availableru = SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") * 100000							    
						    megalithowner = Ping_AddSobGroup("" .. floor(availableru) .. " RUs", "megalithowner", "splitminingbases"..i) 	   
                Ping_LabelVisible(megalithowner, 1)								    											
						  elseif SobGroup_PlayerIsInSensorRange("splitminingbases"..i, Universe_CurrentPlayer()) == 1 then
						    availableru = SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") * 100000							    
						    megalithowner = Ping_AddSobGroup("" .. floor(availableru) .. " RUs", "megalithowner", "splitminingbases"..i) 	   
                Ping_LabelVisible(megalithowner, 1)								    							
							else
						    availableru = "??"					    
						    Ping_LabelVisible(Ping_AddSobGroup(availableru .. " RUs", "megalithowner", "splitminingbases"..i), 1)       		    
						  end  						 			          
			      end  
	        end  
					--Mine containers	 
          if nmc > 0 then         	          
	          for z = 0,(nmc-1),1 do 	
	            SobGroup_ForceStayDockedIfDocking("splitminecontainers"..z)
	            maggiore = 0
	            if SobGroup_Empty("splitminecontainers"..z) == 0 then 
								--pings container
                if (SobGroup_OwnedBy("splitminecontainers"..z) == Universe_CurrentPlayer()) and (SobGroup_IsDocked("splitminecontainers"..z) == 0) then  
	                availableru = ((SobGroup_GetHardPointHealth("splitminecontainers"..z, "ru") - 0.5) * 1000) * 30   --il 30 è il valore di ogni "1" del range del carico in proporzione	  								  	                
	                if availableru <= 0 then
	                  availableru = 0
	                end
								  Ping_LabelVisible(Ping_AddSobGroup(floor(availableru) .. " RUs", "minecontainer", "splitminecontainers"..z), 1)  									
								end    		         
			          if SobGroup_OwnedBy("splitminecontainers"..z) == playerIndex then  	           
									--se dockato in mining bases		                               
			            if SobGroup_IsDockedSobGroup("splitminecontainers"..z, "meg_gehenna_1ctm"..playerIndex) == 1 or SobGroup_IsDockedSobGroup("splitminecontainers"..z, "meg_gehenna_3ctm"..playerIndex) == 1 then
			              for i = 0,(nmb - 1),1 do 
			                if SobGroup_OwnedBy("splitminingbases"..i) == playerIndex then
				                if SobGroup_IsDockedSobGroup("splitminecontainers"..z, "splitminingbases"..i) == 1 then
				                  if battlearena[1] < 200 then	
							              if (SobGroup_GetHardPointHealth("splitminingbases"..i, "ru")-0.00100) >= (minecontainerrurateList[playerIndexList] / 10) then
														  availableru = SobGroup_GetHardPointHealth("splitminecontainers"..z, "ru") + minecontainerrurateList[playerIndexList]
							                if availableru < 1 then
																SobGroup_SetHardPointHealth("splitminecontainers"..z, "ru", availableru)  
															else
                                SobGroup_SetHardPointHealth("splitminecontainers"..z, "ru", 1)  
															end
							                availableru = (SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") - (minecontainerrurateList[playerIndexList] / 10 * 3))
							                if availableru > 0 then
							                  SobGroup_SetHardPointHealth("splitminingbases"..i, "ru", availableru)     
							                else
							                  SobGroup_SetHardPointHealth("splitminingbases"..i, "ru", 0)      
							                end  
							              end 
							            end  
						              if SobGroup_GetHardPointHealth("splitminecontainers"..z, "ru") >= minecontainerloadList[playerIndexList] then
						                SobGroup_Launch("splitminecontainers"..z, "splitminingbases"..i)
						              end 
						            end	
						          end  	              
			            	end  		             
									--se dockato in production capital ships		               
			            elseif SobGroup_IsDockedSobGroup("splitminecontainers"..z, "productioncapitalallies"..playerIndex) == 1 then   			                    
			              if SobGroup_GetHardPointHealth("splitminecontainers"..z, "ru") <= 0.5 then
			                SobGroup_SetHardPointHealth("splitminecontainers"..z, "ru", 0.5)			                			                  
		                  for i = 0,(npca[playerIndexList]-1),1 do	
		                    if SobGroup_IsDockedSobGroup("splitminecontainers"..z, "splitproductioncapitalallies"..playerIndex .. tostring(i)) == 1 then
		                      if SobGroup_GetTactics("splitminecontainers"..z) ~= 2 then
		                        SobGroup_Launch("splitminecontainers"..z, "splitproductioncapitalallies"..playerIndex .. tostring(i))	
		                      end  
		                      break
		                    end  
		                  end                            
			              else 					              
			                availableru = (SobGroup_GetHardPointHealth("splitminecontainers"..z, "ru") - minecontainerdropoffList[playerIndexList])
			                if availableru > 0 then
			                  SobGroup_SetHardPointHealth("splitminecontainers"..z, "ru", availableru)     
			                else
			                  SobGroup_SetHardPointHealth("splitminecontainers"..z, "ru", 0)      
			                end  			                  
			                ruinjection = (75 * (minecontainerdropoffList[playerIndexList] / 0.0025)) * miningfactor	                     
			                Player_SetRU(playerIndex, Player_GetRU(playerIndex) + ruinjection)  
			                megalithList[playerIndexList] = floor(megalithList[playerIndexList] + ruinjection)
			              end 	              
									--se libero		              
			            else   
			            	if SobGroup_IsDoingAbility("splitminecontainers"..z, abilityList[9]) == 1 then
			            	elseif (SobGroup_IsDoingAbility("splitminecontainers"..z, abilityList[4]) == 1 and Player_HasResearch(playerIndex, "isai" ) == 0) then
			            	elseif (SobGroup_IsDoingAbility("splitminecontainers"..z, abilityList[6]) == 1 and Player_HasResearch(playerIndex, "isai" ) == 0) then 
			            	elseif SobGroup_IsDoingAbility("splitminecontainers"..z, abilityList[1]) == 1 then
			            	elseif (SobGroup_IsDoingAbility("splitminecontainers"..z, abilityList[12]) == 1 and Player_HasResearch(playerIndex, "isai" ) == 0) then
			            	else
											--cerca la Minig Base col carico maggiore       	           
				              if SobGroup_GetHardPointHealth("splitminecontainers"..z, "ru") <= 0.5 then
				                SobGroup_SetHardPointHealth("splitminecontainers"..z, "ru", 0.5)			 
				                local maggiore = 0
				                local first = 0
				                for i = 0,(nmb - 1),1 do 
				                  if SobGroup_OwnedBy("splitminingbases"..i) == playerIndex then
				                    if first == 0 then
				                      maggiore = i
				                      first = 1 
				                    end  
					                  if SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") >= SobGroup_GetHardPointHealth("splitminingbases"..maggiore, "ru") then
					                    maggiore = i
					                  end		
					                end  		                    
					            	end           
				                SobGroup_DockSobGroupAndStayDocked("splitminecontainers"..z, "splitminingbases"..maggiore) 	                
				              else
												--cerca la Production Capital più vicina 
				                SobGroup_Clear("temp")
				                SobGroup_Clear("temp1")
				                SobGroup_Clear("temp2")
												SobGroup_Clear("temp3")
				                local distance = 500				                
				                SobGroup_FillShipsByType("temp", "carriers", "hgn_lightcarrier")             
          							SobGroup_FillSubstract("temp1", "productioncapitalallies"..playerIndex, "temp") 
												SobGroup_Clear("temp")
                        SobGroup_FillShipsByType("temp", "carriers", "vgr_battlecarrier") 
												SobGroup_FillSubstract("temp2", "temp1", "temp")
						            while SobGroup_Count("temp3") == 0 and distance < 50000 do			              						     
									        if SobGroup_FillProximitySobGroup ("temp3", "temp2", "splitminecontainers"..z, distance) == 1 then       
										        SobGroup_DockSobGroupAndStayDocked("splitminecontainers"..z, "temp3")
										        break
										      end      
									        distance = distance + 500				           		              
				                end  		                 			                
				              end 	
				            end
										--calcola fx    
				            if SobGroup_GetHardPointHealth("splitminecontainers"..z, "ru") >= 0.6 then						            		              		                  
		                  FX_StartEvent( "splitminecontainers"..z, "ResourcingFull" )                  
		                elseif SobGroup_GetHardPointHealth("splitminecontainers"..z, "ru") >= 0.67 then		                		                  			
		                  FX_StartEvent( "splitminecontainers"..z, "ResourcingFull" )
		                elseif SobGroup_GetHardPointHealth("splitminecontainers"..z, "ru") >= 0.74 then		                  
		                  FX_StartEvent( "splitminecontainers"..z, "ResourcingFull1" )
		                elseif SobGroup_GetHardPointHealth("splitminecontainers"..z, "ru") >= 0.81 then		                  
		                  FX_StartEvent( "splitminecontainers"..z, "ResourcingFull1" )		                		                  		                  
		                end   			              	              	                       	            
			            end
			          end 
			        end             
	          end	
	        end
					--AI      
          if Player_HasResearch(playerIndex, "isai" ) == 1 then   
						--hiigaran 
          	if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then 
							--costruzione mine container
	            local hgn_resourcecollector_insidemegalith_total = 0
	            for i = 0,(nmb - 1),1 do  
	              if SobGroup_OwnedBy("splitminingbases"..i) == playerIndex then    
	                hgn_resourcecollector_insidemegalith_total = hgn_resourcecollector_insidemegalith_total + SobGroup_Count("hgn_resourcecollector_insidemegalith"..i)       
	                if ((Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_minecontainer" ) < (hgn_resourcecollector_insidemegalith_total/2.5) and SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") * 10000 > 1500) or (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_minecontainer" ) == 0)) and (Player_GetRU(playerIndex) < 6000) then
	                  if SobGroup_Empty("productioncapital"..playerIndex) == 0 then 
			                SobGroup_CreateShip("productioncapital"..playerIndex, "hgn_minecontainer")
			                break
			              end  
				          end	        
									--collettore dentro la mining base            
			            if (collectorinsidetime >= 60) and (((SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) <= (5 + (CPULODvalueList[playerIndex+1]*2))) and (SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") * 10000 < 1500) and (SobGroup_Count("hgn_resourcecollector"..playerIndex) >= 12)) or (SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) == 0)) then	                                      
			              local distance = 500
			              SobGroup_Clear("temp") 
	  								while SobGroup_Count("temp") == 0 and distance < 40000 do			              						     
							        if SobGroup_FillProximitySobGroup ("temp", "hgn_resourcecollector"..playerIndex, "splitminingbases"..i, distance) == 1 then       
								        SobGroup_DockSobGroupAndStayDocked("temp", "splitminingbases"..i)
								        if SobGroup_Empty("productioncapital"..playerIndex) == 0 then
								          SobGroup_CreateShip("productioncapital"..playerIndex, "hgn_resourcecollector")
								        end  
								        break
								      end      
							        distance = distance + 500				           		              
		                end  		 						                                           
					        end
				        end	        	
			      	end		     		 
						--Vaygr	                        
	        	else
							--costruzione mine container
	            local vgr_resourcecollector_insidemegalith_total = 0
	            for i = 0,(nmb - 1),1 do  
	              if SobGroup_OwnedBy("splitminingbases"..i) == playerIndex then    
	                vgr_resourcecollector_insidemegalith_total = vgr_resourcecollector_insidemegalith_total + SobGroup_Count("hgn_resourcecollector_insidemegalith"..i)       
	                if (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_minecontainer" ) < (vgr_resourcecollector_insidemegalith_total/2.5) and SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") * 10000 > 1500) or (Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_minecontainer" ) == 0) then
	                  if SobGroup_Empty("productioncapital"..playerIndex) == 0 then
			                SobGroup_CreateShip("productioncapital"..playerIndex, "vgr_minecontainer")
			                break
			              end  
				          end         
									--collettore dentro la mining base            
			            if (collectorinsidetime >= 60) and (((SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) <= (5 + (CPULODvalueList[playerIndex+1]*2))) and (SobGroup_GetHardPointHealth("splitminingbases"..i, "ru") * 10000 < 1500) and (SobGroup_Count("vgr_resourcecollector"..playerIndex) >= 12)) or (SobGroup_Count("hgn_resourcecollector_insidemegalith"..i) == 0)) then	                                      
			              local distance = 500
			              SobGroup_Clear("temp") 
	  								while SobGroup_Count("temp") == 0 and distance < 40000 do			              						     
							        if SobGroup_FillProximitySobGroup ("temp", "vgr_resourcecollector"..playerIndex, "splitminingbases"..i, distance) == 1 then       
								        SobGroup_DockSobGroupAndStayDocked("temp", "splitminingbases"..i)
								        if SobGroup_Empty("productioncapital"..playerIndex) == 0 then
								          SobGroup_CreateShip("productioncapital"..playerIndex, "vgr_resourcecollector")
								        end  
								        break
								      end      
							        distance = distance + 500				           		              
		                end  		 						                                             
					        end
				        end	
				      end           
	          end                 
		      end       
				--se non c'è mining base
        else
          if nmc > 0 then
	          for z = 0,(nmc-1),1 do
	            if SobGroup_Empty("splitminecontainers"..z) == 0 then              
		            if SobGroup_OwnedBy("splitminecontainers"..z) == playerIndex then
		              if SobGroup_IsDoingAbility("splitminecontainers"..z, abilityList[9]) == 1 then
			            --elseif SobGroup_IsDoingAbility("splitminecontainers"..z, abilityList[4]) == 1 then
			            --elseif SobGroup_IsDoingAbility("splitminecontainers"..z, abilityList[6]) == 1 then 
			            else       
		                SobGroup_DockSobGroupAndStayDocked("splitminecontainers"..z, "productioncapital"..playerIndex)
		              end  
		            end  
		          end  
	          end
	        end              
        end
				--AI cattura Mining Base, fa la procedura per tutti i megalithes
        if Player_HasResearch(playerIndex, "isai" ) == 1 then  
					--hiigaran 
	      	if ( Player_GetRace(playerIndex) == Race_Hiigaran ) then 
	          if SobGroup_FillProximitySobGroup ("targetmegalith"..playerIndex, "megalithnoowner", "productioncapital"..playerIndex, 20000) == 1 then                     
							if SobGroup_FillProximitySobGroup ("capturer"..playerIndex, "hgn_marinefrigate"..playerIndex, "targetmegalith"..playerIndex, 20000) == 1 then
							  if SobGroup_UnderAttack("Player_Ships"..playerIndex) == 0 then
									SobGroup_CaptureSobGroup("capturer"..playerIndex, "targetmegalith"..playerIndex)
								end	
							elseif SobGroup_FillProximitySobGroup ("temp", "productioncapital"..playerIndex, "targetmegalith"..playerIndex, 20000) == 1 then
                if SobGroup_AreAnyOfTheseTypes("temp", "hgn_mothership, hgn_shipyard, hgn_battleshipyard, hgn_shipyard_g, hgn_carrier, hgn_battlecarrier") == 1 and
									 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_marinefrigate") < 1 and
									 Player_HasResearch(playerIndex, "MarineTech" ) == 1 then        
                  SobGroup_CreateShip("temp", "hgn_marinefrigate")
                end								
              end						
            elseif SobGroup_FillProximitySobGroup ("targetmegalith"..playerIndex, "megalitenoowner", "productioncapital"..playerIndex, 25000) == 1 then		                    
							if SobGroup_FillProximitySobGroup ("capturer"..playerIndex, "hgn_marinefrigate"..playerIndex, "targetmegalith"..playerIndex, 25000) == 1 then
                if SobGroup_UnderAttack("Player_Ships"..playerIndex) == 0 then
									SobGroup_CaptureSobGroup("capturer"..playerIndex, "targetmegalith"..playerIndex)
								end	
							elseif SobGroup_FillProximitySobGroup ("temp", "productioncapital"..playerIndex, "targetmegalith"..playerIndex, 25000) == 1 then
                if SobGroup_AreAnyOfTheseTypes("temp", "hgn_mothership, hgn_shipyard, hgn_battleshipyard, hgn_shipyard_g, hgn_carrier, hgn_battlecarrier") == 1 and
									 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_marinefrigate") < 1 and
									 Player_HasResearch(playerIndex, "MarineTech" ) == 1 then        
                  SobGroup_CreateShip("temp", "hgn_marinefrigate")
                end					
              end            		
						end		
					--Vaygr	                        
	      	else
	          if SobGroup_FillProximitySobGroup ("targetmegalith"..playerIndex, "megalithnoowner", "productioncapital"..playerIndex, 20000) == 1 then                     
							if SobGroup_FillProximitySobGroup ("capturer"..playerIndex, "vgr_infiltratorfrigate"..playerIndex, "targetmegalith"..playerIndex, 20000) == 1 then
                if SobGroup_UnderAttack("Player_Ships"..playerIndex) == 0 then
									SobGroup_CaptureSobGroup("capturer"..playerIndex, "targetmegalith"..playerIndex)
								end	
							elseif SobGroup_FillProximitySobGroup ("temp", "productioncapital"..playerIndex, "targetmegalith"..playerIndex, 20000) == 1 then
                if SobGroup_AreAnyOfTheseTypes("temp", "vgr_mothership, vgr_shipyard, vgr_carrier") == 1 and
									 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_infiltratorfrigate") < 1 and
									 Player_HasResearch(playerIndex, "FrigateInfiltrationTech" ) == 1 then        
                  SobGroup_CreateShip("temp", "vgr_infiltratorfrigate")
                end					
              end
						elseif SobGroup_FillProximitySobGroup ("targetmegalith"..playerIndex, "megalitenoowner", "productioncapital"..playerIndex, 25000) == 1 then		                    
							if SobGroup_FillProximitySobGroup ("capturer"..playerIndex, "vgr_infiltratorfrigate"..playerIndex, "targetmegalith"..playerIndex, 25000) == 1 then
                if SobGroup_UnderAttack("Player_Ships"..playerIndex) == 0 then
									SobGroup_CaptureSobGroup("capturer"..playerIndex, "targetmegalith"..playerIndex)
								end	
							elseif SobGroup_FillProximitySobGroup ("temp", "productioncapital"..playerIndex, "targetmegalith"..playerIndex, 25000) == 1 then
                if SobGroup_AreAnyOfTheseTypes("temp", "vgr_mothership, vgr_shipyard, vgr_carrier") == 1 and
									 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_infiltratorfrigate") < 1 and
									 Player_HasResearch(playerIndex, "FrigateInfiltrationTech" ) == 1 then        
                  SobGroup_CreateShip("temp", "vgr_infiltratorfrigate")
                end							
              end	
						end		
	        end 	
	      end
				--Aggiorna l'interfaccia        
        if playerIndex == Universe_CurrentPlayer() and ((year==0 and gametime<35) or year>0 or intro==1) then
          UI_SetTextLabelText("UnitCapInfoPopup", "lblmegalith", ""..megalithList[playerIndexList]);                
        end                
      end
    end     
    playerIndex = playerIndex + 1
  end 
	--crea sobgroups
  nmc = SobGroup_UpdateClass("minecontainers", "lastminecontainers", nmc, 0, 1, 0)  		
	--inside time x AI  
  if collectorinsidetime >= 60 then
    collectorinsidetime = 0
  end       
  collectorinsidetime = collectorinsidetime + 1  
end

---Plant management-----------------------------------------------------------

function planetmanagement() 
  for i = 1,6,1 do   
    planetList[i] = 0
  end
  if SobGroup_Empty("planet_mercury") == 0 then
    planetmanagementExecute("planet_mercury", 42000, 1)
  end
  if SobGroup_Empty("planet_venus") == 0 then
    planetmanagementExecute("planet_venus", 57000, 2)
  end
  if SobGroup_Empty("planet_earth") == 0 then
		planetmanagementExecute("planet_earth", 57000, 3)
	end
  if SobGroup_Empty("planet_moon") == 0 then
    planetmanagementExecute("planet_moon", 42000, 4)
  end  
	if SobGroup_Empty("planet_mars") == 0 then	
	  planetmanagementExecute("planet_mars", 57000, 5)	
	end  
	if SobGroup_Empty("planet_jupiter") == 0 then	
	  planetmanagementExecute("planet_jupiter", 112000, 6)	
	end  
	if SobGroup_Empty("planet_europa") == 0 then	
	  planetmanagementExecute("planet_europa", 42000, 7)	
	end  
	if SobGroup_Empty("planet_io") == 0 then	
	  planetmanagementExecute("planet_io", 42000, 8)	
	end  
	if SobGroup_Empty("planet_callisto") == 0 then	
	  planetmanagementExecute("planet_callisto", 42000, 9)	
	end  
	if SobGroup_Empty("planet_ganymeade") == 0 then	
	  planetmanagementExecute("planet_ganymeade", 42000, 10)	
	end  
	if SobGroup_Empty("planet_saturn") == 0 then	
	  planetmanagementExecute("planet_saturn", 112000, 11)	
	end  
	if SobGroup_Empty("planet_uranus") == 0 then	
	  planetmanagementExecute("planet_uranus", 72000, 12)	
	end
	if SobGroup_Empty("planet_neptune") == 0 then	
	  planetmanagementExecute("planet_neptune", 72000, 13)	
	end  
	if SobGroup_Empty("planet_pluto") == 0 then	
	  planetmanagementExecute("planet_pluto", 42000, 14)	
	end  	
end

function planetmanagementExecute(pianeta, raggio, indexList)    
	local giocatore = {0,-1}
	local playerIndex = 0  
	local colonizers = 0 
	local invaders = 0  
	local guest = 0  	                
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then            
        if SobGroup_FillProximitySobGroup ("temp", "Player_Ships"..playerIndex, pianeta, (raggio-5000)) == 1 then
          if SobGroup_OwnedBy(pianeta) >= 0 then
					  --hi
						if SobGroup_GetHardPointHealth(pianeta, "hi") == 0 then
							SobGroup_CreateSubSystem(pianeta, "hi")
						end  
            if playerIndex == SobGroup_OwnedBy(pianeta) then
	            if SobGroup_AreAnyOfTheseTypes("temp", "hgn_mothership, vgr_mothership, hgn_battlestation") == 1 then              
	              giocatore[1] = giocatore[1] + 1
	            end
	            colonizers = colonizers + SobGroup_Count("temp")	            
	          elseif AreAllied(playerIndex, SobGroup_OwnedBy(pianeta)) == 1 then                
            	guest = guest + SobGroup_Count("temp")  
            else
	            if SobGroup_AreAnyOfTheseTypes("temp", "hgn_mothership, vgr_mothership, hgn_battlestation") == 1 then
	            	giocatore[1] = giocatore[1] + 1  
	            	giocatore[2] = playerIndex
	            end	 
	            invaders = invaders + SobGroup_Count("temp")              							
	          end  
          else
            if SobGroup_AreAnyOfTheseTypes("temp", "hgn_mothership, vgr_mothership, hgn_battlestation") == 1 then
            	giocatore[1] = giocatore[1] + 1  
            	giocatore[2] = playerIndex
            end	
            invaders = invaders + SobGroup_Count("temp")                       
          end 
				else          		
				end                    
      end
    end
    playerIndex = playerIndex + 1
  end  
	
	--Colonized and Safe---------------------------------------
  if giocatore[1] == 1 then   	
    --switch del pianeta se solo 1 giocatore e nemico    		
		if (giocatore[2] >= 0) and (SobGroup_OwnedBy(pianeta) ~= giocatore[2]) then
			if planetPopulationList[indexList].occupationtimer == 0 then
				SobGroup_SwitchOwner(pianeta, giocatore[2])        
				--if giocatore[2] == Universe_CurrentPlayer() then
					UI_SetScreenEnabled(pianeta, 1)		
					UI_SetScreenVisible(pianeta, 1)		
					UI_SetTextLabelText(pianeta, "lblSubTitle", planetPopulationList[indexList].name .. " colonized by " .. CPULODList[giocatore[2]+1]); 
					UI_SetTextLabelText(pianeta, "lblSubTitle1", "Population: " .. planetPopulationList[indexList].population .. " (" .. planetPopulationList[indexList].population .. " RUs/year)");		
					UI_SetTextLabelText(pianeta, "lblSubTitle2", "" .. planetPopulationList[indexList].car1);		
					UI_SetTextLabelText(pianeta, "lblSubTitle3", "" .. planetPopulationList[indexList].car2);		
					UI_SetTextLabelText(pianeta, "lblSubTitle4", "" .. planetPopulationList[indexList].car3);		
					UI_SetTextLabelText(pianeta, "lblSubTitle5", "" .. planetPopulationList[indexList].car4);										
					Subtitle_Add(Actor_FleetIntel,"Planet colonized",7)
					Sound_SpeechPlay("Data:sound/sfx/ui/sensorsmanager/worldplanewhoosh")
				--end	
			else
			  --if Player_GetRace(giocatore[2]) == Race_Hiigaran and 
				   --Player_HasResearch(giocatore[2], "isai" ) == 0 and
					 --Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(giocatore[2], "hgn_mothership") > 0 then
					--if SobGroup_GetHardPointHealth("hgn_mothership"..giocatore[2], "hgn_orders_planet") > 0 then
						--planetPopulationList[indexList].occupationtimer = planetPopulationList[indexList].occupationtimer - 1		
					--end	
				--else
          planetPopulationList[indexList].occupationtimer = planetPopulationList[indexList].occupationtimer - 1
        --end				
			end	
			--ui
			planetnoowner = Ping_AddSobGroup("Population: " .. planetPopulationList[indexList].population .. " (" .. planetPopulationList[indexList].population .. " RUs/year)", "planetnoowner", pianeta) 	   
			Ping_LabelVisible(planetnoowner, 1)	
			Ping_AddDescription(planetnoowner, 0, "Status: Colonization in progress, remaining " .. planetPopulationList[indexList].occupationtimer)    
			Ping_AddDescription(planetnoowner, 1, "" .. planetPopulationList[indexList].car1)
			Ping_AddDescription(planetnoowner, 2, "" .. planetPopulationList[indexList].car2)
			Ping_AddDescription(planetnoowner, 3, "" .. planetPopulationList[indexList].car3)	    
			Ping_AddDescription(planetnoowner, 4, "" .. planetPopulationList[indexList].car4)    
      if giocatore[2] == Universe_CurrentPlayer() then			
				Subtitle_Add(Actor_FleetIntel,"Colonization in progress",1.72)  
			end	
		else      
		  planetPopulationList[indexList].occupationtimer = floor(10+(planetPopulationList[indexList].population/1000))
			--aggiorna pianeta se un giocatore e amico	
      local pop = 10			
			if SobGroup_GetHardPointHealth(pianeta, "planet_tech1") > 0 then	
        pop=floor(pop+100/popbalancer) -- 13->17			
			end
			if SobGroup_GetHardPointHealth(pianeta, "planet_tech2") > 0 then		
        pop=floor(pop+200/popbalancer)			
			end
			if SobGroup_GetHardPointHealth(pianeta, "planet_tech3") > 0 then	
        pop=floor(pop+300/popbalancer)			
			end
			if SobGroup_GetHardPointHealth(pianeta, "planet_tech4") > 0 then
        pop=floor(pop+400/popbalancer)			
			end
			if SobGroup_GetHardPointHealth(pianeta, "planet_tech5") > 0 then		
        pop=floor(pop+500/popbalancer)			
			end
			if SobGroup_GetHardPointHealth(pianeta, "planet_tech6") > 0 then			
			  pop=floor(pop+600/popbalancer) -- 63->116
			end			
			planetPopulationList[indexList].population = planetPopulationList[indexList].population + pop     
			planetList[SobGroup_OwnedBy(pianeta)+1] = planetList[SobGroup_OwnedBy(pianeta)+1] + planetPopulationList[indexList].population 
      --ui
			planetnoowner = Ping_AddSobGroup("Population: " .. planetPopulationList[indexList].population .. " (" .. planetPopulationList[indexList].population .. " RUs/year)", "planetnoowner", pianeta) 	   
			Ping_LabelVisible(planetnoowner, 1)				
			if colonizers == 0 then
				colonizers = 1
			end  	  
      Ping_AddDescription(planetnoowner, 0, "Status: Colonized and Safe" .. " (" .. "Colonizers: " .. (colonizers-1) .. ", Allies: " .. guest .. ", Invaders: " .. invaders .. ")")    
			Ping_AddDescription(planetnoowner, 1, "" .. planetPopulationList[indexList].car1)
			Ping_AddDescription(planetnoowner, 2, "" .. planetPopulationList[indexList].car2)
			Ping_AddDescription(planetnoowner, 3, "" .. planetPopulationList[indexList].car3)	    
			Ping_AddDescription(planetnoowner, 4, "" .. planetPopulationList[indexList].car4)	 	
      --planet bar
      UI_SetTextLabelText("planet_list", pianeta .. tostring("label1"), "Safe"); 
			UI_SetTextLabelText("planet_list_beam", pianeta .. tostring("label1"), "Safe");
			UI_SetTextLabelText("planet_list_jf", pianeta .. tostring("label1"), "Safe");
			UI_SetTextLabelText("planet_list_fs", pianeta .. tostring("label1"), "Safe");
			UI_SetTextLabelText("planet_list_sf", pianeta .. tostring("label1"), "Safe");					
    end	
  --Colonized and Not Safe---------------------------		
  elseif ((giocatore[1] > 1 or colonizers > 0) and (SobGroup_OwnedBy(pianeta) >= 0)) then      
    planetPopulationList[indexList].occupationtimer = floor(10+(planetPopulationList[indexList].population/1000))	
		--ui
    planetnoowner = Ping_AddSobGroup("Population: " .. planetPopulationList[indexList].population .. " (0 RUs/year)", "planetnoowner", pianeta) 	   
    Ping_LabelVisible(planetnoowner, 1)		
    if colonizers == 0 then
      colonizers = 1
    end  	
    Ping_AddDescription(planetnoowner, 0, "Status: Colonized and Not Safe" .. " (" .. "Colonizers: " .. (colonizers-1) .. ", Allies: " .. guest .. ", Invaders: " .. invaders .. ")")  	 
    Ping_AddDescription(planetnoowner, 1, "" .. planetPopulationList[indexList].car1)
    Ping_AddDescription(planetnoowner, 2, "" .. planetPopulationList[indexList].car2)
    Ping_AddDescription(planetnoowner, 3, "" .. planetPopulationList[indexList].car3)
    Ping_AddDescription(planetnoowner, 4, "" .. planetPopulationList[indexList].car4)	 
		--planet bar
		UI_SetTextLabelText("planet_list", pianeta .. tostring("label1"), "Col."); 
		UI_SetTextLabelText("planet_list_beam", pianeta .. tostring("label1"), "Col.");
		UI_SetTextLabelText("planet_list_jf", pianeta .. tostring("label1"), "Col.");
		UI_SetTextLabelText("planet_list_fs", pianeta .. tostring("label1"), "Col.");
		UI_SetTextLabelText("planet_list_sf", pianeta .. tostring("label1"), "Col.");
  --Not Colonized------------------------------------  		
  else
	  planetPopulationList[indexList].occupationtimer = floor(10+(planetPopulationList[indexList].population/1000))
		--ui
    planetnoowner = Ping_AddSobGroup("Population: " .. planetPopulationList[indexList].population .. " (" .. planetPopulationList[indexList].population .. " RUs/year)", "planetnoowner", pianeta) 	   
    Ping_LabelVisible(planetnoowner, 1)		
    Ping_AddDescription(planetnoowner, 0, "Status: Free")  	 
    Ping_AddDescription(planetnoowner, 1, "" .. planetPopulationList[indexList].car1)
    Ping_AddDescription(planetnoowner, 2, "" .. planetPopulationList[indexList].car2)
    Ping_AddDescription(planetnoowner, 3, "" .. planetPopulationList[indexList].car3)	
    Ping_AddDescription(planetnoowner, 4, "" .. planetPopulationList[indexList].car4)	    
    --planet bar
		UI_SetTextLabelText("planet_list", pianeta .. tostring("label1"), ""); 
		UI_SetTextLabelText("planet_list_beam", pianeta .. tostring("label1"), "");
		UI_SetTextLabelText("planet_list_jf", pianeta .. tostring("label1"), "");
		UI_SetTextLabelText("planet_list_fs", pianeta .. tostring("label1"), "");
		UI_SetTextLabelText("planet_list_sf", pianeta .. tostring("label1"), "");				
  end
	UI_SetTextLabelText("planet_list", pianeta .. tostring("label"), planetPopulationList[indexList].population); 
	UI_SetTextLabelText("planet_list_beam", pianeta .. tostring("label"), planetPopulationList[indexList].population);
	UI_SetTextLabelText("planet_list_jf", pianeta .. tostring("label"), planetPopulationList[indexList].population);
	UI_SetTextLabelText("planet_list_fs", pianeta .. tostring("label"), planetPopulationList[indexList].population);
	UI_SetTextLabelText("planet_list_sf", pianeta .. tostring("label"), planetPopulationList[indexList].population);	
end