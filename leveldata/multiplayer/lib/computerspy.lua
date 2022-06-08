function computerspy()   
	--Pulizia
  for i = 0,5,1 do
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblstatus"..i, "");
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblstatusp"..i, "");
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopUnitsStaticText"..i, ""); 
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblname"..i, "");
    UI_SetTextLabelText("UnitCapInfoPopup1", "isai"..i, "");
    UI_SetTextLabelText("UnitCapInfoPopup1", "diplomazia"..i, "");
    UI_SetTextLabelText("UnitCapInfoPopup1", "diplomacy"..i, "");
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblstatusp"..i, ""); 
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblstatus"..i, "");
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblFusion"..i, "");
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblTrade"..i, "");            
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblMegalith"..i, "");  
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblplanet"..i, "");  
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblResourceUnits"..i, "");            
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblGrado"..i, "");   
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblHonor"..i, "");         
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopUnits"..i, "");      
    UI_SetTextLabelText("UnitCapInfoPopup1", "fleet"..i, ""); 
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopOfficerUnits"..i, "");              
    UI_SetTextLabelText("UnitCapInfoPopup1", "lbltotalscore"..i, ""); 
    UI_SetTextLabelText("UnitCapInfoPopup1", "energy"..i, "");           
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblMaintenance"..i, "");    
    UI_SetTextLabelText("UnitCapInfoPopup1", "lblscore"..i, "");            				         
  end    
  local playerIndex = 0  
  while playerIndex < Universe_PlayerCount() do
    if Player_IsAlive(playerIndex) == 1 then
      if Player_HasShipWithBuildQueue(playerIndex) == 1 then  
			  playerIndexList = playerIndex + 1        
			  computerspyList[playerIndexList] = 0 			         
			  if Player_HasResearch(playerIndex, "computerlink" ) == 1 then
			    spytime[playerIndexList] = 88.8
			    computerspyList[playerIndexList] = computerspyList[playerIndexList] + 1                      
			    if Player_HasResearch(playerIndex, "computerlink1" ) == 1 then
			      spytime[playerIndexList] = 44.4
			      computerspyList[playerIndexList] = computerspyList[playerIndexList] + 1
			      if Player_HasResearch(playerIndex, "computerlink2" ) == 1 then
			        spytime[playerIndexList] = 22.2
			        computerspyList[playerIndexList] = computerspyList[playerIndexList] + 1
			        if Player_HasResearch(playerIndex, "computerlink3" ) == 1 then
			          spytime[playerIndexList] = 11.1
			          computerspyList[playerIndexList] = computerspyList[playerIndexList] + 1			          
			        end
			      end
			    end          
			  end  			  
			  if playerIndex == Universe_CurrentPlayer() and ((year==0 and gametime<70) or year>0) then  
			    if UI_IsScreenActive("UnitCapInfoPopup1") == 1 and Player_HasResearch(playerIndex, "computerlink" ) == 1 then
					  Sound_SpeechPlay("Data:sound/sfx/etg/STATUS_computer")	
					  Subtitle_Add(Actor_FleetCommand,"Remote Monitor Report available", 2.711)   	 					
					end  
				  computerspyblockList[playerIndexList] = 0      
				  local placetemp = 0; 
				  local ammortizzatore = 0;  
				  while placetemp < Universe_PlayerCount() do      
				    if Player_IsAlive(placetemp) == 1 then
				      if Player_HasShipWithBuildQueue(placetemp) == 1 then
				        placetempList = placetemp + 1  
				        placetempmenoammortizzatore = placetemp - ammortizzatore 
								--Computer Spy Level
                UI_SetTextLabelText("UnitCapInfoPopup1", "ComputerSpy", "LEVEL "..computerspyList[playerIndexList]); 				                                                
								--Name          
                if Player_HasResearch(placetemp, "iseasy" ) == 1 then  
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopUnitsStaticText"..placetempmenoammortizzatore, "" .. CPULODList[placetempList] .. " (Easy)");    
				        elseif Player_HasResearch(placetemp, "isstandard" ) == 1 then  
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopUnitsStaticText"..placetempmenoammortizzatore, "" .. CPULODList[placetempList] .. " (Standard)"); 
				        elseif Player_HasResearch(placetemp, "ishard" ) == 1 then  
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopUnitsStaticText"..placetempmenoammortizzatore, "" .. CPULODList[placetempList] .. " (Hard)"); 
				        elseif Player_HasResearch(placetemp, "isexpert" ) == 1 then  		          
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopUnitsStaticText"..placetempmenoammortizzatore, "" .. CPULODList[placetempList] .. " (Expert)"); 
				        else
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopUnitsStaticText"..placetempmenoammortizzatore, "" .. CPULODList[placetempList]);   
				        end    
				        if ( Player_GetRace(placetemp) == Race_Hiigaran ) then   				              
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblname"..placetempmenoammortizzatore, "Hiigaran");                 
				        else				          
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblname"..placetempmenoammortizzatore, "Vaygr");        
				        end     
								--diplomazia   			
								if AreAllied(playerIndex, placetemp) == 1 then
									UI_SetTextLabelText("UnitCapInfoPopup1", "diplomazia"..placetempmenoammortizzatore, "Allied");
								else
									UI_SetTextLabelText("UnitCapInfoPopup1", "diplomazia"..placetempmenoammortizzatore, "Enemy");
								end 
								--ResourceMenu  
                if computerspyblockList[playerIndexList] == 0  then
					        if computerspyList[playerIndexList] < computerspyList[placetempList] and 
					           AreAllied(playerIndex, placetemp) == 0 then         
					          UI_SetElementVisible("ResourceMenu", "locks", 1)
					          UI_SetElementVisible("ResourceMenu", "lock", 0)  
					          UI_SetElementVisible("ResourceMenu", "lock1s", 1)
					          UI_SetElementVisible("ResourceMenu", "lock1", 0) 					                    
					          UI_SetTextLabelText("ResourceMenu", "locks", "LOCKED");	
					          UI_SetTextLabelText("ResourceMenu", "lock1s", "LOCKED");	
					          UI_SetElementVisible("UnitCapInfoPopup", "lblstatuss", 1)
					          UI_SetElementVisible("UnitCapInfoPopup", "lblstatus", 0)            
					          UI_SetTextLabelText("UnitCapInfoPopup", "lblstatuss", "Locked");								          
					          computerspyblockList[playerIndexList] = 1                   
					        else
					          UI_SetElementVisible("ResourceMenu", "lock", 1)
					          UI_SetElementVisible("ResourceMenu", "locks", 0)  
					          UI_SetElementVisible("ResourceMenu", "lock1", 1)
					          UI_SetElementVisible("ResourceMenu", "lock1s", 0)  
					          UI_SetTextLabelText("ResourceMenu", "lock", "Hidden");  
					          UI_SetTextLabelText("ResourceMenu", "lock1", "Hidden");  
					          UI_SetElementVisible("UnitCapInfoPopup", "lblstatus", 1)
					          UI_SetElementVisible("UnitCapInfoPopup", "lblstatuss", 0)  
					          UI_SetTextLabelText("UnitCapInfoPopup", "lblstatus", "Hidden");  
					        end	   
					      end       					      
								--Scanning              
				        if playerIndex == placetemp or
				           ((computerspyList[playerIndexList] > computerspyList[placetempList] or AreAllied(playerIndex, placetemp) == 1) and
				           (Player_CanResearch(playerIndex, "hasadvancedarray" ) == 1 and Player_HasResearch(playerIndex, "computerlink" ) == 1)) then 
				          UI_SetElementVisible("UnitCapInfoPopup1", "lblstatus"..placetempmenoammortizzatore, 1)
				          UI_SetElementVisible("UnitCapInfoPopup1", "lblstatusp"..placetempmenoammortizzatore, 0)  
				          if scan == 0 then
				            UI_SetTextLabelText("UnitCapInfoPopup1", "lblstatus"..placetempmenoammortizzatore, "Scanning.  ");
				          elseif scan == 1 then
				            UI_SetTextLabelText("UnitCapInfoPopup1", "lblstatus"..placetempmenoammortizzatore, "Scanning.. ");
				          elseif scan == 2 then
				            UI_SetTextLabelText("UnitCapInfoPopup1", "lblstatus"..placetempmenoammortizzatore, "Scanning...");
				          end                                                       
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblFusion"..placetempmenoammortizzatore, ""..fusionList[placetempList]);
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblTrade"..placetempmenoammortizzatore, ""..tradeList[placetempList]);            
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblMegalith"..placetempmenoammortizzatore, ""..megalithList[placetempList]); 	
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblplanet"..placetempmenoammortizzatore, ""..planetList[placetempList]+orbitalstationList[placetempList]); 						          				           
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblResourceUnits"..placetempmenoammortizzatore, ""..RUList[placetempList].."/"..RUMaxCapacityList[placetempList]);            
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblGrado"..placetempmenoammortizzatore, ""..gradoList[placetempList]);   
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblHonor"..placetempmenoammortizzatore, ""..honorList[placetempList]);         
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopUnits"..placetempmenoammortizzatore, ""..pilotpopList[placetempList].."/"..pilotrecruitList[placetempList].."/"..pilotmaxList[placetempList]);  				          
				          UI_SetTextLabelText("UnitCapInfoPopup1", "fleet"..placetempmenoammortizzatore, ""..pilotpopdisplayList[placetempList]); 
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopOfficerUnits"..placetempmenoammortizzatore, ""..officerpopList[placetempList].."/"..officerrecruitList[placetempList].."/"..officermaxList[placetempList]);  				               
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lbltotalscore"..placetempmenoammortizzatore, ""..researchList[placetempList]);     
				          UI_SetTextLabelText("UnitCapInfoPopup1", "energy"..placetempmenoammortizzatore, ""..floor(LastpowerList[placetempList]).."/"..floor(LastpowerListStored[placetempList]).."/"..floor(LastpowerListMax[placetempList]));       
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblMaintenance"..placetempmenoammortizzatore, ""..maintenanceList[placetempList]);  
				          UI_SetTextLabelText("UnitCapInfoPopup1", "diplomacy"..placetempmenoammortizzatore, ""..diplomacyListSummary[placetempList]);    
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblscore"..placetempmenoammortizzatore, ""..scoreList[placetempList]);                                    
				        else
				          UI_SetElementVisible("UnitCapInfoPopup1", "lblstatus"..placetempmenoammortizzatore, 0)
				          UI_SetElementVisible("UnitCapInfoPopup1", "lblstatusp"..placetempmenoammortizzatore, 1)
				          UI_SetTextLabelText("UnitCapInfoPopup1", "lblstatusp"..placetempmenoammortizzatore, "Hidden     ");           
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblFusion"..placetempmenoammortizzatore, "");
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblTrade"..placetempmenoammortizzatore, "");            
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblMegalith"..placetempmenoammortizzatore, "");  
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblplanet"..placetempmenoammortizzatore, "");  
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblResourceUnits"..placetempmenoammortizzatore, "");            
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblGrado"..placetempmenoammortizzatore, "");   
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblHonor"..placetempmenoammortizzatore, "");         
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopUnits"..placetempmenoammortizzatore, "");  						      
									UI_SetTextLabelText("UnitCapInfoPopup1", "fleet"..placetempmenoammortizzatore, ""); 
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblPopOfficerUnits"..placetempmenoammortizzatore, "");  						        
									UI_SetTextLabelText("UnitCapInfoPopup1", "lbltotalscore"..placetempmenoammortizzatore, "");  
									UI_SetTextLabelText("UnitCapInfoPopup1", "energy"..placetempmenoammortizzatore, "");                 
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblMaintenance"..placetempmenoammortizzatore, "");    
									UI_SetTextLabelText("UnitCapInfoPopup1", "diplomacy"..placetempmenoammortizzatore, "");    
									UI_SetTextLabelText("UnitCapInfoPopup1", "lblscore"..placetempmenoammortizzatore, "");                
				        end      
				      end
				    else
				      ammortizzatore = ammortizzatore + 1				        
				    end
				    placetemp = placetemp + 1
				  end 
				  Rule_Remove("computerspy")					
					Rule_AddInterval("computerspy", spytime[playerIndexList])						
				end              
      end 
    end     
    playerIndex = playerIndex + 1
  end 
  scan = scan + 1
  if scan > 2 then
    scan = 0
  end           
end    
        
        
        
        
        
        
          