function fusion()
	--azzera RUMaxCapacityList x tutti i giocatori  
  local playerIndex = 0                         
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then      
        playerIndexList = playerIndex + 1         
        if Player_GetRace(playerIndex) == Race_Hiigaran then
          RUMaxCapacityList[playerIndexList] = 5000
        else
          if Player_HasResearch(playerIndex, "resource4" ) == 1 then
				    RUMaxCapacityList[playerIndexList] = 29000
	        elseif Player_HasResearch(playerIndex, "resource3" ) == 1 then
				    RUMaxCapacityList[playerIndexList] = 23000
				  elseif Player_HasResearch(playerIndex, "resource2" ) == 1 then
				    RUMaxCapacityList[playerIndexList] = 17000
				  elseif Player_HasResearch(playerIndex, "resource1" ) == 1 then
				    RUMaxCapacityList[playerIndexList] = 11000
				  else	
				    RUMaxCapacityList[playerIndexList] = 5000    
				  end
			  end
      end
    end
    playerIndex = playerIndex + 1
  end
	--Mothership  
  for i = 0,nms-1,1 do
    if SobGroup_Empty("splitmotherships"..i) == 0 then  
      if SobGroup_AreAnyOfTheseTypes("splitmotherships"..i, "hgn_mothership") == 1 then 
        playerIndexList = SobGroup_OwnedBy("splitmotherships"..i) + 1	
			  if SobGroup_GetHardPointHealth("splitmotherships"..i, "supply") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end	
        if SobGroup_GetHardPointHealth("splitmotherships"..i, "supply1") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end		
      end     
    end
  end
	--Shipyard  
  for i = 0,nsy-1,1 do
    if SobGroup_Empty("splitshipyards"..i) == 0 then  
      if SobGroup_AreAnyOfTheseTypes("splitshipyards"..i, "hgn_shipyard, hgn_shipyard_g") == 1 then 
        playerIndexList = SobGroup_OwnedBy("splitshipyards"..i) + 1	
			  if SobGroup_GetHardPointHealth("splitshipyards"..i, "supply") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end		
        if SobGroup_GetHardPointHealth("splitshipyards"..i, "supply1") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end	
			elseif SobGroup_AreAnyOfTheseTypes("splitshipyards"..i, "hgn_battleshipyard") == 1 then 
        playerIndexList = SobGroup_OwnedBy("splitshipyards"..i) + 1	
			  if SobGroup_GetHardPointHealth("splitshipyards"..i, "supply") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end		
        if SobGroup_GetHardPointHealth("splitshipyards"..i, "supply1") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end	
        if SobGroup_GetHardPointHealth("splitshipyards"..i, "supply2") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end	
        if SobGroup_GetHardPointHealth("splitshipyards"..i, "supply3") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end	 				
      end     
    end
  end
  for i = 0,nc-1,1 do
    if SobGroup_Empty("splitcarriers"..i) == 0 then
			--BattleCarrier    
    	if SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_carrier, hgn_battlecarrier") == 1 then   
			  playerIndexList = SobGroup_OwnedBy("splitcarriers"..i) + 1	
			  if SobGroup_GetHardPointHealth("splitcarriers"..i, "supply") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end		
			end
			--scaver    
      if SobGroup_AreAnyOfTheseTypes("splitcarriers"..i, "hgn_scaver,vgr_scaver") == 1 then        
		    playerIndexList = SobGroup_OwnedBy("splitcarriers"..i) + 1
				--supply        
        if SobGroup_GetHardPointHealth("splitcarriers"..i, "Supply1") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end				
        if SobGroup_GetHardPointHealth("splitcarriers"..i, "Supply2") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end				
        if SobGroup_GetHardPointHealth("splitcarriers"..i, "Supply3") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end				
        if SobGroup_GetHardPointHealth("splitcarriers"..i, "Supply4") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end				
        if SobGroup_GetHardPointHealth("splitcarriers"..i, "Supply5") > 0 then
          RUMaxCapacityList[playerIndexList] = RUMaxCapacityList[playerIndexList] + 3000
        end
				--fusion
				ff=0
		    if SobGroup_IsDocked("splitcarriers"..i) == 0 and SobGroup_GetHardPointHealth("splitcarriers"..i, "hgn_orders_fusion") == 0 then
		    	if battlearena[1] < 200 then							         		      		    
				    if SobGroup_GetHardPointHealth("splitcarriers"..i, "Fusion") > 0 then
					    if Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "Scaverautogenres3") == 1 then
					      ff=120					      
					      FX_StartEvent("splitcarriers"..i, "Fusion4")      
					    elseif Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "Scaverautogenres2") == 1 then
					      ff=90					      
					      FX_StartEvent("splitcarriers"..i, "Fusion3")
					    elseif Player_HasResearch(SobGroup_OwnedBy("splitcarriers"..i), "Scaverautogenres1") == 1 then
					      ff=60					      
					      FX_StartEvent("splitcarriers"..i, "Fusion2")
					    elseif SobGroup_GetHardPointHealth("splitcarriers"..i, "Fusion") > 0 then
					      ff=30				        
				        FX_StartEvent("splitcarriers"..i, "Fusion1")
				      end	
				      fusionList[playerIndexList] = fusionList[playerIndexList] + ff	      
				    end 		
					end
				else				  
				end			
				--pings
	      if SobGroup_OwnedBy("splitcarriers"..i) == Universe_CurrentPlayer() then	 			        
	        local gname = i+1
	        local g = Ping_AddSobGroup("Sad Hero "..gname, "resource", "splitcarriers"..i)
					Ping_LabelVisible(g, 1)		
					Ping_AddDescription(g, 0, "RUs "..Player_GetRU(SobGroup_OwnedBy("splitcarriers"..i)).."/"..RUMaxCapacityList[playerIndexList])
					Ping_AddDescription(g, 1, "Fusion "..ff.."/"..fusionList[playerIndexList].." ("..fusionList[playerIndexList].." RUs/year)")		
				end
      end
    end
  end  
	--mobile refinery 
  if battlearena[1] < 200 then
	  for i = 0,nmr-1,1 do
	    if SobGroup_Empty("splitmobilerefineries"..i) == 0 then
		    playerIndexList = SobGroup_OwnedBy("splitmobilerefineries"..i) + 1
		    if Player_HasResearch(SobGroup_OwnedBy("splitmobilerefineries"..i), "autogenres3") == 1 then
		      fusionList[playerIndexList] = fusionList[playerIndexList] + 40   
		      FX_StartEvent("splitmobilerefineries"..i, "Fusion4")      
		    elseif Player_HasResearch(SobGroup_OwnedBy("splitmobilerefineries"..i), "autogenres2") == 1 then
		      fusionList[playerIndexList] = fusionList[playerIndexList] + 30 
		      FX_StartEvent("splitmobilerefineries"..i, "Fusion3")
		    elseif Player_HasResearch(SobGroup_OwnedBy("splitmobilerefineries"..i), "autogenres1") == 1 then
		      fusionList[playerIndexList] = fusionList[playerIndexList] + 20
		      FX_StartEvent("splitmobilerefineries"..i, "Fusion2")
		    elseif Player_HasResearch(SobGroup_OwnedBy("splitmobilerefineries"..i), "autogenres") == 1 then
		      fusionList[playerIndexList] = fusionList[playerIndexList] + 10
		      FX_StartEvent("splitmobilerefineries"..i, "Fusion1")
		    end		                	      	    
		  end             
	  end
	end
	--UI 
  if ((year==0 and gametime<35) or year>0 or intro==1) then
    UI_SetTextLabelText("UnitCapInfoPopup", "lblFusion", ""..fusionList[Universe_CurrentPlayer()+1]);
  end   
end