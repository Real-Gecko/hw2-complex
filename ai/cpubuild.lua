aitrace("LOADING CPU BUILD")
dofilepath("data:ai/cpuresource.lua")
dofilepath("data:ai/cpubuildsubsystem.lua")
function CreateBuildDefinitions()	
	if (s_race == Race_Hiigaran) then	
		kCollector = HGN_RESOURCECOLLECTOR		
		kScout = HGN_SCOUT				
		kCarrier = HGN_CARRIER	    
		kShipYard = HGN_SHIPYARD				
	else	
		kCollector = VGR_RESOURCECOLLECTOR		
		kScout = VGR_SCOUT				
		kCarrier = VGR_CARRIER		
		kShipYard = VGR_SHIPYARD				
	end	
end

function CpuBuild_Init()	
	CreateBuildDefinitions()	
	CpuBuildSS_Init()	
	CpuResource_Init()	
	sg_resourceDemand = 1
	sg_scoutDemand = 0
	sg_militaryDemand = 1	
	sg_randScoutStartBuildTime = 60+Rand(120)	
	sg_randFavorShipType = Rand(100)	
	sg_classPersonalityDemand = {}	
	CpuBuild_PersonalityDemand()	
	sg_subSystemOverflowDemand = 0
	sg_subSystemDemand = 0
	sg_shipDemand = 4    
	sg_militaryToBuildPerCollector = 1		
	CpuBuild_DefaultShipDemandRules = CpuBuild_DefaultShipDemandRules_Hard
	cp_shipDemandRange = 1.5
	cp_subSystemDemandRange = 1.5
	if(g_LOD == 0) then		
		cp_shipDemandRange = 2
		cp_subSystemDemandRange = 2
  elseif(g_LOD == 1) then		
		cp_shipDemandRange = 1.5
		cp_subSystemDemandRange = 1.5
  elseif(g_LOD == 2) then		
		cp_shipDemandRange = 1
		cp_subSystemDemandRange = 1
	elseif(g_LOD > 2) then		
		cp_shipDemandRange = 0.5
		cp_subSystemDemandRange = 0.5
  end		
	if (Override_BuildDemandInit) then
		Override_BuildDemandInit()
	end	
	kUnitCapId_Fighter = GetUnitCapFamilyId("Fighter")
	kUnitCapId_Corvette = GetUnitCapFamilyId("Corvette")
	kUnitCapId_Frigate = GetUnitCapFamilyId("Frigate")	
end

function CpuBuild_Process()	
	ShipDemandClear()	
	CpuBuild_RemoveBuildItems()	
	if (Override_ShipDemand) then		
		Override_ShipDemand()		
	else		
		CpuBuild_DefaultShipDemandRules()	
	end		
	if (sg_resourceDemand > 0 or sg_militaryDemand <= 0) then		
		if (DoResourceBuild()==1) then			
			sg_resourceDemand = 1 - sg_militaryToBuildPerCollector			
			return 1
		end
	end	
	if (sg_militaryDemand > 0) then
		aitrace("**DoMilitaryBuild")
		if (DoMilitaryBuild()==1) then			
			if(sg_resourceDemand <= 0) then
				sg_resourceDemand = sg_resourceDemand + 1				
			end
			return 1
		end
	end	
	return 0
end

function CpuBuild_RemoveBuildItems()	
	RemoveStalledBuildItems()	
end

function DoMilitaryBuild()	
	local ssDemand = sg_subSystemDemand + sg_subSystemOverflowDemand + (Rand(3)-1)		
	local shipId = FindHighDemandShip()
	local highestPriority = HighestPriorityShip()	
  if (GetRU() > 4000) then	   
    CpuBuildSS_DoBuildSubSystem()			
	end	  	
	if (sg_shipDemand > ssDemand) then		
		if (shipId > 0) then			
			Build( shipId )			
			sg_subSystemOverflowDemand = sg_subSystemOverflowDemand + 1			
			return 1
		end		
	end			
	if (GetRU() > 5000) then	       		
		if (shipId > 0) then	      		
			Build( shipId )							
			return 1
		end		
	end	  
	if (sg_dosubsystems == 1 and CpuBuildSS_DoBuildSubSystem() == 1) then
		return 1
	end		
	return 0
end

function CpuBuild_PersonalityDemand()
	if (s_race == Race_Hiigaran) then
		sg_classPersonalityDemand[ eFighter ] = 0.5
		sg_classPersonalityDemand[ eCorvette ] = 0.4
		sg_classPersonalityDemand[ eFrigate ] = 0.3
	else
		sg_classPersonalityDemand[ eFighter ] = 0.45
		sg_classPersonalityDemand[ eCorvette ] = 0.4
		sg_classPersonalityDemand[ eFrigate ] = 0.35
	end		
	aitrace("PersonalityDemand: Fi:"..sg_classPersonalityDemand[ eFighter ].." Co:"..sg_classPersonalityDemand[ eCorvette ].." Fr:"..sg_classPersonalityDemand[ eFrigate ])
end

function CpuBuild_DefaultShipDemandRules_Hard()	
	DetermineClassDemand();
	DetermineCounterDemand();
	DetermineScoutDemand();
	DetermineBuilderClassDemand();
	DetermineSpecialDemand();	
end

function DetermineClassDemand()
	for i=0, eMaxCount do	
		if (sg_classPersonalityDemand[ i ] and sg_classPersonalityDemand[ i ]~=0) then
			ShipDemandSetByClass( i, sg_classPersonalityDemand[ i ] );
		end	
	end	
	ShipDemandSetByClass( eUselessShips, -10 )	
end

function DetermineCounterDemand()	
	if (s_enemyIndex ~= -1) then		
		local enemyMilitaryCount = PlayersMilitaryPopulation( s_enemyIndex, player_max )
		if (enemyMilitaryCount >= 3) then 			
			DetermineChassisDemand(s_enemyIndex)
			DetermineAntiChassisDemand(s_enemyIndex)		
			return				
		end
	end	
	DetermineDemandWithNoCounterInfo();
end

function DetermineChassisDemand(enemyIndex)	
	local FiDemand=0
	local CoDemand=0
	local FrDemand=0	
	local AFiValue = PlayersMilitary_AntiFighter(enemyIndex, player_max)
	local ACoValue = PlayersMilitary_AntiCorvette(enemyIndex, player_max)
	local AFrValue = PlayersMilitary_AntiFrigate(enemyIndex, player_max)
	local ATotal = AFiValue + ACoValue + AFrValue
	if (ATotal <= 0) then
		return
	end	
	if (AFiValue > 5) then
		local AFiPercent = AFiValue*100/ATotal
		if (AFiPercent > 70) then
			FiDemand = FiDemand - 3
		elseif (AFiPercent > 35) then
			FiDemand = FiDemand - 1.5
		end
	end	
	if (ACoValue > 5) then
		local ACoPercent = ACoValue*100/ATotal
		if (ACoPercent > 70) then
			CoDemand = CoDemand - 2
		elseif (ACoPercent > 35) then
			CoDemand = CoDemand - 1
		end
	end	
	if (AFrValue > 5) then
		local AFrPercent = AFrValue*100/ATotal
		if (AFrPercent > 70) then
			FrDemand = FrDemand - 1.5
		elseif (AFrPercent > 35) then
			FrDemand = FrDemand - 0.5
		end
	end		
	ShipDemandAddByClass( eFighter, FiDemand )
	ShipDemandAddByClass( eCorvette, CoDemand )
	ShipDemandAddByClass( eFrigate, FrDemand )
	aitrace("ChDmd: Fi:"..FiDemand.." Co:"..CoDemand.." Fr:"..FrDemand)	
end

function DetermineAntiChassisDemand(enemyIndex)	
	local kFighterCounterScale = 3.0
	local kCorvetteCounterScale = 1.5
	local kFrigateCounterScale = 1.0	
	local AFiDemand=0
	local ACoDemand=0
	local AFrDemand=0		
	local FiValue = PlayersMilitary_Fighter(enemyIndex, player_max)
	local self_AFiValue = PlayersMilitary_AntiFighter(s_playerIndex, player_max)	
	local enemy_FiTotal = (FiValue-self_AFiValue)*kFighterCounterScale	
	if (enemy_FiTotal < 0) then
		enemy_FiTotal = 0
	end		
	local CoValue = PlayersMilitary_Corvette(enemyIndex, player_max)
	local self_ACoValue = PlayersMilitary_AntiCorvette(s_playerIndex, player_max)	
	local enemy_CoTotal = (CoValue - self_ACoValue)*kCorvetteCounterScale	
	if (enemy_CoTotal < 0) then
		enemy_CoTotal = 0
	end		
	local MSfrig_correction = 0	
	if (s_militaryStrengthVersusTarget < 20) then
		MSfrig_correction = 25
	end		
	local FrValue = PlayersMilitary_Frigate(enemyIndex, player_max) - MSfrig_correction
	local self_AFrValue = PlayersMilitary_AntiFrigate(s_playerIndex, player_max)	
	local enemy_FrTotal = (FrValue - self_AFrValue)*kFrigateCounterScale	
	if (enemy_FrTotal < 0) then
		enemy_FrTotal = 0
	end	
	local enemy_ChassisTotal = enemy_FiTotal + enemy_CoTotal + enemy_FrTotal	
	if (enemy_ChassisTotal > 0) then		
		if (enemy_FiTotal > 0) then
			local FiTotalPercent = enemy_FiTotal*100/enemy_ChassisTotal
			if (FiTotalPercent > 70) then
				AFiDemand = AFiDemand + 3
			elseif (FiTotalPercent > 35) then
				AFiDemand = AFiDemand + 1.5
			end
		end
		if (enemy_CoTotal > 0) then
			local CoTotalPercent = enemy_CoTotal*100/enemy_ChassisTotal
			if (CoTotalPercent > 70) then
				ACoDemand = ACoDemand + 3
			elseif (CoTotalPercent > 35) then
				ACoDemand = ACoDemand + 1.5
			end
		end
		if (enemy_FrTotal > 0) then
			local FrTotalPercent = enemy_FrTotal*100/enemy_ChassisTotal
			if (FrTotalPercent > 70) then
				AFrDemand = AFrDemand + 3
			elseif (FrTotalPercent > 35) then
				AFrDemand = AFrDemand + 1.5
			end
		end
	end		
	if (AFiDemand > 0) then
		ShipDemandAddByClass( eAntiFighter, AFiDemand )
	end
	if (ACoDemand > 0) then
		ShipDemandAddByClass( eAntiCorvette, ACoDemand )
	end
	if (AFrDemand > 0) then
		ShipDemandAddByClass( eAntiFrigate, AFrDemand )
	end	
	aitrace("AChDmd: AFi:"..AFiDemand.." ACo:"..ACoDemand.." AFr:"..AFrDemand)
end

function DetermineDemandWithNoCounterInfo()	
	if (s_militaryPop < 9) then	
		aitrace("Dmd:Rand:"..sg_randFavorShipType )		
		if (s_race == Race_Hiigaran) then
			if (sg_randFavorShipType < 30) then
				ShipDemandAddByClass( eFighter, 1.2 )
			elseif (sg_randFavorShipType < 60) then
				ShipDemandAddByClass( eCorvette, 1.2 )
			elseif (sg_randFavorShipType < 90) then
				ShipDemandAddByClass( eFrigate, 1.2 )
			else
				ShipDemandAdd( HGN_DESTROYER, 1.2 )
				ShipDemandAdd( HGN_IONDESTROYER, 1.2 )
				ShipDemandAdd( HGN_ADVDESTROYER, 1.2 )				
				ShipDemandAdd( HGN_CRUISERA, 1.2 )
				ShipDemandAdd( HGN_CRUISERB, 1.2 )
			end
		else
			if (sg_randFavorShipType < 30) then
				ShipDemandAddByClass( eFighter, 1.2 )
			elseif (sg_randFavorShipType < 60) then
				ShipDemandAddByClass( eCorvette, 1.2 )	
			elseif (sg_randFavorShipType < 90) then		
			  ShipDemandAddByClass( eFrigate, 1.2 )	
			else
				ShipDemandAdd( VGR_DESTROYER, 1.2 )		
        ShipDemandAdd( VGR_PULSEDESTROYER, 1.2 )		
        ShipDemandAdd( VGR_CRUISER, 1.2 )						
			end
		end
	else	
		aitrace("Dmd:Asking for AntiFrigates" )		
		ShipDemandAddByClass( eAntiFrigate, 1.5 )	
	end
end

function DetermineScoutDemand()
	local curGameTime = gameTime()	
	if (UnderAttackThreat() < -10 and s_militaryPop > 0 and curGameTime > sg_randScoutStartBuildTime) then			
		local numEnemies = PlayersAlive( player_enemy )
		local shipCount = numQueueOfClass( eScout )			
		local numScoutsDemanded = 1
		if (numEnemies >= 2) then
			numScoutsDemanded = 2
		end
		if (numEnemies > 2 and s_militaryPop > 7) then
			numScoutsDemanded = 2+((s_militaryPop-7)/10)
		end		
		if (shipCount < numScoutsDemanded) then			
			ShipDemandAddByClass( eScout, 3.5 ) 			
			local scoutRand = Rand(100)
			if (scoutRand > 30) then
				ShipDemandAdd( kScout, 1.5 ) 
			end					
			sg_randScoutStartBuildTime = curGameTime + 50
		end		
	end
end

function DetermineBuilderClassDemand()	
  local rank = (NumSubSystems(ISLIEUTENANT) + NumSubSystems(ISCOMMANDER) + NumSubSystems(ISCAPTAIN) + NumSubSystems(ISCOMMODORE) + NumSubSystems(ISADMIRAL) + NumSubSystems(ISFLEETADMIRAL))  	
	local numBuilders = numQueueOfClass( eBuilder )
	if (s_race == Race_Hiigaran) then
		numBuilders = numQueueOfClass( eBuilder ) - NumSquadrons(HGN_RESEARCHSTATION) - NumSquadronsQ(HGN_RESEARCHSTATION) - NumSquadrons(HGN_CREWSTATION) - NumSquadronsQ(HGN_CREWSTATION) - NumSquadrons(HGN_POWER) - NumSquadronsQ(HGN_POWER) - NumSquadrons(HGN_COMBATBASE) - NumSquadronsQ(HGN_COMBATBASE)
	end
	local numActiveBuilders = numActiveOfClass( s_playerIndex, eBuilder )	
	if (numBuilders>numActiveBuilders) then
		ShipDemandAddByClass( eBuilder, -10 );
		return
	end	
	if (g_LOD == 0 and numBuilders >= 1+rank/3) then
		ShipDemandAddByClass( eBuilder, -10 );
		return
	elseif (g_LOD == 1 and numBuilders >= 2+rank/3) then
		ShipDemandAddByClass( eBuilder, -10 );
		return	
	elseif (g_LOD == 2 and numBuilders >= 3+rank/3) then
		ShipDemandAddByClass( eBuilder, -10 );
		return	
	elseif (g_LOD > 2 and numBuilders >= 3+rank/3) then
		ShipDemandAddByClass( eBuilder, -10 );
		return		
	end		
	if (s_militaryPop < 6 or (UnderAttack() == 1 and UnderAttackThreat() > -75) or (GetNumCollecting() < 6 and GetRU() < 6000 )) then
		ShipDemandAddByClass( eBuilder, -10 );
		return
	end			
	local numRUToBuildTable = {
		1000,			
		2500,			
		5000,		 	
		20000,			
		30000,		
		40000,		
	}	
	if (numBuilders > 5) then
		numBuilders = 5
	end		
	local div = 1500
	if numBuilders + numActiveBuilders <= 1 and rank >= 1 then
	  div = 750
	end
	ShipDemandAddByClass( eBuilder, (GetRU()-numRUToBuildTable[numBuilders+1])/div )	
	return 0	
end

function DetermineSpecialDemand()		
  local numRUs = GetRU() 
  local gamespeed = 1
  if IsResearchDone( GAMESPEED4 ) == 1 then
	  gamespeed = 1.2
	elseif IsResearchDone( GAMESPEED3 ) == 1 then
	  gamespeed = 1.1
	elseif IsResearchDone( GAMESPEED2 ) == 1 then
	  gamespeed = 1	
	elseif IsResearchDone( GAMESPEED1 ) == 1 then
	  gamespeed = 0.8
	end	 	
	local GameTime = (gameTime()*gamespeed) 
  local rank = (NumSubSystems(ISLIEUTENANT) + NumSubSystems(ISCOMMANDER) + NumSubSystems(ISCAPTAIN) + NumSubSystems(ISCOMMODORE) + NumSubSystems(ISADMIRAL) + NumSubSystems(ISFLEETADMIRAL))
	--demand based on rank and classes
	if rank == 6 then
		ShipDemandAddByClass( eFighter, 0.2 )
		ShipDemandAddByClass( eCorvette, 0.4 )
		ShipDemandAddByClass( eFrigate, 1.2 )
	elseif rank == 5 then
		ShipDemandAddByClass( eFighter, 0.2 )
		ShipDemandAddByClass( eCorvette, 0.4 )
		ShipDemandAddByClass( eFrigate, 1 )
	elseif rank == 4 then
		ShipDemandAddByClass( eFighter, 0.4 )
		ShipDemandAddByClass( eCorvette, 0.6 )
		ShipDemandAddByClass( eFrigate, 0.8 )	
	elseif rank == 3 then
		ShipDemandAddByClass( eFighter, 0.6 )
		ShipDemandAddByClass( eCorvette, 0.8 )
		ShipDemandAddByClass( eFrigate, 0.6 )		
	elseif rank == 2 then
		ShipDemandAddByClass( eFighter, 0.8 )
		ShipDemandAddByClass( eCorvette, 1 )
		ShipDemandAddByClass( eFrigate, 0.4 )			
	elseif rank == 1 then
		ShipDemandAddByClass( eFighter, 1 )
		ShipDemandAddByClass( eCorvette, 1.2 )
		ShipDemandAddByClass( eFrigate, 0.2 )			
	else
		ShipDemandAddByClass( eFighter, 1.2 )
		ShipDemandAddByClass( eCorvette, 0.2 )
		ShipDemandAddByClass( eFrigate, 0 )
	end  	
  --additional demand based on research divisions
	local additionalCorvetteDemand = 0.5
	local additionalFrigDemand = 0.65		
	local researchcount = NumSubSystems(RESEARCH) + NumSubSystemsQ(RESEARCH)
	if (s_race == Race_Hiigaran) then			
		local advresearchcount = NumSubSystems(ADVANCEDRESEARCH) + NumSubSystemsQ(ADVANCEDRESEARCH)
		local advresearchcount1 = NumSubSystems(ADVANCEDRESEARCH1) + NumSubSystemsQ(ADVANCEDRESEARCH1)
	  if (s_selfTotalValue > 120) then
		  if (researchcount > 0) then
				additionalFrigDemand = additionalFrigDemand + 0.1
			end			
			if (advresearchcount > 0) then
				additionalFrigDemand = additionalFrigDemand + 0.1
			end			
			if (advresearchcount1 > 0) then
				additionalFrigDemand = additionalFrigDemand + 0.1
			end
			ShipDemandAddByClass( eFrigate, additionalFrigDemand )		
			ShipDemandAddByClass( eCorvette, -0.2 )	
      ShipDemandAddByClass( eFighter, -0.4 )				
		elseif (s_selfTotalValue > 90) then	
		  if (researchcount > 0) then
				additionalCorvetteDemand = additionalCorvetteDemand + 0.1
			end			
			if (advresearchcount > 0) then
				additionalCorvetteDemand = additionalCorvetteDemand + 0.1
			end			
			if (advresearchcount1 > 0) then
				additionalCorvetteDemand = additionalCorvetteDemand + 0.1
			end
			ShipDemandAddByClass( eCorvette, additionalCorvetteDemand )		
			ShipDemandAddByClass( eFighter, -0.3 )		
		end
	else
    if (s_selfTotalValue > 120) then
      if (researchcount > 0) then
				additionalFrigDemand = additionalFrigDemand + 0.3
				ShipDemandAddByClass( eFrigate, additionalFrigDemand )		
				ShipDemandAddByClass( eCorvette, -0.2 )	
				ShipDemandAddByClass( eFighter, -0.4 )	
			end		  
		elseif (s_selfTotalValue > 90) then
		  if (researchcount > 0) then
				additionalCorvetteDemand = additionalCorvetteDemand + 0.3
				ShipDemandAddByClass( eCorvette, additionalCorvetteDemand )		
				ShipDemandAddByClass( eFighter, -0.3 )		
			end	
		end
	end	
	--Defense e Capture	 
	local numSpecial = numQueueOfClass(eCapture) + numQueueOfClass(eShield)
	local numFrigates = numQueueOfClass(eFrigate)
	if(numFrigates == 0 or numSpecial / numFrigates > 0.3) then        
    ShipDemandAddByClass( eCapture, -10 )
    ShipDemandAddByClass( eShield, -10 )        
	else        
    if (s_militaryPop < 5) then
        ShipDemandAddByClass( eCapture, -4 )
        ShipDemandAddByClass( eShield, -4.5 )
    elseif (s_militaryPop < 10) then
        ShipDemandAddByClass( eCapture, -2 )
        ShipDemandAddByClass( eShield, -2.5 )
    elseif (s_militaryPop < 15) then
        ShipDemandAddByClass( eCapture, -1 )
        ShipDemandAddByClass( eShield, -1.5 )
    elseif (s_militaryPop > 30) then
        ShipDemandAddByClass( eCapture, 1 )
        ShipDemandAddByClass( eShield, 1 )
		end
	end    	
	--Subsystem Attackers	
	local numEnemyBattleCruisers = PlayersUnitTypeCount( player_enemy, player_total, eBattleCruiser )
	if (numEnemyBattleCruisers > 0) then		
		local ssKillaDemand = numEnemyBattleCruisers/2		
		if (s_enemyIndex ~= -1) then
			local targetEnemyCruisers = PlayersUnitTypeCount( s_enemyIndex, player_max, eBattleCruiser )
			if (targetEnemyCruisers > 0) then
				ssKillaDemand = ssKillaDemand + targetEnemyCruisers				
			end
		end		
		ShipDemandAddByClass( eSubSystemAttackers, ssKillaDemand )		
	end			
  --Platforms
  ShipDemandSetByClass( ePlatform, -10 )
	--HIIGARAN
	if (s_race == Race_Hiigaran) then
	  --Builders
		ShipDemandSet( HGN_LIGHTCARRIER, -10)	
		if NumSquadrons( HGN_CARRIER ) + NumSquadronsQ( HGN_CARRIER ) > 0 then
		  ShipDemandSet( HGN_BATTLECARRIER, -6 )
			ShipDemandSet( HGN_CARRIER, -12 )				
			ShipDemandAdd( HGN_LIGHTCARRIER, -10)
		end	
		if NumSquadrons( HGN_BATTLECARRIER ) + NumSquadronsQ( HGN_BATTLECARRIER ) > 0 then
		  ShipDemandSet( HGN_BATTLECARRIER, -12 )
			ShipDemandAdd( HGN_CARRIER, -12 )		
      ShipDemandAdd( HGN_LIGHTCARRIER, -10)	   			
		end	
		if NumSquadrons( HGN_SHIPYARD ) + NumSquadronsQ( HGN_SHIPYARD ) > 0 then
			ShipDemandSet( HGN_SHIPYARD, -15 )	
		end			    
		if NumSquadrons( HGN_BATTLESHIPYARD ) + NumSquadronsQ( HGN_BATTLESHIPYARD ) > 0 then
		  ShipDemandSet( HGN_BATTLESHIPYARD, -15 )
			ShipDemandAdd( HGN_SHIPYARD, -15 )	
		end					
		--Research Station				
		if NumSquadrons( HGN_RESEARCHSTATION ) + NumSquadronsQ( HGN_RESEARCHSTATION ) == 0 and rank >= 0 and numRUs > 1000 and UnderAttackThreat() < -25 then
			ShipDemandSet( HGN_RESEARCHSTATION, 5 + (GameTime/9000))
		else
		  ShipDemandSet( HGN_RESEARCHSTATION, -10 ) 	
		end			
		--Crew Station				
		if NumSquadrons( HGN_CREWSTATION ) + NumSquadronsQ( HGN_CREWSTATION ) == 0 and rank >= 1 and numRUs > 1500 and UnderAttackThreat() < -25 then
		  ShipDemandSet( HGN_CREWSTATION, 4.5 + (GameTime/9000))		
		else
		  ShipDemandSet( HGN_CREWSTATION, -10 )	
		end	
		--Power Station				
		if NumSquadrons( HGN_POWER ) + NumSquadronsQ( HGN_POWER ) == 0 and rank >= 2 and numRUs > 2000 and UnderAttackThreat() < -25 then
			ShipDemandSet( HGN_POWER, 4.5 + (GameTime/9000))
		else
		  ShipDemandSet( HGN_POWER, -10 ) 	
		end			
		--Weapon Station				
		if NumSquadrons( HGN_COMBATBASE ) + NumSquadronsQ( HGN_COMBATBASE ) == 0 and rank >= 3 and numRUs > 5000 and UnderAttackThreat() < -50 then
			ShipDemandSet( HGN_COMBATBASE, 3.5 + (GameTime/9000))
		else
		  ShipDemandSet( HGN_COMBATBASE, -10 ) 	
		end			
		--Scavenger    
		if NumSquadrons( HGN_SCAVER ) + NumSquadronsQ( HGN_SCAVER ) == 0 and rank >= 1 and numRUs > 8000 and UnderAttackThreat() < -40 then
		  ShipDemandSet( HGN_SCAVER, 3.85 + (GameTime/9000))
		else
		  ShipDemandSet( HGN_SCAVER, -10 )	
		end	 			
		ShipDemandAdd(HGN_TRANSPORTCELL, 0.5-(NumSquadrons( HGN_TRANSPORTCELL ) + NumSquadronsQ( HGN_TRANSPORTCELL ))/rank )		
		ShipDemandAdd( HGN_PATCHER, 1-(NumSquadrons( HGN_PATCHER ) + NumSquadronsQ( HGN_PATCHER ))/rank )
		ShipDemandAdd( HGN_CONTAINER, 1-(NumSquadrons( HGN_CONTAINER ) + NumSquadronsQ( HGN_CONTAINER ))*10 )		
		ShipDemandSet(HGN_MASSIVETURRET, -10)			
		if rank < 5 then
		  ShipDemandSet(HGN_BATTLESTATION, -10)	
		end
		--priority to advanced units
		if (((GetNumCollecting() > 9 or numRUs > 2000) and s_militaryPop > 8)) or numRUs > 4000 then			
			ShipDemandAdd(HGN_SWEEPERDESTROYER, 1-(NumSquadrons(HGN_SWEEPERDESTROYER) + NumSquadronsQ(HGN_SWEEPERDESTROYER)) + numRUs/10000 + GameTime/10000)	
			ShipDemandAdd(HGN_DESTROYER, 1.4-(NumSquadrons(HGN_DESTROYER) + NumSquadronsQ(HGN_DESTROYER)) + numRUs/9500 + GameTime/9500)      
      ShipDemandAdd(HGN_MISSILEDESTROYER, 1.6-(NumSquadrons(HGN_MISSILEDESTROYER) + NumSquadronsQ(HGN_MISSILEDESTROYER)) + numRUs/9000 + GameTime/9000)
      ShipDemandAdd(HGN_IONDESTROYER, 1.6-(NumSquadrons(HGN_IONDESTROYER) + NumSquadronsQ(HGN_IONDESTROYER)) + numRUs/8500 + GameTime/8500)
      ShipDemandAdd(HGN_ADVDESTROYER, 1.8-(NumSquadrons(HGN_ADVDESTROYER) + NumSquadronsQ(HGN_ADVDESTROYER)) + numRUs/8000 + GameTime/8000)
      ShipDemandAdd(HGN_ARTILLERYDESTROYER, 1.6-(NumSquadrons(HGN_ARTILLERYDESTROYER) + NumSquadronsQ(HGN_ARTILLERYDESTROYER)) + numRUs/8000 + GameTime/8000)			    
			ShipDemandAdd(HGN_JUGGERNAUGHT, 0.5-(NumSquadrons(HGN_JUGGERNAUGHT) + NumSquadronsQ(HGN_JUGGERNAUGHT)) + numRUs/8000 + GameTime/8000)			
			if NumSquadrons(HGN_JUGGERNAUGHT) + NumSquadronsQ(HGN_JUGGERNAUGHT) >= rank/2 + g_LOD then
				ShipDemandSet(HGN_JUGGERNAUGHT, -10)
			end		
      ShipDemandAdd(HGN_CRUISERA, 1.8-(NumSquadrons(HGN_CRUISERA) + NumSquadronsQ(HGN_CRUISERA)) + numRUs/8000 + GameTime/8000)
      ShipDemandAdd(HGN_CRUISERB, 1.8-(NumSquadrons(HGN_CRUISERB) + NumSquadronsQ(HGN_CRUISERB)) + numRUs/8000 + GameTime/8000)    
	    ShipDemandAdd(HGN_BATTLECRUISER, 1.4-(NumSquadrons(HGN_BATTLECRUISER) + NumSquadronsQ(HGN_BATTLECRUISER)) + numRUs/7500 + GameTime/7500)
	    ShipDemandAdd(HGN_VORTEX, 1.2-(NumSquadrons(HGN_VORTEX) + NumSquadronsQ(HGN_VORTEX)) + numRUs/7000 + GameTime/7000)
	    ShipDemandAdd(HGN_BATTLESHIP, 1.6-(NumSquadrons(HGN_BATTLESHIP) + NumSquadronsQ(HGN_BATTLESHIP)) + numRUs/6500 + GameTime/6500)
		end
		if (((GetNumCollecting() > 11 or numRUs > 4000) and s_militaryPop > 10)) or numRUs > 6000 then
			ShipDemandAdd(HGN_ARK, 0.75-(NumSquadrons(HGN_ARK) + NumSquadronsQ(HGN_ARK))*11 + numRUs/6500 + GameTime/6500)
			ShipDemandAdd(HGN_COMMANDFORTRESS, 1.5-(NumSquadrons(HGN_COMMANDFORTRESS) + NumSquadronsQ(HGN_COMMANDFORTRESS))*12 + numRUs/6500 + GameTime/6500)
			if rank >= 5 then
				ShipDemandAdd(HGN_BATTLESTATION, 0.1-(NumSquadrons(HGN_BATTLESTATION) + NumSquadronsQ(HGN_BATTLESTATION))*15 + numRUs/6500 + GameTime/6500)			
			end
		end		
  else
	  --builders
		if NumSquadrons( VGR_LIGHTCARRIER ) + NumSquadronsQ( VGR_LIGHTCARRIER ) > 0 then
			ShipDemandSet( VGR_LIGHTCARRIER, -10 )	
      ShipDemandAdd( VGR_CARRIER, -6 )		
      ShipDemandAdd( VGR_BATTLECARRIER, -5 )			
		end	
		if NumSquadrons( VGR_CARRIER ) + NumSquadronsQ( VGR_CARRIER ) > 0 then
			ShipDemandAdd( VGR_LIGHTCARRIER, -6 )	
      ShipDemandSet( VGR_CARRIER, -10 )		
      ShipDemandAdd( VGR_BATTLECARRIER, -5 )	
		end		
    if NumSquadrons( VGR_BATTLECARRIER ) + NumSquadronsQ( VGR_BATTLECARRIER ) > 0 then
		  ShipDemandAdd( VGR_LIGHTCARRIER, -5 )	
      ShipDemandAdd( VGR_CARRIER, -5 )		
      ShipDemandSet( VGR_BATTLECARRIER, -10 )			 			
		end	
		if NumSquadrons( VGR_SHIPYARD ) + NumSquadronsQ( VGR_SHIPYARD ) > 0 then
		  ShipDemandSet( VGR_SHIPYARD, -15 )			
		end			
	  --scavenger
	  if NumSquadrons( VGR_SCAVER ) + NumSquadronsQ( VGR_SCAVER ) == 0 and rank >= 1 and numRUs > 8000 and UnderAttackThreat() < -40 then
		  ShipDemandSet( VGR_SCAVER, 3.85 + (GameTime/9000))
		else
		  ShipDemandSet( VGR_SCAVER, -10 )	
		end	 		
	  ShipDemandAdd( VGR_CONTAINER, 1-(NumSquadrons( VGR_CONTAINER ) + NumSquadronsQ( VGR_CONTAINER ))*10 )
		ShipDemandAdd( VGR_PATCHER, 1-(NumSquadrons( VGR_PATCHER ) + NumSquadronsQ( VGR_PATCHER ))/rank )
		--support frigate
		if NumSquadrons( VGR_SUPPORTFRIGATEARMED ) + NumSquadronsQ( VGR_SUPPORTFRIGATEARMED ) >= 2 then
			ShipDemandSet(VGR_SUPPORTFRIGATEARMED, -10)  
		end  		
		--priority to advanced units
		if (((GetNumCollecting() > 9 or numRUs > 2000) and s_militaryPop > 8)) or numRUs > 4000 then						
			ShipDemandAdd(VGR_DESTROYER, 1.4-(NumSquadrons(VGR_DESTROYER) + NumSquadronsQ(VGR_DESTROYER)) + numRUs/9500 + GameTime/9500)    
      ShipDemandAdd(VGR_AM, 1.4-(NumSquadrons(VGR_AM) + NumSquadronsQ(VGR_AM))*10 + numRUs/9500 + GameTime/9500)			
      ShipDemandAdd(VGR_PULSEDESTROYER, 1.5-(NumSquadrons(VGR_PULSEDESTROYER) + NumSquadronsQ(VGR_PULSEDESTROYER)) + numRUs/9000 + GameTime/9000)
      ShipDemandAdd(VGR_CRUISER, 1.7-(NumSquadrons(VGR_CRUISER) + NumSquadronsQ(VGR_CRUISER)) + numRUs/8500 + GameTime/8500)
      ShipDemandAdd(VGR_LIGHTCRUISER, 1.8-(NumSquadrons(VGR_LIGHTCRUISER) + NumSquadronsQ(VGR_LIGHTCRUISER)) + numRUs/8000 + GameTime/8000)
      ShipDemandAdd(VGR_ARTILLERYSHIP, 1.6-(NumSquadrons(VGR_ARTILLERYSHIP) + NumSquadronsQ(VGR_ARTILLERYSHIP)) + numRUs/8000 + GameTime/8000)		
      ShipDemandAdd(VGR_SINNER, 1-(NumSquadrons(VGR_SINNER) + NumSquadronsQ(VGR_SINNER))*10 + numRUs/8000 + GameTime/8000)    
	    ShipDemandAdd(VGR_BATTLECRUISER, 1.4-(NumSquadrons(VGR_BATTLECRUISER) + NumSquadronsQ(VGR_BATTLECRUISER)) + numRUs/7500 + GameTime/7500)
	    ShipDemandAdd(VGR_MISSILEBATTLECRUISER, 1.3-(NumSquadrons(VGR_MISSILEBATTLECRUISER) + NumSquadronsQ(VGR_MISSILEBATTLECRUISER)) + numRUs/7000 + GameTime/7000)
	    ShipDemandAdd(VGR_ALKHALID, 1.6-(NumSquadrons(VGR_ALKHALID) + NumSquadronsQ(VGR_ALKHALID)) + numRUs/6500 + GameTime/6500)
			ShipDemandAdd(VGR_DREADNAUGHT, 1.2-(NumSquadrons(VGR_DREADNAUGHT) + NumSquadronsQ(VGR_DREADNAUGHT)) + numRUs/6500 + GameTime/6500)
		end
		if (((GetNumCollecting() > 11 or numRUs > 4000) and s_militaryPop > 10)) or numRUs > 6000 then
			ShipDemandAdd(VGR_COMMANDFORTRESS, 1.5-(NumSquadrons(VGR_COMMANDFORTRESS) + NumSquadronsQ(VGR_COMMANDFORTRESS))*12 + numRUs/6500 + GameTime/6500)
		end		
	end				
end