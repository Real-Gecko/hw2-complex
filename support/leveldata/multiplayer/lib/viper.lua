function vipermissile()    
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
								Rule_AddInterval("NBexplosiondamageexp"..ExpIndex, 0.24)
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

