function researching()
  local playerIndex = 0                            
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then  
        playerIndexList = playerIndex + 1
        if Player_GetRace(playerIndex) == Race_Hiigaran then   
				  local iRace = Player_GetRace(playerIndex) + 1					
					dofilepath([[data:scripts/building and research/]] .. races[iRace][1] .. [[/research.lua]])
          --researchburner					
					if Player_HasResearch(playerIndex, "isai" ) == 0 and
						 Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_researchstation") > 0 and
             SobGroup_IsDocked("hgn_researchstation"..playerIndex) == 0 and
						 SobGroup_Count("hgn_researchstation"..playerIndex) > 0 and
						 Player_GetRU(playerIndex) > 1500 then	
						queuedresearchcost[playerIndexList] = 0						
						for z, iCount in research do
						  if iCount.Name == "instanttech" then
							  break
							end
							if Player_HasQueuedResearch(playerIndex, iCount.Name) == 1 then			
								queuedresearchcost[playerIndexList] = queuedresearchcost[playerIndexList] + iCount.Cost					     	   
							end
						end	 
						if Player_GetRU(playerIndex) > (queuedresearchcost[playerIndexList]*2) and queuedresearchcost[playerIndexList] > 0 then
							if SobGroup_GetHardPointHealth("hgn_researchstation"..playerIndex, "hgn_orders_burnresearch_unlocker") == 0 then               
								SobGroup_CreateSubSystem("hgn_researchstation"..playerIndex, "hgn_orders_burnresearch_unlocker")   	             
							end      
						else
							SobGroup_SetHardPointHealth("hgn_researchstation"..playerIndex, "hgn_orders_burnresearch_unlocker", 0) 
						end	
					else
            SobGroup_SetHardPointHealth("hgn_researchstation"..playerIndex, "hgn_orders_burnresearch_unlocker", 0) 					
					end  
          --cancel research if rs destroyed
          if Player_HasResearch(playerIndex, "isai" ) == 0 then								
						if Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_researchstation") == 0 then											
							for z, iCount in research do
								if Player_HasQueuedResearch(playerIndex, iCount.Name) == 1 then			
									Player_CancelResearch(playerIndex, iCount.Name)					     	   
								end
							end	       
						end						
          end	
          --research score 					
          researchList[playerIndexList] = floor ((Stats_ResearchRUValue( playerIndex ) + researchburned[playerIndexList]) / (100 * researchsensitivity))          
          if researchList[playerIndexList] >= 125 then
            if Player_HasResearch(playerIndex, "instanttech" ) == 0 then 
              Player_GrantResearchOption(playerIndex , "instanttech")
            end  
            if researchList[playerIndexList] >= 450 then
              if Player_HasResearch(playerIndex, "instanttech1" ) == 0 then
                Player_GrantResearchOption(playerIndex , "instanttech1")
              end  
            end
          end          
        else          
					researchList[playerIndexList] = floor (Stats_ResearchRUValue( playerIndex ) / (100 * researchsensitivity))
        end  
				--interface
        if playerIndex == Universe_CurrentPlayer() and ((year==0 and gametime<35) or year>0 or intro==1) then    
          if Player_GetRace(playerIndex) == Race_Hiigaran then
	          if Player_HasResearch(playerIndex, "instanttech1" ) == 1 then
	            UI_SetTextLabelText("ResourceMenu", "lbltotalscore", ""..researchList[playerIndexList]);
	            UI_SetTextLabelText("UnitCapInfoPopup", "lbltotalscore", ""..researchList[playerIndexList]); 
	          elseif Player_HasResearch(playerIndex, "instanttech" ) == 1 then  
	            UI_SetTextLabelText("ResourceMenu", "lbltotalscore", ""..researchList[playerIndexList].."/450");
	            UI_SetTextLabelText("UnitCapInfoPopup", "lbltotalscore", ""..researchList[playerIndexList].."/450");     
	          else 
	            UI_SetTextLabelText("ResourceMenu", "lbltotalscore", ""..researchList[playerIndexList].."/125");
	            UI_SetTextLabelText("UnitCapInfoPopup", "lbltotalscore", ""..researchList[playerIndexList].."/125"); 
	          end 
	        else
	          UI_SetTextLabelText("ResourceMenu", "lbltotalscore", ""..researchList[playerIndexList]);
	          UI_SetTextLabelText("UnitCapInfoPopup", "lbltotalscore", ""..researchList[playerIndexList]);
	        end                    
        end          
				--costruisce/cancella il modulo br (base research) per attivare/disattivare la ricerca in caso di dockaggio della RS        
        if SobGroup_IsDocked("hgn_researchstation"..playerIndex) == 1 or SobGroup_Count("hgn_researchstation"..playerIndex) == 0 then
          SobGroup_SetHardPointHealth("supporter"..playerIndex, "br", 0)          
        else  
          if SobGroup_GetHardPointHealth("supporter"..playerIndex, "br") == 0 then               
	          SobGroup_CreateSubSystem("supporter"..playerIndex, "br")   	             
	        end      
        end                
      end
    end
    playerIndex = playerIndex + 1
  end
  Rule_Remove("researching")
	Rule_AddInterval("researching", runselected*7)		
end      