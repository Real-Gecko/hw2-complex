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

--Mothership

function MSexplosiondamage()
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
				Rule_AddInterval("MSexplosiondamageexp"..ExpIndex, 12.94)
      end				
	  end    
	end  
end 
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

function SYexplosiondamage()
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
				Rule_AddInterval("SYexplosiondamageexp"..ExpIndex, 14.89)      
      end				
	  end    
	end  
end 
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

function CFexplosiondamage()
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
					Rule_AddInterval("CFexplosiondamageexp"..ExpIndex, 33.31)
				end	
	    else
			  if Rule_Exists("CFexplosiondamageexp"..ExpIndex) == 0 then
					Rule_AddInterval("CFexplosiondamageexp"..ExpIndex, 22.79)
        end					
	    end	
	  end    
	end  
end 
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

function JUpdateDetonation()
local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if (Player_IsAlive(playerIndex) == 1) then
      if (Player_HasShipWithBuildQueue(playerIndex) == 1) then 
        playerIndexList = playerIndex + 1
        if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_juggernaught") > 0 then
          if Player_HasResearch(playerIndex, "DetonationPower2" ) == 1 then
				    DetonationPower[playerIndexList] = 2.1      
				  elseif Player_HasResearch(playerIndex, "DetonationPower1" ) == 1 then
				    DetonationPower[playerIndexList] = 1.5   
				  elseif Player_HasResearch(playerIndex, "DetonationPower" ) == 1 then
				    DetonationPower[playerIndexList] = 1.25 
				  end     
				  if Player_HasResearch(playerIndex, "DetonationRange2" ) == 1 then
				    DetonationRange[playerIndexList] = 1.5         
				  elseif Player_HasResearch(playerIndex, "DetonationRange1" ) == 1 then
				    DetonationRange[playerIndexList] = 1.3  
				  elseif Player_HasResearch(playerIndex, "DetonationRange" ) == 1 then
				    DetonationRange[playerIndexList] = 1.15 
				  end                    
        end           
      end
    end     
    playerIndex = playerIndex + 1
  end      
end
function Jexplosiondamage()
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
				Rule_AddInterval("Jexplosiondamageexp"..ExpIndex, 3.99)     
      end				
	  end    
	end  
end 
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

---Power Station

function PSexplosiondamage()
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
				Rule_AddInterval("PSexplosiondamageexp"..ExpIndex, 6.84)    
			end	
	  end    
	end  
end 
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
