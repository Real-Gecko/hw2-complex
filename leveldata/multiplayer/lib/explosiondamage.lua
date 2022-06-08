function SetInvulnerabilityDockedShips()
  --collectors
	if nrc > 0 then 
  	for i = 0,nrc - 1,1 do		 
  	  if SobGroup_Empty("splitresourcecollectors"..i) == 0 then
			  if SobGroup_IsDocked("splitresourcecollectors"..i) == 1 then	
					SobGroup_SetInvulnerability("splitresourcecollectors"..i, 1)
				end	
			end			
		end
	end	
  --jug
	if nj > 0 then 
  	for i = 0,nj - 1,1 do		 
  	  if SobGroup_Empty("splitjuggernaughts"..i) == 0 then
			  if SobGroup_IsDocked("splitjuggernaughts"..i) == 1 then	
					SobGroup_SetInvulnerability("splitjuggernaughts"..i, 1)
				end	
			end			
		end
	end	
	--platforms
	if np > 0 then 
  	for i = 0,np - 1,1 do		 
  	  if SobGroup_Empty("splitplatforms"..i) == 0 then
			  if SobGroup_AreAnyOfTheseTypes("splitplatforms"..i, "hgn_artillerysentinel") == 1 then 
					if SobGroup_IsDocked("splitplatforms"..i) == 1 then	
						SobGroup_SetInvulnerability("splitplatforms"..i, 1)
					end	
				end
			end			
		end
	end	
	--ms
	if nms > 0 then 
  	for i = 0,nms - 1,1 do		 
  	  if SobGroup_Empty("splitmotherships"..i) == 0 then
			  if SobGroup_AreAnyOfTheseTypes("splitmotherships"..i, "hgn_mothership") == 1 then 
					if SobGroup_IsDocked("splitmotherships"..i) == 1 then	
						SobGroup_SetInvulnerability("splitmotherships"..i, 1)
					end	
				end
			end			
		end
	end	
	--rs
	if nrs > 0 then 
  	for i = 0,nrs - 1,1 do		 
  	  if SobGroup_Empty("splitresearchstations"..i) == 0 then
			  if SobGroup_IsDocked("splitresearchstations"..i) == 1 then	
					SobGroup_SetInvulnerability("splitresearchstations"..i, 1)
				end	
			end			
		end
	end
	--cs
	if ncs > 0 then 
  	for i = 0,ncs - 1,1 do		 
  	  if SobGroup_Empty("splitcrewstations"..i) == 0 then
			  if SobGroup_IsDocked("splitcrewstations"..i) == 1 then	
					SobGroup_SetInvulnerability("splitcrewstations"..i, 1)
				end	
			end			
		end
	end
	--ps
	if nps > 0 then 
  	for i = 0,nps - 1,1 do		 
  	  if SobGroup_Empty("splitpowerstations"..i) == 0 then
			  if SobGroup_AreAnyOfTheseTypes("splitpowerstations"..i, "hgn_power") == 1 then
					if SobGroup_IsDocked("splitpowerstations"..i) == 1 then	
						SobGroup_SetInvulnerability("splitpowerstations"..i, 1)
					end	
				end	
			end			
		end
	end
	--ws
	if nws > 0 then 
  	for i = 0,nws - 1,1 do		 
  	  if SobGroup_Empty("splitweaponstations"..i) == 0 then
			  if SobGroup_IsDocked("splitweaponstations"..i) == 1 then	
					SobGroup_SetInvulnerability("splitweaponstations"..i, 1)
				end	
			end			
		end
	end
	Rule_Remove("SetInvulnerabilityDockedShips")	
end	

function missile_explosiondamage()    
	UI_SetElementVisible("New1", "tube1", 0)
  UI_SetElementVisible("New1", "tube2", 0)
  UI_SetElementVisible("New1", "tube3", 0)	
	--per costruzione nuclear tube se player ha + di 3000 ry costruisce modulo requisito in supporter   
	for p = 0,Universe_PlayerCount()-1,1 do  
	  if Player_IsAlive(p) == 1 then
      if Player_HasShipWithBuildQueue(p) == 1 then
				if SobGroup_Count("vgr_mothership"..p) > 0 and
					 SobGroup_Count("supporter"..p) > 0 then   
					if Player_GetRU(p) >= 4100 then	    
						if SobGroup_GetHardPointHealth("supporter"..p, "4000ru") == 0 then   
							SobGroup_CreateSubSystem("supporter"..p, "4000ru")            
						end 
					else   	    
						SobGroup_SetHardPointHealth("supporter"..p, "4000ru", 0)  	        
					end
				end 
				--sobgroups
        SobGroup_FillShipsByType("hgn_nuclearbomb"..p, "Player_Ships"..p, "hgn_nuclearbomb")	      
	      SobGroup_FillShipsByType("hgn_tangomine"..p, "Player_Ships"..p, "hgn_tangomine")     
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_tangomine"..p)   
	      SobGroup_FillShipsByType("hgn_tangomine"..p, "Player_Ships"..p, "hgn_tangomine_ws")     
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_tangomine"..p)             
	      SobGroup_FillShipsByType("hgn_tangomine"..p, "Player_Ships"..p, "hgn_tangomine_ws1")     
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_tangomine"..p)                       
	      SobGroup_FillShipsByType("hgn_viper"..p, "Player_Ships"..p, "hgn_viper")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_viper"..p)	
	      SobGroup_FillShipsByType("hgn_viper"..p, "Player_Ships"..p, "hgn_viper_short")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_viper"..p)	
	      SobGroup_FillShipsByType("hgn_viper"..p, "Player_Ships"..p, "hgn_viper_short1")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_viper"..p)	
	      SobGroup_FillShipsByType("hgn_viper"..p, "Player_Ships"..p, "hgn_viper_ws")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_viper"..p)	
	      SobGroup_FillShipsByType("hgn_viper"..p, "Player_Ships"..p, "hgn_viper_ws1")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_viper"..p)	
	      SobGroup_FillShipsByType("hgn_minermissile"..p, "Player_Ships"..p, "hgn_minermissile")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_minermissile"..p) 
	      SobGroup_FillShipsByType("hgn_minermissile1"..p, "Player_Ships"..p, "hgn_minermissile1")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_minermissile1"..p) 	                  
	      SobGroup_FillShipsByType("hgn_nucleartube1"..p, "Player_Ships"..p, "hgn_nucleartube1")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_nucleartube1"..p)	      
	      SobGroup_FillShipsByType("hgn_nucleartube2"..p, "Player_Ships"..p, "hgn_nucleartube2")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_nucleartube2"..p)	      
	      SobGroup_FillShipsByType("hgn_nucleartube3"..p, "Player_Ships"..p, "hgn_nucleartube3")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_nucleartube3"..p)  	     
	      SobGroup_FillShipsByType("hgn_nucleartube1"..p, "Player_Ships"..p, "hgn_torpedotube1")  
	      SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_nucleartube1"..p)
	      SobGroup_FillShipsByType("hgn_nucleartube2"..p, "Player_Ships"..p, "hgn_torpedotube2")  
		    SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_nucleartube2"..p)
		    SobGroup_FillShipsByType("hgn_nucleartube3"..p, "Player_Ships"..p, "hgn_torpedotube3")  
		    SobGroup_SobGroupAdd("hgn_nuclearbomb"..p, "hgn_nucleartube3"..p)		
        SobGroup_FillShipsByType("temp", "Player_Ships"..p, "vgr_cruse")  	 
        SobGroup_SobGroupAdd("vgr_nuclearbomb"..p, "temp")
				SobGroup_FillShipsByType("temp", "Player_Ships"..p, "vgr_cruse1")  	 
        SobGroup_SobGroupAdd("vgr_nuclearbomb"..p, "temp")
        SobGroup_FillShipsByType("temp", "Player_Ships"..p, "vgr_boa")  	 
        SobGroup_SobGroupAdd("vgr_nuclearbomb"..p, "temp")	 
        SobGroup_FillShipsByType("temp", "Player_Ships"..p, "vgr_minermissile")  	 
        SobGroup_SobGroupAdd("vgr_nuclearbomb"..p, "temp")
        SobGroup_SobGroupAdd("nuclearbombs", "hgn_nuclearbomb"..p)	
				SobGroup_SobGroupAdd("nuclearbombs", "vgr_nuclearbomb"..p)
			end
		end		  
	end
  nnb = SobGroup_UpdateClass("nuclearbombs", "lastnuclearbombs", nnb, 0, 0, 0)
	--mothership
  if nms > 0 then
	  local ExpIndex = 0   
	  while (SobGroup_Empty("MothershipExpBag"..ExpIndex) == 0) and (ExpIndex ~= 2) do
	    ExpIndex = ExpIndex + 1    
	  end  
	  for i = 0,nms-1,1 do                         
	    if SobGroup_HealthPercentage("splitmotherships"..i) <= 0 and SobGroup_Empty("splitmotherships"..i) == 0 then     	      
	      SobGroup_SobGroupAdd("MothershipExpBag"..ExpIndex, "splitmotherships"..i)      
	      SobGroup_Clear("splitmotherships"..i)                   
	    end     
	  end    
	  if SobGroup_Empty("MothershipExpBag"..ExpIndex) == 0 then
      if Rule_Exists("MSexplosiondamageexp"..ExpIndex) == 0 then		
				Rule_AddInterval("MSexplosiondamageexp"..ExpIndex, 11.49)
      end				
	  end    
	end  
	--shipyard
	if nsy > 0 then
	  local ExpIndex = 0   
	  while (SobGroup_Empty("ShipyardExpBag"..ExpIndex) == 0) and (ExpIndex ~= 2) do
	    ExpIndex = ExpIndex + 1    
	  end  
	  for i = 0,nsy-1,1 do                                  
	    if SobGroup_HealthPercentage("splitshipyards"..i) <= 0 and SobGroup_Empty("splitshipyards"..i) == 0 then             
	      SobGroup_SobGroupAdd("ShipyardExpBag"..ExpIndex, "splitshipyards"..i)      
	      SobGroup_Clear("splitshipyards"..i)                   
	    end     
	  end    
	  if SobGroup_Empty("ShipyardExpBag"..ExpIndex) == 0 then
		  if Rule_Exists("SYexplosiondamageexp"..ExpIndex) == 0 then
				Rule_AddInterval("SYexplosiondamageexp"..ExpIndex, 13.49)      
      end				
	  end    
	end  
	--fortress
	if ncf > 0 then
	  local ExpIndex = 0   
	  while (SobGroup_Empty("CommandFortressExpBag"..ExpIndex) == 0) and (ExpIndex ~= 2) do
	    ExpIndex = ExpIndex + 1    
	  end  
	  for i = 0,ncf-1,1 do                           
	    if SobGroup_HealthPercentage("splitcommandfortresses"..i) <= 0 and SobGroup_Empty("splitcommandfortresses"..i) == 0 then             
	      SobGroup_SobGroupAdd("CommandFortressExpBag"..ExpIndex, "splitcommandfortresses"..i)      
	      SobGroup_Clear("splitcommandfortresses"..i)                   
	    end     
	  end    
	  if SobGroup_Empty("CommandFortressExpBag"..ExpIndex) == 0 then
	    if SobGroup_AreAnyOfTheseTypes("CommandFortressExpBag"..ExpIndex, "hgn_battlestation") == 1 then
			  if Rule_Exists("CFexplosiondamageexp"..ExpIndex) == 0 then
					Rule_AddInterval("CFexplosiondamageexp"..ExpIndex, 31.49)
				end	
	    else
			  if Rule_Exists("CFexplosiondamageexp"..ExpIndex) == 0 then
					Rule_AddInterval("CFexplosiondamageexp"..ExpIndex, 21.49)
        end					
	    end	
	  end    
	end
	--juggernaught
	if nj > 0 then
	  local ExpIndex = 0   
	  while (SobGroup_Empty("JuggernaughtExpBag"..ExpIndex) == 0) and (ExpIndex ~= 8) do
	    ExpIndex = ExpIndex + 1    
	  end  
	  for i = 0,nj-1,1 do                                             
	    if SobGroup_HealthPercentage("splitjuggernaughts"..i) <= 0 and SobGroup_Empty("splitjuggernaughts"..i) == 0 then             
	      SobGroup_SobGroupAdd("JuggernaughtExpBag"..ExpIndex, "splitjuggernaughts"..i)      
	      SobGroup_Clear("splitjuggernaughts"..i)                   
	    end     
	  end    
	  if SobGroup_Empty("JuggernaughtExpBag"..ExpIndex) == 0 then
		  if Rule_Exists("Jexplosiondamageexp"..ExpIndex) == 0 then
				Rule_AddInterval("Jexplosiondamageexp"..ExpIndex, 2.49)     
      end				
	  end    
	end  
	--power station
	if nps > 0 then
	  local ExpIndex = 0   
	  while (SobGroup_Empty("PowerStationExpBag"..ExpIndex) == 0) and (ExpIndex ~= 2) do
	    ExpIndex = ExpIndex + 1    
	  end  
	  for i = 0,nps-1,1 do                                             
	    if SobGroup_HealthPercentage("splitpowerstations"..i) <= 0 and SobGroup_Empty("splitpowerstations"..i) == 0 then             
	      SobGroup_SobGroupAdd("PowerStationExpBag"..ExpIndex, "splitpowerstations"..i)      
	      SobGroup_Clear("splitpowerstations"..i)                   
	    end     
	  end    
	  if SobGroup_Empty("PowerStationExpBag"..ExpIndex) == 0 then
		  if Rule_Exists("PSexplosiondamageexp"..ExpIndex) == 0 then
				Rule_AddInterval("PSexplosiondamageexp"..ExpIndex, 5.49)    
			end	
	  end    
	end   
	--tutti i missili 
  if nnb > 0 then    
    local ExpIndex = 0
  	while (SobGroup_Empty("NuclearBombExpBag"..ExpIndex) == 0) and (ExpIndex ~= 2) do
	    ExpIndex = ExpIndex + 1    
	  end     
	  for i = 0,nnb-1,1 do
	    if SobGroup_Empty("splitnuclearbombs"..i) == 0 then	   
	      SobGroup_SetInvulnerability("splitnuclearbombs"..i, 0)
				SobGroup_AbilityActivate("splitnuclearbombs"..i, AB_Stop, 0) 
				SobGroup_AbilityActivate("splitnuclearbombs"..i, AB_Move, 0) 
				SobGroup_AbilityActivate("splitnuclearbombs"..i, AB_Scuttle, 0) 
				SobGroup_AbilityActivate("splitnuclearbombs"..i, AB_Retire, 0)
				SobGroup_AbilityActivate("splitnuclearbombs"..i, AB_Parade, 0) 
	      if SobGroup_IsDocked("splitnuclearbombs"..i) == 0 then   
		      if SobGroup_PlayerIsInSensorRange("splitnuclearbombs"..i, Universe_CurrentPlayer()) == 1 then	
	          Ping_LabelVisible(Ping_AddSobGroup("", "juggernaught", "splitnuclearbombs"..i), 1)                                    
	        end 
					--buttons interface	
					if SobGroup_OwnedBy("splitnuclearbombs"..i) == Universe_CurrentPlayer() then
						if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_nucleartube1,hgn_nucleartube2,hgn_nucleartube3,hgn_nuclearbomb") == 1 and SobGroup_IsDocked("splitnuclearbombs"..i) == 0 then
							UI_SetElementVisible("New1", "tube1", 1)	 
							UI_FlashButton("New1", "tube1", 1)     
						end	 
						if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_torpedotube1,hgn_torpedotube2,hgn_torpedotube3,hgn_viper,hgn_viper_short,hgn_viper_short1,hgn_viper_ws,hgn_viper_ws1,hgn_minermissile,hgn_minermissile1,vgr_cruse,vgr_cruse1,vgr_minermissile") == 1 and SobGroup_IsDocked("splitnuclearbombs"..i) == 0 then
							UI_SetElementVisible("New1", "tube2", 1)	
							UI_FlashButton("New1", "tube2", 1)      
						end	   
						if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_tangomine,hgn_tangomine_ws,hgn_tangomine_ws1,vgr_boa") == 1 and SobGroup_IsDocked("splitnuclearbombs"..i) == 0 then
							UI_SetElementVisible("New1", "tube3", 1)
							UI_FlashButton("New1", "tube3", 1)	      
						end	   
					end
					--all
					if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_viper,hgn_viper_ws,hgn_viper_ws1") == 1 then  
					  missileattack("splitnuclearbombs"..i,0.008,55000)
					elseif SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_viper_short, hgn_viper_short1, hgn_nucleartube1, hgn_nucleartube2, hgn_nucleartube3, vgr_cruse1") == 1 then  
					  missileattack("splitnuclearbombs"..i,0.024,25000)
					elseif SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_tangomine,hgn_tangomine_ws,hgn_tangomine_ws1,vgr_boa") == 1 then               
					  missileattack("splitnuclearbombs"..i,0.04,20000)					
					elseif SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_torpedotube1, hgn_torpedotube2, hgn_torpedotube3, vgr_cruse") == 1 then      
					  missileattack("splitnuclearbombs"..i,0.004,100000)
					--miner missile
					elseif SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_minermissile,hgn_minermissile1,vgr_minermissile") == 1 then           
	          SobGroup_TakeDamage("splitnuclearbombs"..i, 0.024) 
	          if SobGroup_IsDoingAbility("splitnuclearbombs"..i, AB_Attack) == 0 then
		          SobGroup_Clear("temp"..SobGroup_OwnedBy("splitnuclearbombs"..i))
		          local distance = 1000
		          while SobGroup_Count("temp"..SobGroup_OwnedBy("splitnuclearbombs"..i)) == 0 and distance < 20000 do
					      if SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy("splitnuclearbombs"..i), "AsteroidSmasher", "splitnuclearbombs"..i, distance) == 1 then						      	
					        SobGroup_Kamikaze("splitnuclearbombs"..i, "temp"..SobGroup_OwnedBy("splitnuclearbombs"..i))
					        break							                
					      end      
					      distance = distance + 1000
					    end					    	
					    if distance >= 20000 then
					      SobGroup_Kamikaze("splitnuclearbombs"..i, "AsteroidSmasher")					    	    
					    end	 		    			      
					  end
					--heavy nuclear    
	        elseif SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_nuclearbomb") == 1 then              
	          SobGroup_TakeDamage("splitnuclearbombs"..i, 0.0024)
	          if SobGroup_IsDoingAbility("splitnuclearbombs"..i, AB_Attack) == 0 then
		          SobGroup_Clear("temp"..SobGroup_OwnedBy("splitnuclearbombs"..i))
		          local distance = 1000
		          while SobGroup_Count("temp"..SobGroup_OwnedBy("splitnuclearbombs"..i)) == 0 and distance < 150000 do
					      if SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy("splitnuclearbombs"..i), "bigcapitalenemies"..SobGroup_OwnedBy("splitnuclearbombs"..i), "splitnuclearbombs"..i, distance) == 1 then		
                  if SobGroup_IsDoingAbility("temp"..SobGroup_OwnedBy("splitnuclearbombs"..i), abilityList[28]) == 0 and SobGroup_PlayerIsInSensorRange("temp"..SobGroup_OwnedBy("splitnuclearbombs"..i), SobGroup_OwnedBy("splitnuclearbombs"..i)) == 1 then								
										SobGroup_Kamikaze("splitnuclearbombs"..i, "temp"..SobGroup_OwnedBy("splitnuclearbombs"..i))
										break	
									else
                    SobGroup_Clear("temp"..SobGroup_OwnedBy("splitnuclearbombs"..i)) 									
									end	
					      end      
					      distance = distance + 1000
					    end	
					    if distance >= 150000 then
					      SobGroup_Kamikaze("splitnuclearbombs"..i, "bigcapitalenemies"..SobGroup_OwnedBy("splitnuclearbombs"..i))					    	    
					    end		   					    				    			      
					  end      
	        end
	        if SobGroup_IsDoingAbility("splitnuclearbombs"..i, AB_Attack) == 1 then			
	          if SobGroup_FillProximitySobGroup("temp", "massshieldenemies"..SobGroup_OwnedBy("splitnuclearbombs"..i), "splitnuclearbombs"..i, 750) == 1 then         
	            SobGroup_TakeDamage("splitnuclearbombs"..i, 0.34)
							SobGroup_Kamikaze("splitnuclearbombs"..i, "temp")	
	          elseif SobGroup_FillProximitySobGroup("temp", "massshieldenemies"..SobGroup_OwnedBy("splitnuclearbombs"..i), "splitnuclearbombs"..i, 1500) == 1 then         
	            SobGroup_Kamikaze("splitnuclearbombs"..i, "temp")
	          elseif SobGroup_FillProximitySobGroup("temp", "commandfortressenemies"..SobGroup_OwnedBy("splitnuclearbombs"..i), "splitnuclearbombs"..i, 2000) == 1 then         
	            SobGroup_TakeDamage("splitnuclearbombs"..i, 0.34)  
              SobGroup_Kamikaze("splitnuclearbombs"..i, "temp")	 							
	          elseif SobGroup_FillProximitySobGroup("temp", "commandfortressenemies"..SobGroup_OwnedBy("splitnuclearbombs"..i), "splitnuclearbombs"..i, 4000) == 1 then          
							SobGroup_Kamikaze("splitnuclearbombs"..i, "temp")	
						elseif SobGroup_FillProximitySobGroup("temp", "bigcapitalenemies"..SobGroup_OwnedBy("splitnuclearbombs"..i), "splitnuclearbombs"..i, 2000) == 1 then	                
	            SobGroup_Kamikaze("splitnuclearbombs"..i, "temp")
	          elseif SobGroup_FillProximitySobGroup("temp", "minetargetenemies"..SobGroup_OwnedBy("splitnuclearbombs"..i), "splitnuclearbombs"..i, 1000) == 1 then	            
	            SobGroup_Kamikaze("splitnuclearbombs"..i, "temp")
	          end     	          
	          SobGroup_Clear("temp")
	        else               
            if SobGroup_Empty("bigcapitalenemies"..SobGroup_OwnedBy("splitnuclearbombs"..i)) == 0 then	              
            elseif SobGroup_Empty("smallcapitalenemies"..SobGroup_OwnedBy("splitnuclearbombs"..i)) == 0 then 	              
            elseif SobGroup_Empty("AsteroidSmasher") == 0 then               						
            else
              --SobGroup_TakeDamage("splitnuclearbombs"..i, 1)   
            end	                           	              	
	      	end
	      	if SobGroup_AreAnyOfTheseTypes("splitnuclearbombs"..i, "hgn_nucleartube1, hgn_nucleartube2, hgn_nucleartube3, hgn_nuclearbomb") == 1 then	
		      	if SobGroup_HealthPercentage("splitnuclearbombs"..i) <= 0 and SobGroup_Empty("splitnuclearbombs"..i) == 0 then             
				      SobGroup_SobGroupAdd("NuclearBombExpBag"..ExpIndex, "splitnuclearbombs"..i)      
				      SobGroup_Clear("splitnuclearbombs"..i)                   
				    end   
				    if SobGroup_Empty("NuclearBombExpBag"..ExpIndex) == 0 then
						  if Rule_Exists("NBexplosiondamageexp"..ExpIndex) == 0 then
								Rule_AddInterval("NBexplosiondamageexp"..ExpIndex, 0.99)
							end	
					  end	
					end 
				end	     
	    end
	  end
	end	  	
end  

function missileattack(ship,autodamage,maxdistance)
	SobGroup_TakeDamage(ship, autodamage)
  if SobGroup_IsDoingAbility(ship, AB_Attack) == 0 then
    SobGroup_Clear("temp"..SobGroup_OwnedBy(ship))    
    local distance = 1000
    while SobGroup_Count("temp"..SobGroup_OwnedBy(ship)) == 0 and distance < maxdistance do
      if SobGroup_FillProximitySobGroup ("temp"..SobGroup_OwnedBy(ship), "minetargetenemies"..SobGroup_OwnedBy(ship), ship, distance) == 1 then		
        if SobGroup_IsDoingAbility("temp"..SobGroup_OwnedBy(ship), abilityList[28]) == 0 and SobGroup_PlayerIsInSensorRange("temp"..SobGroup_OwnedBy(ship), SobGroup_OwnedBy(ship)) == 1 then								
					SobGroup_Kamikaze(ship, "temp"..SobGroup_OwnedBy(ship))
					break
				else
          SobGroup_Clear("temp"..SobGroup_OwnedBy(ship))				
				end					        
      end      
      distance = distance + 1000
    end			
    if distance >= maxdistance then
      SobGroup_Kamikaze(ship, "minetargetenemies"..SobGroup_OwnedBy(ship))	
      --SobGroup_TakeDamage(ship, 0.25)			
    end	    			      
  end  
end					

--mothership
function MSexplosiondamageexp0() 
  SetInvulnerabilityDockedShips()                 
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag0", playerDamaged, 64000, 500)
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag0", playerDamaged, 32000, 1000)              
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag0", playerDamaged, 16000, 1500)	
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag0", playerDamaged, 8000, 2000)
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag0", playerDamaged, 4000, 2500)
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag0", playerDamaged, 2000, 3000) 
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag0", playerDamaged, 1000, 3500)	
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag0", playerDamaged, 400, 4000)		
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag0", playerDamaged, 200, 4500)	      		    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("MothershipExpBag0")      
  Rule_Remove("MSexplosiondamageexp0")  
end 
function MSexplosiondamageexp1()   
  SetInvulnerabilityDockedShips()                
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag1", playerDamaged, 64000, 500)
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag1", playerDamaged, 32000, 1000)              
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag1", playerDamaged, 16000, 1500)	
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag1", playerDamaged, 8000, 2000)
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag1", playerDamaged, 4000, 2500)
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag1", playerDamaged, 2000, 3000) 
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag1", playerDamaged, 1000, 3500)	
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag1", playerDamaged, 400, 4000)		
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag1", playerDamaged, 200, 4500)	      		    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("MothershipExpBag1")      
  Rule_Remove("MSexplosiondamageexp1")  
end 
function MSexplosiondamageexp2()    
  SetInvulnerabilityDockedShips()               
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag2", playerDamaged, 64000, 500)
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag2", playerDamaged, 32000, 1000)              
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag2", playerDamaged, 16000, 1500)	
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag2", playerDamaged, 8000, 2000)
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag2", playerDamaged, 4000, 2500)
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag2", playerDamaged, 2000, 3000) 
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag2", playerDamaged, 1000, 3500)	
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag2", playerDamaged, 400, 4000)		
    SobGroup_DoDamageProximitySobGroup("MothershipExpBag2", playerDamaged, 200, 4500)	      		    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("MothershipExpBag2")      
  Rule_Remove("MSexplosiondamageexp2")  
end 
--Shipyard
function SYexplosiondamageexp0()   
  SetInvulnerabilityDockedShips()                
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag0", playerDamaged, 32000, 500)
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag0", playerDamaged, 16000, 950)              
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag0", playerDamaged, 8000, 1400)	
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag0", playerDamaged, 4000, 1850)
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag0", playerDamaged, 2000, 2300)
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag0", playerDamaged, 1000, 2750) 
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag0", playerDamaged, 500, 3200)	
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag0", playerDamaged, 250, 3650)		
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag0", playerDamaged, 125, 4100)	      	    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("ShipyardExpBag0")      
  Rule_Remove("SYexplosiondamageexp0")  
end 
function SYexplosiondamageexp1() 
  SetInvulnerabilityDockedShips()                  
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag1", playerDamaged, 32000, 500)
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag1", playerDamaged, 16000, 950)              
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag1", playerDamaged, 8000, 1400)	
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag1", playerDamaged, 4000, 1850)
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag1", playerDamaged, 2000, 2300)
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag1", playerDamaged, 1000, 2750) 
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag1", playerDamaged, 500, 3200)	
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag1", playerDamaged, 250, 3650)		
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag1", playerDamaged, 125, 4100)	      	    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("ShipyardExpBag1")      
  Rule_Remove("SYexplosiondamageexp1")  
end 
function SYexplosiondamageexp2()   
  SetInvulnerabilityDockedShips()                
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag2", playerDamaged, 32000, 500)
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag2", playerDamaged, 16000, 950)              
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag2", playerDamaged, 8000, 1400)	
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag2", playerDamaged, 4000, 1850)
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag2", playerDamaged, 2000, 2300)
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag2", playerDamaged, 1000, 2750) 
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag2", playerDamaged, 500, 3200)	
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag2", playerDamaged, 250, 3650)		
    SobGroup_DoDamageProximitySobGroup("ShipyardExpBag2", playerDamaged, 125, 4100)	      	    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("ShipyardExpBag2")      
  Rule_Remove("SYexplosiondamageexp2")  
end 
--Command Fortress
function CFexplosiondamageexp0()  
  SetInvulnerabilityDockedShips()  
  local damagemultiplier = 1
  if SobGroup_AreAnyOfTheseTypes("CommandFortressExpBag0", "hgn_battlestation") == 1 then
    damagemultiplier = 1.5
  else  	   
  end	               
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag0", playerDamaged, 64000, 500*damagemultiplier)
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag0", playerDamaged, 32000, 1000*damagemultiplier)              
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag0", playerDamaged, 16000, 1500*damagemultiplier)	
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag0", playerDamaged, 8000, 2000*damagemultiplier)
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag0", playerDamaged, 4000, 2500*damagemultiplier)
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag0", playerDamaged, 2000, 3000*damagemultiplier) 
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag0", playerDamaged, 1000, 3500*damagemultiplier)	
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag0", playerDamaged, 500, 4000*damagemultiplier)		
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag0", playerDamaged, 250, 4500*damagemultiplier)	 
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag0", playerDamaged, 125, 5000*damagemultiplier)	     		    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("CommandFortressExpBag0")      
  Rule_Remove("CFexplosiondamageexp0")  
end 
function CFexplosiondamageexp1()       
  SetInvulnerabilityDockedShips()  
  local damagemultiplier = 1
  if SobGroup_AreAnyOfTheseTypes("CommandFortressExpBag1", "hgn_battlestation") == 1 then
    damagemultiplier = 1.5
  else  	   
  end	                  
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag1", playerDamaged, 64000, 500*damagemultiplier)
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag1", playerDamaged, 32000, 1000*damagemultiplier)              
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag1", playerDamaged, 16000, 1500*damagemultiplier)	
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag1", playerDamaged, 8000, 2000*damagemultiplier)
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag1", playerDamaged, 4000, 2500*damagemultiplier)
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag1", playerDamaged, 2000, 3000*damagemultiplier) 
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag1", playerDamaged, 1000, 3500*damagemultiplier)	
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag1", playerDamaged, 500, 4000*damagemultiplier)		
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag1", playerDamaged, 250, 4500*damagemultiplier)	
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag1", playerDamaged, 125, 5000*damagemultiplier)	         		    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("CommandFortressExpBag1")      
  Rule_Remove("CFexplosiondamageexp1")  
end 
function CFexplosiondamageexp2()     
  SetInvulnerabilityDockedShips()   
  local damagemultiplier = 1
  if SobGroup_AreAnyOfTheseTypes("CommandFortressExpBag2", "hgn_battlestation") == 1 then
    damagemultiplier = 1.5
  else  	   
  end	                   
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag2", playerDamaged, 64000, 500*damagemultiplier)
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag2", playerDamaged, 32000, 1000*damagemultiplier)              
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag2", playerDamaged, 16000, 1500*damagemultiplier)	
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag2", playerDamaged, 8000, 2000*damagemultiplier)
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag2", playerDamaged, 4000, 2500*damagemultiplier)
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag2", playerDamaged, 2000, 3000*damagemultiplier) 
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag2", playerDamaged, 1000, 3500*damagemultiplier)	
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag2", playerDamaged, 500, 4000*damagemultiplier)		
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag2", playerDamaged, 250, 4500*damagemultiplier)	 
    SobGroup_DoDamageProximitySobGroup("CommandFortressExpBag2", playerDamaged, 125, 5000*damagemultiplier)	        		    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("CommandFortressExpBag2")      
  Rule_Remove("CFexplosiondamageexp2")  
end 
--Juggernaught
function Jexplosiondamageexp0()  
  SetInvulnerabilityDockedShips()  
  if SobGroup_Count("JuggernaughtExpBag0") == 1 then         
	  playerIndex = SobGroup_OwnedBy("JuggernaughtExpBag0")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
	    DetonationPower = 2.1         
	  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
	    DetonationPower = 1.5  
	  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
	    DetonationPower = 1.25
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
	    DetonationRange = 1.5         
	  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
	    DetonationRange = 1.3  
	  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
	    DetonationRange = 1.15
	  end 
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "JuggernaughtExpBag0", SobGroup_Count("JuggernaughtExpBag0"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
		    DetonationPower = 2.1         
		  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
		    DetonationPower = 1.5  
		  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
		    DetonationPower = 1.25
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
		    DetonationRange = 1.5         
		  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
		    DetonationRange = 1.3  
		  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
		    DetonationRange = 1.15
		  end                                      
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag0", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("JuggernaughtExpBag0")      
  Rule_Remove("Jexplosiondamageexp0")  
end 
function Jexplosiondamageexp1()    
  SetInvulnerabilityDockedShips()
  if SobGroup_Count("JuggernaughtExpBag1") == 1 then         
	  playerIndex = SobGroup_OwnedBy("JuggernaughtExpBag1")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
	    DetonationPower = 2.1         
	  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
	    DetonationPower = 1.5  
	  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
	    DetonationPower = 1.25
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
	    DetonationRange = 1.5         
	  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
	    DetonationRange = 1.3  
	  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
	    DetonationRange = 1.15
	  end 
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "JuggernaughtExpBag1", SobGroup_Count("JuggernaughtExpBag1"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
		    DetonationPower = 2.1         
		  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
		    DetonationPower = 1.5  
		  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
		    DetonationPower = 1.25
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
		    DetonationRange = 1.5         
		  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
		    DetonationRange = 1.3  
		  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
		    DetonationRange = 1.15
		  end                                  
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag1", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("JuggernaughtExpBag1")      
  Rule_Remove("Jexplosiondamageexp1")  
end 
function Jexplosiondamageexp2()   
  SetInvulnerabilityDockedShips() 
  if SobGroup_Count("JuggernaughtExpBag2") == 1 then         
	  playerIndex = SobGroup_OwnedBy("JuggernaughtExpBag2")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
	    DetonationPower = 2.1         
	  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
	    DetonationPower = 1.5  
	  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
	    DetonationPower = 1.25
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
	    DetonationRange = 1.5         
	  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
	    DetonationRange = 1.3  
	  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
	    DetonationRange = 1.15
	  end 
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "JuggernaughtExpBag2", SobGroup_Count("JuggernaughtExpBag2"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
		    DetonationPower = 2.1         
		  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
		    DetonationPower = 1.5  
		  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
		    DetonationPower = 1.25
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
		    DetonationRange = 1.5         
		  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
		    DetonationRange = 1.3  
		  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
		    DetonationRange = 1.15
		  end                                        
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag2", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("JuggernaughtExpBag2")      
  Rule_Remove("Jexplosiondamageexp2")  
end 
function Jexplosiondamageexp3()    
  SetInvulnerabilityDockedShips()
  if SobGroup_Count("JuggernaughtExpBag3") == 1 then         
	  playerIndex = SobGroup_OwnedBy("JuggernaughtExpBag3")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
	    DetonationPower = 2.1         
	  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
	    DetonationPower = 1.5  
	  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
	    DetonationPower = 1.25
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
	    DetonationRange = 1.5         
	  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
	    DetonationRange = 1.3  
	  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
	    DetonationRange = 1.15
	  end 
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "JuggernaughtExpBag3", SobGroup_Count("JuggernaughtExpBag3"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
		    DetonationPower = 2.1         
		  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
		    DetonationPower = 1.5  
		  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
		    DetonationPower = 1.25
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
		    DetonationRange = 1.5         
		  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
		    DetonationRange = 1.3  
		  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
		    DetonationRange = 1.15
		  end                                          
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag3", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("JuggernaughtExpBag3")      
  Rule_Remove("Jexplosiondamageexp3")  
end 
function Jexplosiondamageexp4()    
  SetInvulnerabilityDockedShips()
  if SobGroup_Count("JuggernaughtExpBag4") == 1 then         
	  playerIndex = SobGroup_OwnedBy("JuggernaughtExpBag4")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
	    DetonationPower = 2.1         
	  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
	    DetonationPower = 1.5  
	  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
	    DetonationPower = 1.25
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
	    DetonationRange = 1.5         
	  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
	    DetonationRange = 1.3  
	  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
	    DetonationRange = 1.15
	  end 
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "JuggernaughtExpBag4", SobGroup_Count("JuggernaughtExpBag4"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
		    DetonationPower = 2.1         
		  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
		    DetonationPower = 1.5  
		  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
		    DetonationPower = 1.25
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
		    DetonationRange = 1.5         
		  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
		    DetonationRange = 1.3  
		  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
		    DetonationRange = 1.15
		  end                                   
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag4", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("JuggernaughtExpBag4")      
  Rule_Remove("Jexplosiondamageexp4")  
end 
function Jexplosiondamageexp5()   
  SetInvulnerabilityDockedShips() 
  if SobGroup_Count("JuggernaughtExpBag5") == 1 then         
	  playerIndex = SobGroup_OwnedBy("JuggernaughtExpBag5")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
	    DetonationPower = 2.1         
	  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
	    DetonationPower = 1.5  
	  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
	    DetonationPower = 1.25
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
	    DetonationRange = 1.5         
	  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
	    DetonationRange = 1.3  
	  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
	    DetonationRange = 1.15
	  end 
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "JuggernaughtExpBag5", SobGroup_Count("JuggernaughtExpBag5"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
		    DetonationPower = 2.1         
		  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
		    DetonationPower = 1.5  
		  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
		    DetonationPower = 1.25
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
		    DetonationRange = 1.5         
		  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
		    DetonationRange = 1.3  
		  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
		    DetonationRange = 1.15
		  end                                              
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag5", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("JuggernaughtExpBag5")      
  Rule_Remove("Jexplosiondamageexp5")  
end 
function Jexplosiondamageexp6() 
  SetInvulnerabilityDockedShips()   
  if SobGroup_Count("JuggernaughtExpBag6") == 1 then         
	  playerIndex = SobGroup_OwnedBy("JuggernaughtExpBag6")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
	    DetonationPower = 2.1         
	  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
	    DetonationPower = 1.5  
	  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
	    DetonationPower = 1.25
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
	    DetonationRange = 1.5         
	  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
	    DetonationRange = 1.3  
	  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
	    DetonationRange = 1.15
	  end 
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "JuggernaughtExpBag6", SobGroup_Count("JuggernaughtExpBag6"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
		    DetonationPower = 2.1         
		  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
		    DetonationPower = 1.5  
		  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
		    DetonationPower = 1.25
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
		    DetonationRange = 1.5         
		  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
		    DetonationRange = 1.3  
		  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
		    DetonationRange = 1.15
		  end                                     
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag6", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("JuggernaughtExpBag6")      
  Rule_Remove("Jexplosiondamageexp6")  
end 
function Jexplosiondamageexp7()  
  SetInvulnerabilityDockedShips()  
  if SobGroup_Count("JuggernaughtExpBag7") == 1 then         
	  playerIndex = SobGroup_OwnedBy("JuggernaughtExpBag7")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
	    DetonationPower = 2.1         
	  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
	    DetonationPower = 1.5  
	  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
	    DetonationPower = 1.25
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
	    DetonationRange = 1.5         
	  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
	    DetonationRange = 1.3  
	  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
	    DetonationRange = 1.15
	  end 
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "JuggernaughtExpBag7", SobGroup_Count("JuggernaughtExpBag7"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
		    DetonationPower = 2.1         
		  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
		    DetonationPower = 1.5  
		  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
		    DetonationPower = 1.25
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
		    DetonationRange = 1.5         
		  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
		    DetonationRange = 1.3  
		  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
		    DetonationRange = 1.15
		  end                                             
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag7", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("JuggernaughtExpBag7")      
  Rule_Remove("Jexplosiondamageexp7")  
end 
function Jexplosiondamageexp8()  
  SetInvulnerabilityDockedShips()  
  if SobGroup_Count("JuggernaughtExpBag8") == 1 then         
	  playerIndex = SobGroup_OwnedBy("JuggernaughtExpBag8")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
	    DetonationPower = 2.1         
	  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
	    DetonationPower = 1.5  
	  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
	    DetonationPower = 1.25
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
	    DetonationRange = 1.5         
	  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
	    DetonationRange = 1.3  
	  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
	    DetonationRange = 1.15
	  end 
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
	    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "JuggernaughtExpBag8", SobGroup_Count("JuggernaughtExpBag8"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
		    DetonationPower = 2.1         
		  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
		    DetonationPower = 1.5  
		  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
		    DetonationPower = 1.25
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
		    DetonationRange = 1.5         
		  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
		    DetonationRange = 1.3  
		  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
		    DetonationRange = 1.15
		  end                                        
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 128000 * DetonationPower, 500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 64000 * DetonationPower, 1000 * DetonationRange)              
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 32000 * DetonationPower, 1500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 16000 * DetonationPower, 2000 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 8000 * DetonationPower, 2500 * DetonationRange)
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 4000 * DetonationPower, 3000 * DetonationRange) 
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 2000 * DetonationPower, 3500 * DetonationRange)	
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 1000 * DetonationPower, 4000 * DetonationRange)		
		    SobGroup_DoDamageProximitySobGroup("JuggernaughtExpBag8", playerDamaged, 500 * DetonationPower, 4500 * DetonationRange)	      	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("JuggernaughtExpBag8")      
  Rule_Remove("Jexplosiondamageexp8")  
end
--Power Station
function PSexplosiondamageexp0()   
  SetInvulnerabilityDockedShips() 
  local parameter = 100	
	if SobGroup_AreAnyOfTheseTypes("PowerStationExpBag0", "hgn_power") == 1 then
		parameter = powerListStored[SobGroup_OwnedBy("PowerStationExpBag0")+1]
		if SobGroup_GetHardPointHealth("PowerStationExpBag0", "hgn_orders_powersave") > 0 or Player_HasResearch(SobGroup_OwnedBy("PowerStationExpBag0"), "isai" ) == 1 then
			parameter = parameter/2
		end	
	elseif SobGroup_AreAnyOfTheseTypes("PowerStationExpBag0", "hgn_aditional_core") == 1 then
    parameter = powerListStored[SobGroup_OwnedBy("PowerStationExpBag0")+1]/2
	else	
	  parameter = powerListStored[SobGroup_OwnedBy("PowerStationExpBag0")+1]/3
  end	
  if parameter < 100 then
    parameter = 100
  end  		
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag0", playerDamaged, 100*parameter, 1*parameter)
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag0", playerDamaged, 50*parameter, 1.5*parameter)              
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag0", playerDamaged, 25*parameter, 2*parameter)	
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag0", playerDamaged, 12*parameter, 2.5*parameter)
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag0", playerDamaged, 6*parameter, 3*parameter)
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag0", playerDamaged, 2*parameter, 3.5*parameter) 
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag0", playerDamaged, 1*parameter, 4*parameter)			    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("PowerStationExpBag0")      
  Rule_Remove("PSexplosiondamageexp0")  
end 
function PSexplosiondamageexp1()  
  SetInvulnerabilityDockedShips()  
	local parameter = 100
  if SobGroup_AreAnyOfTheseTypes("PowerStationExpBag1", "hgn_power") == 1 then
		parameter = powerListStored[SobGroup_OwnedBy("PowerStationExpBag1")+1]
		if SobGroup_GetHardPointHealth("PowerStationExpBag1", "hgn_orders_powersave") > 0 or Player_HasResearch(SobGroup_OwnedBy("PowerStationExpBag1"), "isai" ) == 1 then
			parameter = parameter/2
		end	
	elseif SobGroup_AreAnyOfTheseTypes("PowerStationExpBag1", "hgn_aditional_core") == 1 then
    parameter = powerListStored[SobGroup_OwnedBy("PowerStationExpBag1")+1]/2
	else	
	  parameter = powerListStored[SobGroup_OwnedBy("PowerStationExpBag1")+1]/3
  end	
  if parameter < 100 then
    parameter = 100
  end                              
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag1", playerDamaged, 100*parameter, 1*parameter)
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag1", playerDamaged, 50*parameter, 1.5*parameter)              
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag1", playerDamaged, 25*parameter, 2*parameter)	
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag1", playerDamaged, 12*parameter, 2.5*parameter)
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag1", playerDamaged, 6*parameter, 3*parameter)
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag1", playerDamaged, 2*parameter, 3.5*parameter) 
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag1", playerDamaged, 1*parameter, 4*parameter)			    		        	    		    	    		    	      	    	    		        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("PowerStationExpBag1")      
  Rule_Remove("PSexplosiondamageexp1")  
end 
function PSexplosiondamageexp2()  
  SetInvulnerabilityDockedShips()      
	local parameter = 100
  if SobGroup_AreAnyOfTheseTypes("PowerStationExpBag2", "hgn_power") == 1 then
		parameter = powerListStored[SobGroup_OwnedBy("PowerStationExpBag2")+1]
		if SobGroup_GetHardPointHealth("PowerStationExpBag2", "hgn_orders_powersave") > 0 or Player_HasResearch(SobGroup_OwnedBy("PowerStationExpBag2"), "isai" ) == 1 then
			parameter = parameter/2
		end	
	elseif SobGroup_AreAnyOfTheseTypes("PowerStationExpBag2", "hgn_aditional_core") == 1 then
    parameter = powerListStored[SobGroup_OwnedBy("PowerStationExpBag2")+1]/2
	else	
	  parameter = powerListStored[SobGroup_OwnedBy("PowerStationExpBag2")+1]/3
  end	
  if parameter < 100 then
    parameter = 100
  end                          
  for playerDamaged = 0,5,1 do      
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag2", playerDamaged, 100*parameter, 1*parameter)
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag2", playerDamaged, 50*parameter, 1.5*parameter)              
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag2", playerDamaged, 25*parameter, 2*parameter)	
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag2", playerDamaged, 12*parameter, 2.5*parameter)
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag2", playerDamaged, 6*parameter, 3*parameter)
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag2", playerDamaged, 2*parameter, 3.5*parameter) 
    SobGroup_DoDamageProximitySobGroup("PowerStationExpBag2", playerDamaged, 1*parameter, 4*parameter)			    		        	    		    	    		    	      	    	        	    		    	    		    	      	    
  end	  
  SobGroup_Clear("PowerStationExpBag2")      
  Rule_Remove("PSexplosiondamageexp2")  
end 
--nuclearbomb
function NBexplosiondamageexp0()  
  SetInvulnerabilityDockedShips()  
  if SobGroup_Count("NuclearBombExpBag0") == 1 then         
	  playerIndex = SobGroup_OwnedBy("NuclearBombExpBag0")	  
	  local Type = 1
	  if SobGroup_AreAnyOfTheseTypes("NuclearBombExpBag0", "hgn_nuclearbomb") == 0 or SobGroup_FillProximitySobGroup("temp", "massshieldenemies"..SobGroup_OwnedBy("NuclearBombExpBag0"), "NuclearBombExpBag0", 750) == 1 then	  
	    Type = 0.425
	  end	  
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "NBDetonationPower2" ) == 1 then
	    DetonationPower = 2.2         
	  elseif Player_HasResearch(playerIndex, "NBDetonationPower1" ) == 1 then
	    DetonationPower = 1.6  
	  elseif Player_HasResearch(playerIndex, "NBDetonationPower" ) == 1 then
	    DetonationPower = 1.35
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "NBDetonationRange2" ) == 1 then
	    DetonationRange = 1.9         
	  elseif Player_HasResearch(playerIndex, "NBDetonationRange1" ) == 1 then
	    DetonationRange = 1.5  
	  elseif Player_HasResearch(playerIndex, "NBDetonationRange" ) == 1 then
	    DetonationRange = 1.3
	  end 
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 192000 * DetonationPower * Type, 750 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 96000 * DetonationPower * Type, 1500 * DetonationRange * Type)              
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 48000 * DetonationPower * Type, 2250 * DetonationRange * Type)	
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 24000 * DetonationPower * Type, 3000 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 12000 * DetonationPower * Type, 3750 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 6000 * DetonationPower * Type, 4500 * DetonationRange * Type) 
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 3000 * DetonationPower * Type, 5250 * DetonationRange * Type)	
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 1500 * DetonationPower * Type, 6000 * DetonationRange * Type)		
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 750 * DetonationPower * Type, 6750 * DetonationRange * Type)	
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 375 * DetonationPower * Type, 7500 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 175 * DetonationPower * Type, 8250 * DetonationRange * Type)	 	       	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "NuclearBombExpBag0", SobGroup_Count("NuclearBombExpBag0"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
      local Type = 1
		  if SobGroup_AreAnyOfTheseTypes("temp"..i, "hgn_nuclearbomb") == 0 or SobGroup_FillProximitySobGroup("temp", "massshieldenemies"..SobGroup_OwnedBy("temp"..i), "temp"..i, 750) == 1 then	  
		    Type = 0.425
		  end	  
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "NBDetonationPower2" ) == 1 then
		    DetonationPower = 2.2         
		  elseif Player_HasResearch(playerIndex, "NBDetonationPower1" ) == 1 then
		    DetonationPower = 1.6  
		  elseif Player_HasResearch(playerIndex, "NBDetonationPower" ) == 1 then
		    DetonationPower = 1.35
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "NBDetonationRange2" ) == 1 then
		    DetonationRange = 1.9         
		  elseif Player_HasResearch(playerIndex, "NBDetonationRange1" ) == 1 then
		    DetonationRange = 1.5  
		  elseif Player_HasResearch(playerIndex, "NBDetonationRange" ) == 1 then
		    DetonationRange = 1.3
		  end                                
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 192000 * DetonationPower * Type, 750 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 96000 * DetonationPower * Type, 1500 * DetonationRange * Type)              
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 48000 * DetonationPower * Type, 2250 * DetonationRange * Type)	
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 24000 * DetonationPower * Type, 3000 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 12000 * DetonationPower * Type, 3750 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 6000 * DetonationPower * Type, 4500 * DetonationRange * Type) 
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 3000 * DetonationPower * Type, 5250 * DetonationRange * Type)	
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 1500 * DetonationPower * Type, 6000 * DetonationRange * Type)		
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 750 * DetonationPower * Type, 6750 * DetonationRange * Type)	
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 375 * DetonationPower * Type, 7500 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag0", playerDamaged, 175 * DetonationPower * Type, 8250 * DetonationRange * Type)	 		       	 	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("NuclearBombExpBag0")      
  Rule_Remove("NBexplosiondamageexp0")  
end 
function NBexplosiondamageexp1()    
  SetInvulnerabilityDockedShips()
  if SobGroup_Count("NuclearBombExpBag1") == 1 then   
    local Type = 1
	  if SobGroup_AreAnyOfTheseTypes("NuclearBombExpBag1", "hgn_nuclearbomb") == 0 or SobGroup_FillProximitySobGroup("temp", "massshieldenemies"..SobGroup_OwnedBy("NuclearBombExpBag1"), "NuclearBombExpBag1", 750) == 1 then	  
	    Type = 0.425
	  end	        
	  playerIndex = SobGroup_OwnedBy("NuclearBombExpBag1")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "NBDetonationPower2" ) == 1 then
	    DetonationPower = 2.2         
	  elseif Player_HasResearch(playerIndex, "NBDetonationPower1" ) == 1 then
	    DetonationPower = 1.6  
	  elseif Player_HasResearch(playerIndex, "NBDetonationPower" ) == 1 then
	    DetonationPower = 1.35
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "NBDetonationRange2" ) == 1 then
	    DetonationRange = 1.9         
	  elseif Player_HasResearch(playerIndex, "NBDetonationRange1" ) == 1 then
	    DetonationRange = 1.5  
	  elseif Player_HasResearch(playerIndex, "NBDetonationRange" ) == 1 then
	    DetonationRange = 1.3
	  end   
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 192000 * DetonationPower * Type, 750 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 96000 * DetonationPower * Type, 1500 * DetonationRange * Type)              
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 48000 * DetonationPower * Type, 2250 * DetonationRange * Type)	
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 24000 * DetonationPower * Type, 3000 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 12000 * DetonationPower * Type, 3750 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 6000 * DetonationPower * Type, 4500 * DetonationRange * Type) 
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 3000 * DetonationPower * Type, 5250 * DetonationRange * Type)	
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 1500 * DetonationPower * Type, 6000 * DetonationRange * Type)		
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 750 * DetonationPower * Type, 6750 * DetonationRange * Type)	
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 375 * DetonationPower * Type, 7500 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 175 * DetonationPower * Type, 8250 * DetonationRange * Type)	 	       	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "NuclearBombExpBag1", SobGroup_Count("NuclearBombExpBag1"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
      local Type = 1
		  if SobGroup_AreAnyOfTheseTypes("temp"..i, "hgn_nuclearbomb") == 0 or SobGroup_FillProximitySobGroup("temp", "massshieldenemies"..SobGroup_OwnedBy("temp"..i), "temp"..i, 750) == 1 then	  
		    Type = 0.425
		  end	 
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "NBDetonationPower2" ) == 1 then
		    DetonationPower = 2.2         
		  elseif Player_HasResearch(playerIndex, "NBDetonationPower1" ) == 1 then
		    DetonationPower = 1.6  
		  elseif Player_HasResearch(playerIndex, "NBDetonationPower" ) == 1 then
		    DetonationPower = 1.35
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "NBDetonationRange2" ) == 1 then
		    DetonationRange = 1.9         
		  elseif Player_HasResearch(playerIndex, "NBDetonationRange1" ) == 1 then
		    DetonationRange = 1.5  
		  elseif Player_HasResearch(playerIndex, "NBDetonationRange" ) == 1 then
		    DetonationRange = 1.3
		  end                                       
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 192000 * DetonationPower * Type, 750 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 96000 * DetonationPower * Type, 1500 * DetonationRange * Type)              
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 48000 * DetonationPower * Type, 2250 * DetonationRange * Type)	
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 24000 * DetonationPower * Type, 3000 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 12000 * DetonationPower * Type, 3750 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 6000 * DetonationPower * Type, 4500 * DetonationRange * Type) 
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 3000 * DetonationPower * Type, 5250 * DetonationRange * Type)	
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 1500 * DetonationPower * Type, 6000 * DetonationRange * Type)		
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 750 * DetonationPower * Type, 6750 * DetonationRange * Type)	
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 375 * DetonationPower * Type, 7500 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag1", playerDamaged, 175 * DetonationPower * Type, 8250 * DetonationRange * Type)	 		       	 	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("NuclearBombExpBag1")      
  Rule_Remove("NBexplosiondamageexp1")  
end 
function NBexplosiondamageexp2()    
  SetInvulnerabilityDockedShips()
  if SobGroup_Count("NuclearBombExpBag2") == 1 then  
    local Type = 1
	  if SobGroup_AreAnyOfTheseTypes("NuclearBombExpBag2", "hgn_nuclearbomb") == 0 or SobGroup_FillProximitySobGroup("temp", "massshieldenemies"..SobGroup_OwnedBy("NuclearBombExpBag2"), "NuclearBombExpBag2", 750) == 1 then	  
	    Type = 0.425
	  end	         
	  playerIndex = SobGroup_OwnedBy("NuclearBombExpBag2")
	  local DetonationPower = 1
	  if Player_HasResearch(playerIndex, "NBDetonationPower2" ) == 1 then
	    DetonationPower = 2.2         
	  elseif Player_HasResearch(playerIndex, "NBDetonationPower1" ) == 1 then
	    DetonationPower = 1.6  
	  elseif Player_HasResearch(playerIndex, "NBDetonationPower" ) == 1 then
	    DetonationPower = 1.35
	  end   
	  local DetonationRange = 1
	  if Player_HasResearch(playerIndex, "NBDetonationRange2" ) == 1 then
	    DetonationRange = 1.9         
	  elseif Player_HasResearch(playerIndex, "NBDetonationRange1" ) == 1 then
	    DetonationRange = 1.5  
	  elseif Player_HasResearch(playerIndex, "NBDetonationRange" ) == 1 then
	    DetonationRange = 1.3
	  end  
	  for playerDamaged = 0,5,1 do      
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 192000 * DetonationPower * Type, 750 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 96000 * DetonationPower * Type, 1500 * DetonationRange * Type)              
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 48000 * DetonationPower * Type, 2250 * DetonationRange * Type)	
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 24000 * DetonationPower * Type, 3000 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 12000 * DetonationPower * Type, 3750 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 6000 * DetonationPower * Type, 4500 * DetonationRange * Type) 
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 3000 * DetonationPower * Type, 5250 * DetonationRange * Type)	
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 1500 * DetonationPower * Type, 6000 * DetonationRange * Type)		
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 750 * DetonationPower * Type, 6750 * DetonationRange * Type)	
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 375 * DetonationPower * Type, 7500 * DetonationRange * Type)
	    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 175 * DetonationPower * Type, 8250 * DetonationRange * Type)	 	       	    		        	    		    	    		    	      	    
	  end				
	else
	  local SobNum = SobGroup_SplitGroupFromGroup("temp", "NuclearBombExpBag2", SobGroup_Count("NuclearBombExpBag2"), "splitter") 
    for i = 0,(SobNum - 1),1 do
      playerIndex = SobGroup_OwnedBy("temp"..i)
      local Type = 1
		  if SobGroup_AreAnyOfTheseTypes("temp"..i, "hgn_nuclearbomb") == 0 or SobGroup_FillProximitySobGroup("temp", "massshieldenemies"..SobGroup_OwnedBy("temp"..i), "temp"..i, 750) == 1 then	  
		    Type = 0.425
		  end	 
		  local DetonationPower = 1
		  if Player_HasResearch(playerIndex, "NBDetonationPower2" ) == 1 then
		    DetonationPower = 2.2         
		  elseif Player_HasResearch(playerIndex, "NBDetonationPower1" ) == 1 then
		    DetonationPower = 1.6  
		  elseif Player_HasResearch(playerIndex, "NBDetonationPower" ) == 1 then
		    DetonationPower = 1.35
		  end   
		  local DetonationRange = 1
		  if Player_HasResearch(playerIndex, "NBDetonationRange2" ) == 1 then
		    DetonationRange = 1.9         
		  elseif Player_HasResearch(playerIndex, "NBDetonationRange1" ) == 1 then
		    DetonationRange = 1.5  
		  elseif Player_HasResearch(playerIndex, "NBDetonationRange" ) == 1 then
		    DetonationRange = 1.3
		  end                                
		  for playerDamaged = 0,5,1 do      
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 192000 * DetonationPower * Type, 750 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 96000 * DetonationPower * Type, 1500 * DetonationRange * Type)              
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 48000 * DetonationPower * Type, 2250 * DetonationRange * Type)	
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 24000 * DetonationPower * Type, 3000 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 12000 * DetonationPower * Type, 3750 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 6000 * DetonationPower * Type, 4500 * DetonationRange * Type) 
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 3000 * DetonationPower * Type, 5250 * DetonationRange * Type)	
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 1500 * DetonationPower * Type, 6000 * DetonationRange * Type)		
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 750 * DetonationPower * Type, 6750 * DetonationRange * Type)	
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 375 * DetonationPower * Type, 7500 * DetonationRange * Type)
		    SobGroup_DoDamageProximitySobGroup("NuclearBombExpBag2", playerDamaged, 175 * DetonationPower * Type, 8250 * DetonationRange * Type)	 		       	 	    		        	    		    	    		    	      	    
		  end				
		end	
	end	    
  SobGroup_Clear("NuclearBombExpBag2")      
  Rule_Remove("NBexplosiondamageexp2")  
end 

