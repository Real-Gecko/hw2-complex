aitrace("DEFAULT CPU LOADED")
g_LOD = getLevelOfDifficulty()
dofilepath("data:ai/classdef.lua")
dofilepath("data:ai/cpubuild.lua")
dofilepath("data:ai/cpuresearch.lua")
dofilepath("data:ai/cpumilitary.lua")
old_aitrace = aitrace
rawset(globals(),"aitrace",nil)
aitrace = function() end
function oninit()	
	s_playerIndex = Player_Self()
	s_race = getRace();		
	sg_dobuild = 1
	sg_dosubsystems = 1
	sg_doresearch = 1
	sg_doupgrades = 1
	sg_domilitary = 1
	cp_processResource = 1
	cp_processMilitary = 1		
	sg_lastSpendMoneyTime = gameTime()
	sg_spendMoneyDelay = 0	
	if (g_LOD == 0) then
	  sg_spendMoneyDelay = 8
	elseif (g_LOD == 1) then
	  sg_spendMoneyDelay = 4
	elseif (g_LOD == 2) then
	  sg_spendMoneyDelay = 2	
	elseif (g_LOD > 2) then
	  sg_spendMoneyDelay = 0		
	end			
	ClassInitialize()	
	CpuBuild_Init()	
	CpuResearch_Init()	
	CpuMilitary_Init()	
	sg_kDemandResetValue = 2	
	if (Override_Init) then
		Override_Init()
	end		
	sg_reseachDemand = -sg_kDemandResetValue		
	Rule_AddInterval("doai", 5.0 )		
end

function doai()	  
	if Util_CheckResearch(ISAI) then
		Research( ISAI )
		if g_LOD == 0 then
			Research( ISEASY )	  
		elseif g_LOD == 1 then
			Research( ISSTANDARD )	  
		elseif g_LOD == 2 then
			Research( ISHARD )		  
		elseif g_LOD > 2 then
			Research( ISEXPERT )		 
		end
		Research( NEBULA )	
	end	
	CacheCurrentState();	
	CalcOpenBuildChannels();
	local curTime = gameTime()
	local timeSinceLastSubSysDemand = curTime - sg_lastSpendMoneyTime	
	if (timeSinceLastSubSysDemand >= sg_spendMoneyDelay) then		
		SpendMoney()		
		sg_lastSpendMoneyTime = curTime
	end	
	if (sg_domilitary==1) then
		CpuMilitary_Process();
	end		
end

function CacheCurrentState()	
	s_numFiSystems = NumSubSystems(FIGHTERPRODUCTION) + NumSubSystemsQ(FIGHTERPRODUCTION)
	s_numCoSystems = NumSubSystems(CORVETTEPRODUCTION) + NumSubSystemsQ(CORVETTEPRODUCTION)
	s_numFrSystems = NumSubSystems(FRIGATEPRODUCTION) + NumSubSystemsQ(FRIGATEPRODUCTION)
	s_totalProdSS = s_numFiSystems + s_numCoSystems + s_numFrSystems	
	s_militaryPop = PlayersMilitaryPopulation( s_playerIndex, player_total );	
	s_selfTotalValue = PlayersMilitary_Total( s_playerIndex, player_total );
	s_enemyTotalValue = PlayersMilitary_Total( player_enemy, player_max );		
	s_militaryStrength = PlayersMilitary_Threat( player_enemy, player_min ); 	
	s_enemyIndex = GetChosenEnemy()	
	s_militaryStrengthVersusTarget = 0
	if (s_enemyIndex ~= -1) then
		s_militaryStrengthVersusTarget = PlayersMilitary_Threat( s_enemyIndex, player_max )
	end	
end

function CalcOpenBuildChannels()		
	local numShipsBuildingShips = NumShipsBuildingShips()
	local numShipsBuildingSubSystems = NumShipsBuildingSubSystems()		
	local numShipsBuilding = numShipsBuildingShips + numShipsBuildingSubSystems	
	local researchItem = IsResearchBusy()
	local numItemsBuilding = numShipsBuilding + researchItem	
	local totalBuildShips = BuildShipCount()*2		
	local numCollecting = GetNumCollecting()
	local numRUs = GetRU()	
	sg_allowedBuildChannels = numCollecting/5;	
	if (numRUs > 500) then
		sg_allowedBuildChannels = sg_allowedBuildChannels + (numRUs-500)/1000
	end	
	s_numOpenBuildChannels = sg_allowedBuildChannels - numItemsBuilding	
	s_shipBuildQueuesFull = 0
	if (totalBuildShips == numShipsBuilding) then
		s_shipBuildQueuesFull  = 1
	end	
	if (s_numOpenBuildChannels <= -1.5) then		
		RemoveLeastNeededItem()		
	end
end

function SpendMoney()	
	if (s_numOpenBuildChannels > 0) then			
		local buildHasBeenDone = 0		
		if (sg_dobuild==1 and s_shipBuildQueuesFull==0 and sg_reseachDemand<0) then
			if (CpuBuild_Process() == 1) then				
				s_numOpenBuildChannels = s_numOpenBuildChannels-1				
				sg_reseachDemand = sg_reseachDemand + 1				
				buildHasBeenDone = 1
			end
		end		
		if (s_numOpenBuildChannels > 0) then			
			if (sg_doresearch==1) then				
				local didResearch = CpuResearch_Process();				
				if (didResearch == 1) then					
					sg_reseachDemand = -sg_kDemandResetValue
				else					
					if (sg_reseachDemand>=0 and sg_dobuild==1 and s_shipBuildQueuesFull==0 and buildHasBeenDone == 0) then						
						CpuBuild_Process()
					end
				end
			else
				sg_reseachDemand = -sg_kDemandResetValue
			end
		end
	end			
end