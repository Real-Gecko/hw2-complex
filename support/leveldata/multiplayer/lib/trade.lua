function trade()    
  local playerIndex = 0
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then 
        if SobGroup_Count("trader"..playerIndex) > 0 then			
					if (SobGroup_Count("traderallies"..playerIndex) - SobGroup_Count("trader"..playerIndex)) > 0 then 				
						playerIndexList = playerIndex + 1
            --crea sobgroups
						SobGroup_FillShipsByType("hgn_container"..playerIndex, "Player_Ships"..playerIndex, "hgn_container") 
						SobGroup_FillShipsByType("vgr_container"..playerIndex, "Player_Ships"..playerIndex, "vgr_container") 	
						SobGroup_SobGroupAdd("containers", "hgn_container"..playerIndex)
						SobGroup_SobGroupAdd("containers", "vgr_container"..playerIndex)							
						local numcontainer = Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "hgn_container") + Player_GetNumberOfSquadronsOfTypeAwakeOrSleeping(playerIndex, "vgr_container")
						if numcontainer > 0 then 	        
							TradePower = 1	      
							if Player_HasResearch(playerIndex, "TradePower2" ) == 1 then
								TradePower = TradePower * 1.75            
							elseif Player_HasResearch(playerIndex, "TradePower1" ) == 1 then
								TradePower = TradePower * 1.5            
							elseif Player_HasResearch(playerIndex, "TradePower" ) == 1 then
								TradePower = TradePower * 1.25       
							end 		               
							tradeList[playerIndexList] = floor((Player_GetRU(playerIndex) / 6 / (numcontainer*0.75)) * TradePower + (RUaggiuntiva[playerIndexList]/numcontainer*TradePower))
							--diminuisce il fattore esponenziale, più aumenta più è difficile da incrementare
							tradeamountfactor = (1-(tradeList[playerIndexList]/(20000/numcontainer)))   
							if tradeamountfactor < 0.5 then
								tradeamountfactor = 0.5
							end
							tradeList[playerIndexList] = floor(tradeList[playerIndexList]*tradeamountfactor)
              --trade convoy cycle							
							for i = 0,(ntrc - 1),1 do 
								SobGroup_ForceStayDockedIfDocking("splitcontainers"..i)
								if SobGroup_Empty("splitcontainers"..i) == 0 then 								
									--pings container
									if (SobGroup_OwnedBy("splitcontainers"..i) == Universe_CurrentPlayer()) and (SobGroup_IsDocked("splitcontainers"..i) == 0) then 	                
										Ping_LabelVisible(Ping_AddSobGroup(tradeList[SobGroup_OwnedBy("splitcontainers"..i)+1] .. " RUs", "minecontainer", "splitcontainers"..i), 1)  									
									end									
									if SobGroup_OwnedBy("splitcontainers"..i) == playerIndex then 
										--se dockato in prod cap viene lanciato                
										if SobGroup_IsDockedSobGroup("splitcontainers"..i, "traderallies"..playerIndex) == 1 then    
											if SobGroup_FillProximitySobGroup ("temp", "trader"..playerIndex, "splitcontainers"..i, 500) == 1 then
												if SobGroup_GetHardPointHealth("splitcontainers"..i, "ru") < 0.5 then
													Player_SetRU(playerIndex, Player_GetRU(playerIndex) + tradeList[playerIndexList]) 
													RUaggiuntiva[playerIndexList] = 0				              
													tradeListSummary[playerIndexList] = tradeListSummary[playerIndexList] + tradeList[playerIndexList] 
													SobGroup_SetHardPointHealth("splitcontainers"..i, "ru", 1)					              
												else
													for z = 0,(npca[playerIndexList]-1),1 do	
														if SobGroup_IsDockedSobGroup("splitcontainers"..i, "splitproductioncapitalallies"..playerIndex .. tostring(z)) == 1 then
															if SobGroup_GetHardPointHealth("splitcontainers"..i, "hgn_orders_trade") == 0 then
																if SobGroup_HealthPercentage("splitcontainers"..i) >= 1 then
																	SobGroup_Launch("splitcontainers"..i, "splitproductioncapitalallies"..playerIndex .. tostring(z))	
																end	
															end  
															break
														end  
													end           
												end 		   	                    
											else
												if SobGroup_GetHardPointHealth("splitcontainers"..i, "ru") > 0.5 then
													Player_SetRU(playerIndex, Player_GetRU(playerIndex) + tradeList[playerIndexList]) 	
													RUaggiuntiva[playerIndexList] = 0			              
													tradeListSummary[playerIndexList] = tradeListSummary[playerIndexList] + tradeList[playerIndexList] 
													SobGroup_SetHardPointHealth("splitcontainers"..i, "ru", 0) 					              
												else
													for z = 0,(npca[playerIndexList]-1),1 do	
														if SobGroup_IsDockedSobGroup("splitcontainers"..i, "splitproductioncapitalallies"..playerIndex .. tostring(z)) == 1 then															
															if SobGroup_HealthPercentage("splitcontainers"..i) >= 1 then
																SobGroup_Launch("splitcontainers"..i, "splitproductioncapitalallies"..playerIndex .. tostring(z))	
															end																  
															break
														end  
													end           
												end 		                   
											end 																			
										--se libero                
										else                 
											--casistica	             
											if SobGroup_IsDoingAbility("splitcontainers"..i, abilityList[9]) == 1 then											
											  if SobGroup_GetHardPointHealth("splitcontainers"..i, "hgn_orders_trade") > 0 then		
													if SobGroup_FillProximitySobGroup ("temp", "trader"..playerIndex, "splitcontainers"..i, 1000) == 0 then 											
														SobGroup_DockSobGroup("splitcontainers"..i, "trader"..playerIndex) 	
													end	
                        else				
                          RUaggiuntiva[playerIndexList] = RUaggiuntiva[playerIndexList] + 18												
											  end													    											
											elseif (SobGroup_IsDoingAbility("splitcontainers"..i, abilityList[4]) == 1 and Player_HasResearch(playerIndex, "isai" ) == 0) then
											elseif (SobGroup_IsDoingAbility("splitcontainers"..i, abilityList[6]) == 1 and Player_HasResearch(playerIndex, "isai" ) == 0) then 
											elseif SobGroup_IsDoingAbility("splitcontainers"..i, abilityList[1]) == 1 then
											elseif (SobGroup_IsDoingAbility("splitcontainers"..i, abilityList[12]) == 1 and Player_HasResearch(playerIndex, "isai" ) == 0) then                        									
											else								
												if SobGroup_FillProximitySobGroup ("temp", "traderallies"..playerIndex, "splitcontainers"..i, 1000) == 1 then	            	  
													for z = 0,(Universe_PlayerCount()-1),1 do
														if Player_IsAlive(z) == 1 then     
															if AreAllied(playerIndex, z) == 1 and z ~= SobGroup_OwnedBy("temp") then	                           									
																SobGroup_DockSobGroup("splitcontainers"..i, "trader"..z)   															
																if casualizzatore[2] == 1 then   
																	break
																end  
															end
														end
													end 
												end								
											end 						                
										end           
									end					
								end                        
							end 				      	        
						end 
					end	
	      else
	        --SobGroup_TakeDamage("hgn_container"..playerIndex, 1)
					--SobGroup_TakeDamage("vgr_container"..playerIndex, 1)
	      end
        --interface  				
	      if playerIndex == Universe_CurrentPlayer() and ((year==0 and gametime<35) or year>0 or intro==1) then
          UI_SetTextLabelText("UnitCapInfoPopup", "lbltrade", ""..tradeList[playerIndexList]);    	                     
        end   	    
      end   
    end
    playerIndex = playerIndex + 1 
	end 		
	--crea sobgroups
  ntrc = SobGroup_UpdateClass("containers", "lastcontainers", ntrc, 0, 0, 0) 
end        

