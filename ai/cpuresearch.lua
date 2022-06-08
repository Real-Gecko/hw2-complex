aitrace("LOADING CPU RESEARCH")
function CpuResearch_Init()  
	if (s_race == Race_Hiigaran) then			
		DoUpgradeDemand = DoUpgradeDemand_Hiigaran
		DoResearchTechDemand = DoResearchTechDemand_Hiigaran	
	else			
		DoUpgradeDemand = DoUpgradeDemand_Vaygr
		DoResearchTechDemand = DoResearchTechDemand_Vaygr	
	end	
	sg_lastUpgradeTime = gameTime()
	sg_upgradeDelayTime = 60 + Rand(30)			
	cp_researchDemandRange = 1.5
	if (g_LOD == 0) then
	  cp_researchDemandRange = 2
	elseif (g_LOD == 1) then
	  cp_researchDemandRange = 1.5
	elseif (g_LOD == 2) then
	  cp_researchDemandRange = 1	
	elseif (g_LOD > 2) then
	  cp_researchDemandRange = 0.5		
	end			
	if (Override_ResearchInit) then
		Override_ResearchInit()
	end
end

function CpuResearch_Process()
	if (GetNumCollecting() < sg_minNumCollectors and GetRU() < 1500) then
		return 0
	end		
	if (NumResearchSubSystems() == 0) then
		return 0
	end		
	if (IsResearchBusy()==1) then
		return 0
	end	
	ResearchDemandClear()	
	if (Override_ResearchDemand) then
		Override_ResearchDemand()
	else 
		CpuResearch_DefaultResearchDemandRules()
	end		
	local bestResearch = FindHighDemandResearch()		
	if ( bestResearch ~= 0) then
		Research( bestResearch )
		return 1
	end	
	return 0
end

function CpuResearch_DefaultResearchDemandRules()
  local curGameTime = gameTime()
  local numRU = GetRU()		
	if (UnderAttackThreat() > 175) and (numRU < 2500) then
		return
	end		
	DoResearchTechDemand()		
	local timeSinceLastUpgrade = curGameTime - sg_lastUpgradeTime		
	if (sg_doupgrades == 1 and UnderAttackThreat() < 70 and s_militaryPop > 8 and numRU > 3000 and timeSinceLastUpgrade > sg_upgradeDelayTime) or (numRU > 6000) then		
		DoUpgradeDemand()
		sg_lastUpgradeTime = gameTime();		
	end
end

function Util_CheckResearch( researchId )
	if (IsResearchDone(researchId) == 0 and 
	    IsResearchAvailable(researchId)==1) then
		return 1
	end
	return nil
end

function DoResearchTechDemand_Vaygr()	
  local numRU = GetRU()
	--game speed
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
	--economically sound
  local economicallysound = 0
  if numRU > 15000 then
    economicallysound = 100
  elseif numRU > 10000 then
    economicallysound = 75
  elseif numRU > 5000 then
    economicallysound = 50
  end  	 			
	--mine/missile
	if (Util_CheckResearch(CANBUILDMINEMS) ) then
	  ResearchDemandSet( CANBUILDMINEMS, 99 )
	end		
	if (Util_CheckResearch(CANBUILDMISSILEMS) ) then
	  ResearchDemandSet( CANBUILDMISSILEMS, 99 )
	end		
	--resource
  if numRU > 4000 then	
    if (Util_CheckResearch(RESOURCE1) ) then
		  ResearchDemandSet( RESOURCE1, 99 )
		end		
  end
  if numRU > 8000 then	
    if (Util_CheckResearch(RESOURCE2) ) then
		  ResearchDemandSet( RESOURCE2, 99 )
		end		
  end
  if numRU > 12000 then	
    if (Util_CheckResearch(RESOURCE3) ) then
		  ResearchDemandSet( RESOURCE3, 99 )
		end		
  end
  if numRU > 16000 then	
    if (Util_CheckResearch(RESOURCE4) ) then
		  ResearchDemandSet( RESOURCE4, 99 )
		end		
  end	
	--crew
  if (Util_CheckResearch(CREW1) ) then
	  ResearchDemandSet( CREW1, 199 )
	end			
	if (Util_CheckResearch(CREW2) ) then
	  ResearchDemandSet( CREW2, 189 )
	end			
	if (Util_CheckResearch(CREW3) ) then
	  ResearchDemandSet( CREW3, 179 )
	end				
	if (Util_CheckResearch(CREW4) ) then
	  ResearchDemandSet( CREW4, 169 )
	end				
	if (Util_CheckResearch(CREW5) ) then
	  ResearchDemandSet( CREW5, 159 )
	end		
	if (Util_CheckResearch(CREW6) ) then
	  ResearchDemandSet( CREW6, 149 )
	end		
	--officer
  if (Util_CheckResearch(OFFICER1) ) then
	  ResearchDemandSet( OFFICER1, 199 )
	end			
	if (Util_CheckResearch(OFFICER2) ) then
	  ResearchDemandSet( OFFICER2, 189 )
	end			
	if (Util_CheckResearch(OFFICER3) ) then
	  ResearchDemandSet( OFFICER3, 179 )
	end				
	if (Util_CheckResearch(OFFICER4) ) then
	  ResearchDemandSet( OFFICER4, 169 )
	end				
	if (Util_CheckResearch(OFFICER5) ) then
	  ResearchDemandSet( OFFICER5, 159 )
	end	
	--energy
  if (Util_CheckResearch(ENERGYPRODUCTION1) ) then
	  ResearchDemandSet( ENERGYPRODUCTION1, 150 )
	end			
	if (Util_CheckResearch(ENERGYPRODUCTION2) and gameTime() > 300/gamespeed and numRU > 1000) then
	  ResearchDemandSet( ENERGYPRODUCTION2, 140 )
	end			
	if (Util_CheckResearch(ENERGYPRODUCTION3) and gameTime() > 600/gamespeed and numRU > 2000 ) then
	  ResearchDemandSet( ENERGYPRODUCTION3, 130 )
	end				
	if (Util_CheckResearch(ENERGYPRODUCTION4) and gameTime() > 1000/gamespeed and numRU > 3000 ) then
	  ResearchDemandSet( ENERGYPRODUCTION4, 120 )
	end				
	if (Util_CheckResearch(ENERGYPRODUCTION5) and gameTime() > 1500/gamespeed and numRU > 4000 ) then
	  ResearchDemandSet( ENERGYPRODUCTION5, 110 )
	end		
	if (Util_CheckResearch(ENERGYPRODUCTION6) and gameTime() > 2100/gamespeed and numRU > 5000 ) then
	  ResearchDemandSet( ENERGYPRODUCTION6, 100 )
	end	
  if (Util_CheckResearch(ENERGYPRODUCTION7) and gameTime() > 2800/gamespeed and numRU > 6000 ) then
	  ResearchDemandSet( ENERGYPRODUCTION7, 90 )
	end				
	if (Util_CheckResearch(ENERGYPRODUCTION8) and gameTime() > 3600/gamespeed and numRU > 7000 ) then
	  ResearchDemandSet( ENERGYPRODUCTION8, 80 )
	end				
	if (Util_CheckResearch(ENERGYPRODUCTION9) and gameTime() > 4500/gamespeed and numRU > 8000 ) then
	  ResearchDemandSet( ENERGYPRODUCTION9, 70 )
	end		
	if (Util_CheckResearch(ENERGYPRODUCTION10) and gameTime() > 5500/gamespeed and numRU > 9000 ) then
	  ResearchDemandSet( ENERGYPRODUCTION10, 60 )
	end	  
	--production
  if (Util_CheckResearch(CORVETTETECH) ) then		
		ResearchDemandSet( CORVETTETECH, 140 )		
	elseif (Util_CheckResearch(FRIGATETECH) ) then		
		ResearchDemandSet( FRIGATETECH, 130 )		
	elseif (Util_CheckResearch(CAPITALTECH) ) then		
		ResearchDemandSet( CAPITALTECH, 120 )		
	elseif (Util_CheckResearch(ADVCAPITALTECH) ) then		
		ResearchDemandSet( ADVCAPITALTECH, 110 )						
	end  
	if (Util_CheckResearch(AUTOGENRES) ) then
		local demand = ShipDemandGet(VGR_RESOURCECONTROLLER)
		if (demand > 0) then
			ResearchDemandSet( AUTOGENRES, demand )
		end
	end		
	if (s_militaryPop > 7 and numRU > 1000) then
	  if (Util_CheckResearch(COMPUTERLINK) ) then
	    ResearchDemandSet( COMPUTERLINK, 0.85 )
	  end		
	end			
  --tecs	
	if (Util_CheckResearch(CAPITALRETIRE) ) then
	  ResearchDemandSet( CAPITALRETIRE, 10 )
	end		
	if (Util_CheckResearch(HYPERSPACEGATETECH)) then		
		ResearchDemandSet( HYPERSPACEGATETECH, 100 )	
	end	
	if (Util_CheckResearch(SHIPYARDTECH) ) then
		local demand = ShipDemandGet(kShipYard)
		if (demand > 0) then
			ResearchDemandSet( SHIPYARDTECH, demand + economicallysound )
		end
	end		
	if (Util_CheckResearch(BATTLECARRIERTECH) ) then
		local demand = ShipDemandGet(VGR_BATTLECARRIER)
		if (demand > 0) then
			ResearchDemandSet( BATTLECARRIERTECH, demand + economicallysound )
		end
	end		
	--destroyer
	if (s_militaryPop > 15 and numRU > 1000 and gameTime() > 1600/gamespeed) then		
		if (Util_CheckResearch(DESTROYERGUNS)) then
			local demand = ShipDemandGet(VGR_DESTROYER)
			if (demand > 0) then
				ResearchDemandSet( DESTROYERGUNS, demand )
			end
		end
		if (Util_CheckResearch(PULSEDESTROYERGUNS)) then
			local demand = ShipDemandGet(VGR_PULSEDESTROYER)
			if (demand > 0) then
				ResearchDemandSet( PULSEDESTROYERGUNS, demand )
			end
		end
		if (Util_CheckResearch(AMGUNS)) then
			local demand = ShipDemandGet(VGR_AM)
			if (demand > 0) then
				ResearchDemandSet( AMGUNS, demand )
			end
		end
	end		
	--cruiser
	if (s_militaryPop > 16 and numRU > 1200 and gameTime() > 2000/gamespeed) then		
		if (Util_CheckResearch(CRUISERTECH)) then
			local demand = ShipDemandGet(VGR_CRUISER)
			if (demand > 0) then
				ResearchDemandSet( CRUISERTECH, demand )
			end
		end
	end			
  if (s_militaryPop > 16 and numRU > 1400 and gameTime() > 2200/gamespeed) then		
		if (Util_CheckResearch(ARTILLERYTECH)) then
			local demand = ShipDemandGet(VGR_ARTILLERYSHIP)
			if (demand > 0) then
				ResearchDemandSet( ARTILLERYTECH, demand )
			end
		end
	end		
  if (s_militaryPop > 16 and numRU > 1600 and gameTime() > 2400/gamespeed) then		
		if (Util_CheckResearch(IONCRUISERTECH)) then
			local demand = ShipDemandGet(VGR_LIGHTCRUISER)
			if (demand > 0) then
				ResearchDemandSet( IONCRUISERTECH, demand )
			end
		end
	end			
  --battlecruiser
	if (s_militaryPop > 17 and numRU > 1800 and gameTime() > 2500/gamespeed) then		
		local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)		
		if (numShipyards > 0 and Util_CheckResearch(SINNERTECH)) then
		local demand = ShipDemandGet( VGR_SINNER )
			if (demand > 0) then
				ResearchDemandSet( SINNERTECH, demand )
			end
		end	
	end		
	if (s_militaryPop > 18 and numRU > 2000 and gameTime() > 2700/gamespeed) then		
		local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)		
		if (numShipyards > 0 and Util_CheckResearch(BATTLECRUISERIONWEAPONS)) then
		local demand = ShipDemandGet( VGR_BATTLECRUISER )
			if (demand > 0) then
				ResearchDemandSet( BATTLECRUISERIONWEAPONS, demand + economicallysound )
			end
		end	
	end		
	if (s_militaryPop > 19 and numRU > 2200 and gameTime() > 2800/gamespeed) then		
		local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)		
		if (numShipyards > 0 and Util_CheckResearch(MISSILEBATTLECRUISERIONWEAPONS)) then
		local demand = ShipDemandGet( VGR_MISSILEBATTLECRUISER )
			if (demand > 0) then
				ResearchDemandSet( MISSILEBATTLECRUISERIONWEAPONS, demand + economicallysound )
			end
		end	
	end		
	if (s_militaryPop > 20 and numRU > 2400 and gameTime() > 2900/gamespeed) then		
		local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)		
		if (numShipyards > 0 and Util_CheckResearch(BATTLESHIPTECH)) then
		local demand = ShipDemandGet( VGR_ALKHALID )
			if (demand > 0) then
				ResearchDemandSet( BATTLESHIPTECH, demand + economicallysound )
			end
		end	
	end	
	if (s_militaryPop > 21 and numRU > 2600 and gameTime() > 3000/gamespeed) then		
		local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)		
		if (numShipyards > 0 and Util_CheckResearch(DREADNAUGHTTECH)) then
		local demand = ShipDemandGet( VGR_DREADNAUGHT )
			if (demand > 0) then
				ResearchDemandSet( DREADNAUGHTTECH, demand + economicallysound )
			end
		end	
	end	
	--command fortress
	if (s_militaryPop > 22 and numRU > 2800 and gameTime() > 3200/gamespeed) then		
		if Util_CheckResearch(COMMANDFORTRESSTECH) then
		  local demand = ShipDemandGet( VGR_COMMANDFORTRESS )
			if (demand > 0) then
				ResearchDemandSet( COMMANDFORTRESSTECH, demand + economicallysound )
			end
		end			
	end				
	--fighter
	if (Util_CheckResearch(LANCEBEAMS)) then
		local demand = ShipDemandGet(VGR_LANCEFIGHTER)
		if (demand > 0) then
			ResearchDemandSet( LANCEBEAMS, demand + 0.5 ) 
		end
	end
	if gameTime() > 800/gamespeed then	
		if (Util_CheckResearch(DEFENDERTECH)) then
			local demand = ShipDemandGet(VGR_DEFENDER)
			if (demand > 0) then
				ResearchDemandSet( DEFENDERTECH, demand )
			end
		end	
	end		
	if gameTime() > 1100/gamespeed then	
		if (Util_CheckResearch(HEAVYFIGHTERTECH)) then
			local demand = ShipDemandGet(VGR_HEAVYFIGHTER)
			if (demand > 0) then
				ResearchDemandSet( HEAVYFIGHTERTECH, demand )
			end
		end	
    if (Util_CheckResearch(MISSILEBOMBERTECH)) then
			local demand = ShipDemandGet(VGR_MISSILEBOMBER)
			if (demand > 0) then
				ResearchDemandSet( MISSILEBOMBERTECH, demand )
			end
		end					
	end	
  if gameTime() > 1400/gamespeed then	
	  if (Util_CheckResearch(MULTIROLETECH)) then
			local demand = ShipDemandGet(VGR_ELITEFIGHTER)
			if (demand > 0) then
				ResearchDemandSet( MULTIROLETECH, demand )
			end
		end	
	end	
	if (Util_CheckResearch(PLASMABOMBS) ) then
		local demand = ShipDemandGet( VGR_BOMBER )
		if (demand > 0) then
			ResearchDemandSet( PLASMABOMBS, demand + 0.75 )
		end
	end	
	--corvette
	if (Util_CheckResearch(CORVETTELASER)) then
		local demand = ShipDemandGet(VGR_LASERCORVETTE)
		if (demand > 0) then
			ResearchDemandSet( CORVETTELASER, demand )
		end
	end	
	if (Util_CheckResearch(CORVETTEPLASMA)) then
		local demand = ShipDemandGet(VGR_PLASMACORVETTE)
		if (demand > 0) then
			ResearchDemandSet( CORVETTEPLASMA, demand )
		end
	end	
	if (Util_CheckResearch(STORMTECH)) then
		local demand = ShipDemandGet(VGR_STANDVETTE)
		if (demand > 0) then
			ResearchDemandSet( STORMTECH, demand )
		end
	end	
	if gameTime() > 1100/gamespeed then
		if (Util_CheckResearch(CORVETTEMULTILANCE)) then
			local demand = ShipDemandGet(VGR_MULTILANCECORVETTE)
			if (demand > 0) then
				ResearchDemandSet( CORVETTEMULTILANCE, demand )
			end
		end
		if (Util_CheckResearch(MORTARTECH)) then
			local demand = ShipDemandGet(VGR_MORTARCORVETTE)
			if (demand > 0) then
				ResearchDemandSet( MORTARTECH, demand )
			end
		end
	end			
	if gameTime() > 1400/gamespeed then
		if (Util_CheckResearch(STRIKER)) then
			local demand = ShipDemandGet(VGR_STRIKER)
			if (demand > 0) then
				ResearchDemandSet( STRIKER, demand )
			end
		end
	end			
	--frigate	
  if (Util_CheckResearch(MULTICANNONTECH)) then
		local demand = ShipDemandGet(VGR_ADVASSAULTFRIGATE)
		if (demand > 0) then
			ResearchDemandSet( MULTICANNONTECH, demand )
		end
	end	
	if (Util_CheckResearch(HEAVYMISSILEFRIGATE)) then
		local demand = ShipDemandGet(VGR_HEAVYMISSILEFRIGATE)
		if (demand > 0) then
			ResearchDemandSet( HEAVYMISSILEFRIGATE, demand )
		end
	end
	if (Util_CheckResearch(SUPPORTFRIGATETECH)) then
		local demand = ShipDemandGet(VGR_SUPPORTFRIGATE)
		if (demand > 0) then
			ResearchDemandSet( SUPPORTFRIGATETECH, demand )
		end
	end
	if (Util_CheckResearch(SUPPORTFRIGATE_LASERTECH)) then
		local demand = ShipDemandGet(VGR_SUPPORTFRIGATE_LASER)
		if (demand > 0) then
			ResearchDemandSet( SUPPORTFRIGATE_LASERTECH, demand )
		end
	end
	if (Util_CheckResearch(SUPPORTFRIGATEARMEDTECH)) then
		local demand = ShipDemandGet(VGR_SUPPORTFRIGATEARMED)
		if (demand > 0) then
			ResearchDemandSet( SUPPORTFRIGATEARMEDTECH, demand )
		end
	end
	if gameTime() > 1400/gamespeed then
		if (Util_CheckResearch(ARTILLERYGUNTECH)) then
			local demand = ShipDemandGet(VGR_ARTILLERYFRIGATE)
			if (demand > 0) then
				ResearchDemandSet( ARTILLERYGUNTECH, demand )
			end
		end	
		if (Util_CheckResearch(DEATHTECH)) then
			local deathdemand = ShipDemandGet(VGR_EMPFRIGATE)
			if (deathdemand > 0) then
				ResearchDemandSet( DEATHTECH, deathdemand )
			end
		end
	end		
  if gameTime() > 1700/gamespeed then
		if (Util_CheckResearch(LONGRANGEARTILLERYGUNTECH)) then
			local demand = ShipDemandGet(VGR_LONGRANGEARTILLERYFRIGATE)
			if (demand > 0) then
				ResearchDemandSet( LONGRANGEARTILLERYGUNTECH, demand )
			end
		end	
	end			
	if (s_militaryPop > 15 and numRU > 1000) then	
		if (Util_CheckResearch(CORVETTEGRAVITICATTRACTION) ) then
			local mineLayerDemand = ShipDemandGet(VGR_MINELAYERCORVETTE)
			if (mineLayerDemand > 0) then
				ResearchDemandSet( CORVETTEGRAVITICATTRACTION, mineLayerDemand )
			end
		end		
		if (Util_CheckResearch(CORVETTECOMMAND)) then
			local commanddemand = ShipDemandGet(VGR_COMMANDCORVETTE)
			if (commanddemand > 0) then
				ResearchDemandSet( CORVETTECOMMAND, commanddemand )
			end
		end		
		if (Util_CheckResearch(FRIGATEINFILTRATIONTECH)) then
			local demand = ShipDemandGet(VGR_INFILTRATORFRIGATE)
			if (demand > 0) then
				ResearchDemandSet( FRIGATEINFILTRATIONTECH, demand )
			end
		end	
	end		
	--platform
	--if (Util_CheckResearch(PLATFORMHEAVYMISSILES)) then
		--local demand = ShipDemandGet(VGR_WEAPONPLATFORM_MISSILE)
		--if (demand > 0) then
			--ResearchDemandSet( PLATFORMHEAVYMISSILES, demand )
		--end
	--end	
	--abilities
	if (Util_CheckResearch(BOMBERIMPROVEDBOMBS) ) then
		local numUnit = NumSquadrons( VGR_BOMBER )
		if (numUnit > 2) then
			ResearchDemandSet( BOMBERIMPROVEDBOMBS, numUnit )
		end
	end	
  if (Util_CheckResearch(MULTIROLEIMPROVEDBOMBS) ) then
		local numUnit = NumSquadrons( VGR_ELITEFIGHTER )
		if (numUnit > 2) then
			ResearchDemandSet( MULTIROLEIMPROVEDBOMBS, numUnit )
		end
	end		 
  if (Util_CheckResearch(MISSILEBOMBERIMPROVEDBOMBS) ) then
		local numUnit = NumSquadrons( VGR_MISSILEBOMBER )
		if (numUnit > 2) then
			ResearchDemandSet( MISSILEBOMBERIMPROVEDBOMBS, numUnit )
		end
	end		 		
	if (Util_CheckResearch(PERFORATEABILITY) ) then
		local numUnit = NumSquadrons( VGR_INFILTRATORFRIGATE )
		if (numUnit > 5) then
			ResearchDemandSet( PERFORATEABILITY, numUnit )
		end
	end		
	if (Util_CheckResearch(IMPROVEDTORPEDOMOTHERSHIP) ) then
		local numUnit = NumSquadrons( VGR_MOTHERSHIP )
		if (numUnit > 0) then
			ResearchDemandSet( IMPROVEDTORPEDOMOTHERSHIP, numUnit * 100 )
		end
	end		
	if (Util_CheckResearch(IMPROVEDTORPEDODESTROYER) ) then
		local numUnit = NumSquadrons( VGR_DESTROYER )
		if (numUnit > 1) then
			ResearchDemandSet( IMPROVEDTORPEDODESTROYER, numUnit * 30 )
		end
	end	
	if (Util_CheckResearch(MINEDESTROYER) ) then
		local numUnit = NumSquadrons( VGR_DESTROYER )
		if (numUnit > 2) then
			ResearchDemandSet( MINEDESTROYER, numUnit * 25 )
		end
	end				
	if (Util_CheckResearch(IMPROVEDTORPEDOPULSEDESTROYER) ) then
		local numUnit = NumSquadrons( VGR_PULSEDESTROYER )
		if (numUnit > 1) then
			ResearchDemandSet( IMPROVEDTORPEDOPULSEDESTROYER, numUnit * 32 )
		end
	end	
	if (Util_CheckResearch(MINEPULSEDESTROYER) ) then
		local numUnit = NumSquadrons( VGR_PULSEDESTROYER )
		if (numUnit > 2) then
			ResearchDemandSet( MINEPULSEDESTROYER, numUnit * 27 )
		end
	end			
	if (Util_CheckResearch(FASTTRACKING) ) then
		local numUnit = NumSquadrons( VGR_AM )
		if (numUnit > 0) then
			ResearchDemandSet( FASTTRACKING, numUnit * 5 )
		end
	end			
	if (Util_CheckResearch(IMPROVEDTORPEDOCRUISER) ) then
		local numUnit = NumSquadrons( VGR_CRUISER )
		if (numUnit > 1) then
			ResearchDemandSet( IMPROVEDTORPEDOCRUISER, numUnit * 40 )
		end
	end	
	if (Util_CheckResearch(IMPROVEDTORPEDOCRUISER1) ) then
		local numUnit = NumSquadrons( VGR_CRUISER )
		if (numUnit > 2) then
			ResearchDemandSet( IMPROVEDTORPEDOCRUISER1, numUnit * 35 )
		end
	end		
	if (Util_CheckResearch(IMPROVEDTORPEDOLIGHTCRUISER) ) then
		local numUnit = NumSquadrons( VGR_LIGHTCRUISER )
		if (numUnit > 1) then
			ResearchDemandSet( IMPROVEDTORPEDOLIGHTCRUISER, numUnit * 40 )
		end
	end	
	if (Util_CheckResearch(IMPROVEDTORPEDOBATTLECRUISER) ) then
		local numUnit = NumSquadrons( VGR_BATTLECRUISER )
		if (numUnit > 0) then
			ResearchDemandSet( IMPROVEDTORPEDOBATTLECRUISER, numUnit * 40 )
		end
	end	
	if (Util_CheckResearch(IMPROVEDTORPEDOBATTLESHIP) ) then
		local numUnit = NumSquadrons( VGR_ALKHALID )
		if (numUnit > 0) then
			ResearchDemandSet( IMPROVEDTORPEDOBATTLESHIP, numUnit * 40 )
		end
	end	
	if (Util_CheckResearch(MINEBATTLESHIP) ) then
		local numUnit = NumSquadrons( VGR_ALKHALID )
		if (numUnit > 0) then
			ResearchDemandSet( MINEBATTLESHIP, numUnit * 35 )
		end
	end	
	if (Util_CheckResearch(FREACKERBATTLESHIP) ) then
		local numUnit = NumSquadrons( VGR_ALKHALID )
		if (numUnit > 1) then
			ResearchDemandSet( FREACKERBATTLESHIP, numUnit * 30 )
		end
	end	
	if (Util_CheckResearch(GUNTURRETANTIMISSILESYSTEM) ) then
		local numUnit = NumSquadrons( VGR_WEAPONPLATFORM_GUN )
		if (numUnit > 3) then
			ResearchDemandSet( GUNTURRETANTIMISSILESYSTEM, numUnit )
		end
	end	
	if (Util_CheckResearch(IMPROVEDTORPEDOEMPFRIGATE) ) then
		local numUnit = NumSquadrons( VGR_EMPFRIGATE )
		if (numUnit > 2) then
			ResearchDemandSet( IMPROVEDTORPEDOEMPFRIGATE, numUnit * 10 )
		end
	end			
	if gameTime() > 2200/gamespeed then
		if (Util_CheckResearch(COORDINATEDWEAPONARTILLERYFRIGATE) ) then
			local numUnit = NumSquadrons( VGR_ARTILLERYFRIGATE )
			if (numUnit > 2) then
				ResearchDemandSet( COORDINATEDWEAPONARTILLERYFRIGATE, numUnit * 10 )
			end
		end	
	end		
  if gameTime() > 2400/gamespeed then
		if (Util_CheckResearch(COORDINATEDWEAPONLONGRANGEARTILLERYFRIGATE) ) then
			local numUnit = NumSquadrons( VGR_LONGRANGEARTILLERYFRIGATE )
			if (numUnit > 2) then
				ResearchDemandSet( COORDINATEDWEAPONLONGRANGEARTILLERYFRIGATE, numUnit * 10 )
			end
		end	
	end					
end

function DoUpgradeDemand_Vaygr()
  local numRU = GetRU()			
	--Economic status	
	local economicallysound = 0
	if numRU > 15000 then
		economicallysound = 100
	elseif numRU > 10000 then
		economicallysound = 75
	elseif numRU > 5000 then
		economicallysound = 50
	end  	 		
	--Capital		
	local numCapital = numActiveOfClass( s_playerIndex, eCapital )	
	if (numCapital > 1) then
	  --health
		ResearchDemandSet( ARMEDCAPITALHEALTHUPGRADE1, numCapital * 2 )
		ResearchDemandSet( ARMEDCAPITALHEALTHUPGRADE2, numCapital * 1.9 )
		ResearchDemandSet( ARMEDCAPITALHEALTHUPGRADE3, numCapital * 1.8 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHUPGRADE1, numCapital * 2 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHUPGRADE2, numCapital * 1.9 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHUPGRADE3, numCapital * 1.8 )
		ResearchDemandSet( CAPITALHEALTHUPGRADE1, numCapital * 2 )
		ResearchDemandSet( CAPITALHEALTHUPGRADE2, numCapital * 1.9 )
		ResearchDemandSet( CAPITALHEALTHUPGRADE3, numCapital * 1.8 )
		--speed
		ResearchDemandSet( ARMEDCAPITALSPEEDUPGRADE1, numCapital * 1.9)
		ResearchDemandSet( ARMEDCAPITALSPEEDUPGRADE2, numCapital * 1.8)
		ResearchDemandSet( ARMEDCAPITALSPEEDUPGRADE3, numCapital * 1.7)
		ResearchDemandSet( SUPERARMEDCAPITALSPEEDUPGRADE1, numCapital * 1.9)
		ResearchDemandSet( SUPERARMEDCAPITALSPEEDUPGRADE2, numCapital * 1.8)
		ResearchDemandSet( SUPERARMEDCAPITALSPEEDUPGRADE3, numCapital * 1.7)
		ResearchDemandSet( CAPITALSPEEDUPGRADE1, numCapital * 1.9 )
		ResearchDemandSet( CAPITALSPEEDUPGRADE2, numCapital * 1.8 )
		ResearchDemandSet( CAPITALSPEEDUPGRADE3, numCapital * 1.7 )
		--build
		ResearchDemandSet( CAPITALBUILDUPGRADE1, numCapital * 1.8 )
		ResearchDemandSet( CAPITALBUILDUPGRADE2, numCapital * 1.7 )
		ResearchDemandSet( CAPITALBUILDUPGRADE3, numCapital * 1.6 )			
		--weapon damage
		ResearchDemandSet( ARMEDCAPITALWEAPONDAMAGEUPGRADE1, numCapital * 1.7)
		ResearchDemandSet( ARMEDCAPITALWEAPONDAMAGEUPGRADE2, numCapital * 1.6)
		ResearchDemandSet( ARMEDCAPITALWEAPONDAMAGEUPGRADE3, numCapital * 1.5)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONDAMAGEUPGRADE1, numCapital * 1.7)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONDAMAGEUPGRADE2, numCapital * 1.6)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONDAMAGEUPGRADE3, numCapital * 1.5)
		ResearchDemandSet( CAPITALWEAPONDAMAGEUPGRADE1, numCapital * 1.7 )
		ResearchDemandSet( CAPITALWEAPONDAMAGEUPGRADE2, numCapital * 1.6 )
		ResearchDemandSet( CAPITALWEAPONDAMAGEUPGRADE3, numCapital * 1.5 )
		--drive
		ResearchDemandSet( ARMEDCAPITALDRIVEUPGRADE1, numCapital * 1.6)
		ResearchDemandSet( ARMEDCAPITALDRIVEUPGRADE2, numCapital * 1.5)
		ResearchDemandSet( ARMEDCAPITALDRIVEUPGRADE3, numCapital * 1.4)
		ResearchDemandSet( SUPERARMEDCAPITALDRIVEUPGRADE1, numCapital * 1.6)
		ResearchDemandSet( SUPERARMEDCAPITALDRIVEUPGRADE2, numCapital * 1.5)
		ResearchDemandSet( SUPERARMEDCAPITALDRIVEUPGRADE3, numCapital * 1.4)
		ResearchDemandSet( CAPITALDRIVEUPGRADE1, numCapital * 1.6 )
		ResearchDemandSet( CAPITALDRIVEUPGRADE2, numCapital * 1.5 )
		ResearchDemandSet( CAPITALDRIVEUPGRADE3, numCapital * 1.4 )
		--repair
		ResearchDemandSet( ARMEDCAPITALHEALTHREGUPGRADE1, numCapital * 1.5 )
		ResearchDemandSet( ARMEDCAPITALHEALTHREGUPGRADE2, numCapital * 1.4 )
		ResearchDemandSet( ARMEDCAPITALHEALTHREGUPGRADE3, numCapital * 1.3 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHREGUPGRADE1, numCapital * 1.5 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHREGUPGRADE2, numCapital * 1.4 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHREGUPGRADE3, numCapital * 1.3 )
		ResearchDemandSet( CAPITALHEALTHREGUPGRADE1, numCapital * 1.5 )
		ResearchDemandSet( CAPITALHEALTHREGUPGRADE2, numCapital * 1.4 )
		ResearchDemandSet( CAPITALHEALTHREGUPGRADE3, numCapital * 1.3 )
		--weapon accuracy
		ResearchDemandSet( ARMEDCAPITALWEAPONACCURACYUPGRADE1, numCapital * 1.1)
		ResearchDemandSet( ARMEDCAPITALWEAPONACCURACYUPGRADE2, numCapital * 1)
		ResearchDemandSet( ARMEDCAPITALWEAPONACCURACYUPGRADE3, numCapital * 0.9)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONACCURACYUPGRADE1, numCapital * 1.1)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONACCURACYUPGRADE2, numCapital * 1)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONACCURACYUPGRADE3, numCapital * 0.9)
		ResearchDemandSet( CAPITALWEAPONACCURACYUPGRADE1, numCapital * 1.1 )
		ResearchDemandSet( CAPITALWEAPONACCURACYUPGRADE2, numCapital * 1 )
		ResearchDemandSet( CAPITALWEAPONACCURACYUPGRADE3, numCapital * 0.9 )
		--docking
		--ResearchDemandSet( CAPITALDOCKINGUPGRADE1, numCapital * 1.3 )
		--ResearchDemandSet( CAPITALDOCKINGUPGRADE2, numCapital * 1.2 )
		--ResearchDemandSet( CAPITALDOCKINGUPGRADE3, numCapital * 1.1 )		
	end			
	local numWeapons = NumSquadrons( VGR_BATTLECRUISER ) + NumSquadrons( VGR_MISSILEBATTLECRUISER )
	if (numWeapons > 1) then				
		ResearchDemandSet( WEAPONSPEEDUPGRADE1, numWeapons * 1.3 )
		ResearchDemandSet( WEAPONSPEEDUPGRADE2, numWeapons * 1.2 )
		ResearchDemandSet( WEAPONSPEEDUPGRADE3, numWeapons * 1.1 )
		ResearchDemandSet( WEAPONIMPACTUPGRADE1, numWeapons * 1.2 )
		ResearchDemandSet( WEAPONIMPACTUPGRADE2, numWeapons * 1.1 )
		ResearchDemandSet( WEAPONIMPACTUPGRADE3, numWeapons * 1 )
	end		
	--Fleet    
	ResearchDemandSet( SENSORSUPGRADE1, 2.75 + economicallysound )
	ResearchDemandSet( SENSORSUPGRADE2, 2.65 + economicallysound )
	ResearchDemandSet( SENSORSUPGRADE3, 2.45 )		    
	ResearchDemandSet( HYPERSPACECOSTUPGRADE1, 8 + economicallysound )
	ResearchDemandSet( HYPERSPACECOSTUPGRADE2, 7 + economicallysound )
	ResearchDemandSet( HYPERSPACECOSTUPGRADE3, 6 + economicallysound )      
	ResearchDemandSet( HYPERSPACEDAMAGEUPGRADE1, 6 + economicallysound )
	ResearchDemandSet( HYPERSPACEDAMAGEUPGRADE2, 5 + economicallysound )
	ResearchDemandSet( HYPERSPACEDAMAGEUPGRADE3, 4 )      
	ResearchDemandSet( HYPERSPACEREGENUPGRADE1, 5 + economicallysound )
	ResearchDemandSet( HYPERSPACEREGENUPGRADE2, 4 )
	ResearchDemandSet( HYPERSPACEREGENUPGRADE3, 3 )      
	ResearchDemandSet( HYPERSPACETIMEUPGRADE1, 4 + economicallysound )
	ResearchDemandSet( HYPERSPACETIMEUPGRADE2, 3 )
	ResearchDemandSet( HYPERSPACETIMEUPGRADE3, 2 )                               
	ResearchDemandSet( COMPUTERLINK1, 2.69 + economicallysound )
	ResearchDemandSet( COMPUTERLINK2, 2.43 + economicallysound )
	ResearchDemandSet( COMPUTERLINK3, 2.17 )
	ResearchDemandSet( MAINTENANCE1, 30 + economicallysound )
	ResearchDemandSet( MAINTENANCE2, 25 + economicallysound )
	ResearchDemandSet( MAINTENANCE3, 20 )
	--Utility		
	local numCollectors = NumSquadrons( VGR_RESOURCECOLLECTOR )
	if (numCollectors > 6) then				
	  --health
		ResearchDemandSet( UTILITYHEALTHUPGRADE1, numCollectors * 2 )
		ResearchDemandSet( UTILITYHEALTHUPGRADE2, numCollectors * 1.9 )
		ResearchDemandSet( UTILITYHEALTHUPGRADE3, numCollectors * 1.8 )	
		--speed
		ResearchDemandSet( UTILITYSPEEDUPGRADE1, numCollectors * 1.9 )
		ResearchDemandSet( UTILITYSPEEDUPGRADE2, numCollectors * 1.8 )
		ResearchDemandSet( UTILITYSPEEDUPGRADE3, numCollectors * 1.7 )	 
		--resource
		ResearchDemandSet( RESOURCECOLLECTORRUCAPUPGRADE1, numCollectors * 4.25 )
		ResearchDemandSet( RESOURCECOLLECTORRUCAPUPGRADE2, numCollectors * 3.15 )
		ResearchDemandSet( RESOURCECOLLECTORRUCAPUPGRADE3, numCollectors * 3.05 )
		ResearchDemandSet( RESOURCECOLLECTORRURATEUPGRADE1, numCollectors * 4.55 )
		ResearchDemandSet( RESOURCECOLLECTORRURATEUPGRADE2, numCollectors * 3.25 )
		ResearchDemandSet( RESOURCECOLLECTORRURATEUPGRADE3, numCollectors * 3.1 )
		ResearchDemandSet( RESOURCECOLLECTORRUDROPOFFUPGRADE1, numCollectors * 4.15 )
		ResearchDemandSet( RESOURCECOLLECTORRUDROPOFFUPGRADE2, numCollectors * 3.05 )
		ResearchDemandSet( RESOURCECOLLECTORRUDROPOFFUPGRADE3, numCollectors * 2.025 )
		ResearchDemandSet( RESOURCECOLLECTOREXTRACTION1, numCollectors * 4.55 )
		ResearchDemandSet( RESOURCECOLLECTOREXTRACTION2, numCollectors * 3.25 )
		ResearchDemandSet( RESOURCECOLLECTOREXTRACTION3, numCollectors * 3.1 )
	end				
	local numMineContainers = NumSquadrons( VGR_MINECONTAINER )
	if (numMineContainers > 2) then		
		--resource	
		ResearchDemandSet( MINECONTAINERLOAD1, numMineContainers * 3.5 )
		ResearchDemandSet( MINECONTAINERLOAD2, numMineContainers * 3.3 )
		ResearchDemandSet( MINECONTAINERLOAD3, numMineContainers * 3.1 )
		ResearchDemandSet( MINECONTAINERRURATE1, numMineContainers * 3.75 )
		ResearchDemandSet( MINECONTAINERRURATE2, numMineContainers * 3 )
		ResearchDemandSet( MINECONTAINERRURATE3, numMineContainers * 2.5 )
		ResearchDemandSet( MINECONTAINERDROPOFF1, numMineContainers * 3.15 )
		ResearchDemandSet( MINECONTAINERDROPOFF2, numMineContainers * 2.9 )
		ResearchDemandSet( MINECONTAINERDROPOFF3, numMineContainers * 1.4 )
	end				
	local numRefinery = NumSquadrons( VGR_RESOURCECONTROLLER ) + NumSquadrons( VGR_RESOURCECONTROLLERDOUBLE )		
	if (numRefinery > 2) then
		--fusion
		ResearchDemandSet( AUTOGENRES1, numRefinery * 2.9 )			
		ResearchDemandSet( AUTOGENRES2, numRefinery * 2.7 )
		ResearchDemandSet( AUTOGENRES3, numRefinery * 2.5 )					
	end		
	local numScaver = NumSquadrons( VGR_SCAVER )		
	if (numScaver > 1) then
		--fusion
		ResearchDemandSet( SCAVERAUTOGENRES1, numScaver * 4.9 )			
		ResearchDemandSet( SCAVERAUTOGENRES2, numScaver * 4.2 )
		ResearchDemandSet( SCAVERAUTOGENRES3, numScaver * 3.5 )					
	end		 			
	--Fighter	
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )	
	if (numFighter > 5) then
	  --health
		ResearchDemandSet( FIGHTERHEALTHUPGRADE1, numFighter * 1.7 )
		ResearchDemandSet( FIGHTERHEALTHUPGRADE2, numFighter * 1.6 )
		ResearchDemandSet( FIGHTERHEALTHUPGRADE3, numFighter * 1.5 )
		--speed
		ResearchDemandSet( FIGHTERSPEEDUPGRADE1, numFighter * 1.6 )
		ResearchDemandSet( FIGHTERSPEEDUPGRADE2, numFighter * 1.5 )
		ResearchDemandSet( FIGHTERSPEEDUPGRADE3, numFighter * 1.4 )		  
    --weapon damage
		ResearchDemandSet( FIGHTERWEAPONDAMAGEUPGRADE1, numFighter * 1.5 )
		ResearchDemandSet( FIGHTERWEAPONDAMAGEUPGRADE2, numFighter * 1.4 )
		ResearchDemandSet( FIGHTERWEAPONDAMAGEUPGRADE3, numFighter * 1.3 )			
		--weapon accuracy
		ResearchDemandSet( FIGHTERWEAPONACCURACYUPGRADE1, numFighter * 1.2 )
		ResearchDemandSet( FIGHTERWEAPONACCURACYUPGRADE2, numFighter * 1.1 )
		ResearchDemandSet( FIGHTERWEAPONACCURACYUPGRADE3, numFighter * 1 )					  
	end			
	--Corvette	
	local numCorvette = numActiveOfClass( s_playerIndex, eCorvette )	
	if (numCorvette > 4) then
	  --health
		ResearchDemandSet( CORVETTEHEALTHUPGRADE1, numCorvette * 1.8 )
		ResearchDemandSet( CORVETTEHEALTHUPGRADE2, numCorvette * 1.7 )
		ResearchDemandSet( CORVETTEHEALTHUPGRADE3, numCorvette * 1.6 )
		--speed
		ResearchDemandSet( CORVETTESPEEDUPGRADE1, numCorvette * 1.7 )
		ResearchDemandSet( CORVETTESPEEDUPGRADE2, numCorvette * 1.6 )
		ResearchDemandSet( CORVETTESPEEDUPGRADE3, numCorvette * 1.5 )		
    --weapon damage
		ResearchDemandSet( CORVETTEWEAPONDAMAGEUPGRADE1, numCorvette * 1.6 )
		ResearchDemandSet( CORVETTEWEAPONDAMAGEUPGRADE2, numCorvette * 1.5 )
		ResearchDemandSet( CORVETTEWEAPONDAMAGEUPGRADE3, numCorvette * 1.4 )	 		
		--weapon accuracy
		ResearchDemandSet( CORVETTEWEAPONACCURACYUPGRADE1, numCorvette * 1.3 )
		ResearchDemandSet( CORVETTEWEAPONACCURACYUPGRADE2, numCorvette * 1.2 )
		ResearchDemandSet( CORVETTEWEAPONACCURACYUPGRADE3, numCorvette * 1.1 )			  
	end			
	--Frigate	
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )	
	if (numFrigate > 3) then
	  --health
		ResearchDemandSet( FRIGATEHEALTHUPGRADE1, numFrigate * 1.9 )
		ResearchDemandSet( FRIGATEHEALTHUPGRADE2, numFrigate * 1.8 )
		ResearchDemandSet( FRIGATEHEALTHUPGRADE3, numFrigate * 1.7 )
		--speed
		ResearchDemandSet( FRIGATESPEEDUPGRADE1, numFrigate * 1.8 )
		ResearchDemandSet( FRIGATESPEEDUPGRADE2, numFrigate * 1.7 )
		ResearchDemandSet( FRIGATESPEEDUPGRADE3, numFrigate * 1.6 )		 
    --weapon damage
		ResearchDemandSet( FRIGATEWEAPONDAMAGEUPGRADE1, numFrigate * 1.7 )
		ResearchDemandSet( FRIGATEWEAPONDAMAGEUPGRADE2, numFrigate * 1.6 )
		ResearchDemandSet( FRIGATEWEAPONDAMAGEUPGRADE3, numFrigate * 1.5 ) 	
    --repair
		ResearchDemandSet( FRIGATEHEALTHREGUPGRADE1, numFrigate * 1.5 )
		ResearchDemandSet( FRIGATEHEALTHREGUPGRADE2, numFrigate * 1.4 )
		ResearchDemandSet( FRIGATEHEALTHREGUPGRADE3, numFrigate * 1.3 )				
		--weapon accuracy
		ResearchDemandSet( FRIGATEWEAPONACCURACYUPGRADE1, numFrigate * 1.4 )
		ResearchDemandSet( FRIGATEWEAPONACCURACYUPGRADE2, numFrigate * 1.3 )
		ResearchDemandSet( FRIGATEWEAPONACCURACYUPGRADE3, numFrigate * 1.2 )
	end		
	local numInfiltratorFrigate = NumSquadrons( VGR_INFILTRATORFRIGATE )
	if (numInfiltratorFrigate>1) then						
		ResearchDemandSet( INFILTRATORFRIGATECAPTUREUPGRADE1, numInfiltratorFrigate*1.25 )
		--ResearchDemandSet( INFILTRATORFRIGATECAPTUREUPGRADE2, numInfiltratorFrigate*1.25 )
		--ResearchDemandSet( INFILTRATORFRIGATECAPTUREUPGRADE3, numInfiltratorFrigate*1.25 )							
	end		
	--Platform	
	local numPlatform = numActiveOfClass( s_playerIndex, ePlatform )	
	if (numPlatform > 2) then		  
		--health
		ResearchDemandSet( PLATFORMHEALTHUPGRADE1, numPlatform * 1.9 )
		ResearchDemandSet( PLATFORMHEALTHUPGRADE2, numPlatform * 1.8 )
		ResearchDemandSet( PLATFORMHEALTHUPGRADE3, numPlatform * 1.7 )
		--weapon damage
		ResearchDemandSet( PLATFORMWEAPONDAMAGEUPGRADE1, numPlatform * 1.8 )
		ResearchDemandSet( PLATFORMWEAPONDAMAGEUPGRADE2, numPlatform * 1.7 )
		ResearchDemandSet( PLATFORMWEAPONDAMAGEUPGRADE3, numPlatform * 1.6 )
		--repair
		ResearchDemandSet( PLATFORMHEALTHREGUPGRADE1, numPlatform * 1.6 )
		ResearchDemandSet( PLATFORMHEALTHREGUPGRADE2, numPlatform * 1.5 )
		ResearchDemandSet( PLATFORMHEALTHREGUPGRADE3, numPlatform * 1.4 )		
		--weapon accuracy
		ResearchDemandSet( PLATFORMWEAPONACCURACYUPGRADE1, numPlatform * 1.5 )
		ResearchDemandSet( PLATFORMWEAPONACCURACYUPGRADE2, numPlatform * 1.4 )
		ResearchDemandSet( PLATFORMWEAPONACCURACYUPGRADE3, numPlatform * 1.3 )				  
	end			
end

function DoResearchTechDemand_Hiigaran()
  local researchcount = NumSubSystems(RESEARCH) + NumSubSystems(ADVANCEDRESEARCH) + NumSubSystems(ADVANCEDRESEARCH1)  
	local numShipyards = NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard)
	local numRU = GetRU()
  --economically sound
	local economicallysound = 0
  if numRU > 15000 then
    economicallysound = 100
  elseif numRU > 10000 then
    economicallysound = 75
  elseif numRU > 5000 then
    economicallysound = 50
  end  	 		
  --mine/missile
	if (Util_CheckResearch(CANBUILDMINEMS) ) then
	  ResearchDemandSet( CANBUILDMINEMS, 99 )
	end		
	if (Util_CheckResearch(CANBUILDMISSILEMS) ) then
	  ResearchDemandSet( CANBUILDMISSILEMS, 99 )
	end		
	--engineering division
	if NumSubSystems(ADVANCEDRESEARCH1) >= 1 then		  	  	
		if (s_militaryPop > 16 and numRU > 2000) then			
			if (numShipyards > 0 and Util_CheckResearch(VORTEXTECH)) then
				local demand = ShipDemandGet( HGN_VORTEX )
				if (demand > 0) then
					ResearchDemandSet( VORTEXTECH, demand + economicallysound )
				end
			end		
		end		
		if (s_militaryPop > 18 and numRU > 2500) then			
			if (numShipyards > 0 and Util_CheckResearch(BATTLESHIPTECH)) then
				local demand = ShipDemandGet( HGN_BATTLESHIP )
				if (demand > 0) then
					ResearchDemandSet( BATTLESHIPTECH, demand + economicallysound )
				end
			end		
		end			
		if (s_militaryPop > 14 and numRU > 1500) then
			if (Util_CheckResearch(ADVDESTROYERTECH) ) then			
				local demand = ShipDemandGet(HGN_ADVDESTROYER)
				if (demand > 0) then
					ResearchDemandSet( ADVDESTROYERTECH, demand )
				end
			end
		end		
		if (s_militaryPop > 14 and numRU > 1500) then
			if (Util_CheckResearch(ARTILLERYDESTROYERTECH) ) then			
				local demand = ShipDemandGet(HGN_ARTILLERYDESTROYER)
				if (demand > 0) then
					ResearchDemandSet( ARTILLERYDESTROYERTECH, demand )
				end
			end
		end		
		if (s_militaryPop > 15 and numRU > 1750) then
			if (Util_CheckResearch(CRUISERTECH) ) then			
				local demand = ShipDemandGet(HGN_CRUISERA)
				if (demand > 0) then
					ResearchDemandSet( CRUISERTECH, demand )
				end
			end
		end					
		if (Util_CheckResearch(ASSAULTGUNSHIPTECH)) then
			local demand = ShipDemandGet(HGN_CTH)
			if (demand > 0) then
				ResearchDemandSet( ASSAULTGUNSHIPTECH, demand)
			end
		end				
		if (Util_CheckResearch(ASSAULTGUNSHIPTECH1)) then
			local demand = ShipDemandGet(HGN_CTHION)
			if (demand > 0) then
				ResearchDemandSet( ASSAULTGUNSHIPTECH1, demand)
			end
		end				
		if (Util_CheckResearch(TULWARTECH)) then
			local demand = ShipDemandGet(HGN_TULWAR)
			if (demand > 0) then
				ResearchDemandSet( TULWARTECH, demand)
			end
		end			
		--if (Util_CheckResearch(SENTINEL)) then
			--local demand = ShipDemandGet(HGN_ARTILLERYSENTINEL)
			--if (demand > 0) then
				--ResearchDemandSet( SENTINEL, demand )
			--end
		--end		
	end	
	--science division
	if NumSubSystems(ADVANCEDRESEARCH) >= 1 then		
		if (s_militaryPop > 16 and numRU > 1750) then			
			if (numShipyards > 0 and Util_CheckResearch(BATTLECRUISERIONWEAPONS)) then
				local demand = ShipDemandGet( HGN_BATTLECRUISER )
				if (demand > 0) then
					ResearchDemandSet( BATTLECRUISERIONWEAPONS, demand + economicallysound )
				end
			end		
		end		
	  if (Util_CheckResearch(AVENGERTECH)) then
			local demand = ShipDemandGet(HGN_HFT)
			if (demand > 0) then
				ResearchDemandSet( AVENGERTECH, demand)
			end
		end	
		if (Util_CheckResearch(BOMBERHEAVYTECH)) then
			local demand = ShipDemandGet(HGN_ATTACKBOMBERHEAVY)
			if (demand > 0) then
				ResearchDemandSet( BOMBERHEAVYTECH, demand)
			end
		end	
		if (Util_CheckResearch(MINEGUNTECH)) then
			local demand = ShipDemandGet(HGN_MULTIGUNCORVETTE)
			if (demand > 0) then
				ResearchDemandSet( MINEGUNTECH, demand)
			end
		end	
		if (Util_CheckResearch(MARINETECH)) then
			local demand = ShipDemandGet(HGN_MARINEFRIGATE)
			if (demand > 0) then
				ResearchDemandSet( MARINETECH, demand)
			end
		end	
		if (Util_CheckResearch(LRMTECH)) then
			local demand = ShipDemandGet(HGN_LRMS)
			if (demand > 0) then
				ResearchDemandSet( LRMTECH, demand)
			end
		end
		if (Util_CheckResearch(IONFRIGATETECH)) then
			local demand = ShipDemandGet(HGN_IONCANNONFRIGATE)
			if (demand > 0) then
				ResearchDemandSet( IONFRIGATETECH, demand)
			end
		end	
		if (s_militaryPop > 15 and numRU > 750) then		
			if (Util_CheckResearch(DEFENSEFIELDFRIGATESHIELD) ) then
				local demand = ShipDemandGet(HGN_DEFENSEFIELDFRIGATE)
				if (demand > 0) then
					ResearchDemandSet( DEFENSEFIELDFRIGATESHIELD, demand )
				end
			end			
		end		
		--if (Util_CheckResearch(RTS)) then
			--local demand = ShipDemandGet(HGN_RTS)
			--if (demand > 0) then
				--ResearchDemandSet( RTS, demand )
			--end
		--end			
	  --if (Util_CheckResearch(PLATFORMMISSILEWEAPONS)) then
			--local demand = ShipDemandGet(HGN_MISSILETURRET)
			--if (demand > 0) then
				--ResearchDemandSet( PLATFORMMISSILEWEAPONS, demand )
			--end
		--end				   
		--if (Util_CheckResearch(PLATFORMIONWEAPONS1)) then
			--local demand = ShipDemandGet(HGN_IONTURRET)
			--if (demand > 0) then
				--ResearchDemandSet( PLATFORMIONWEAPONS1, demand )
			--end
		--end				
		if (Util_CheckResearch(ECMPROBE) ) then
			local demand = ShipDemandGet(HGN_ECMPROBE)
			if (demand>0) then
				ResearchDemandSet( ECMPROBE, demand )
			end
		end	
		if (s_militaryPop >= 14 and numRU > 1400) then
			if (Util_CheckResearch(MISSILEDESTROYERTECH) ) then			
				local demand = ShipDemandGet(HGN_MISSILEDESTROYER)
				if (demand > 0) then
					ResearchDemandSet( MISSILEDESTROYERTECH, demand )
				end
			end
		end			
		if (s_militaryPop > 14 and numRU > 1400) then
			if (Util_CheckResearch(IONDESTROYERTECH) ) then			
				local demand = ShipDemandGet(HGN_IONDESTROYER)
				if (demand > 0) then
					ResearchDemandSet( IONDESTROYERTECH, demand )
				end
			end
		end	
		if (s_militaryPop > 16 and numRU > 2000) then
			if (Util_CheckResearch(JUGGERNAUGHTTECH) ) then			
				local demand = ShipDemandGet(HGN_JUGGERNAUGHT)
				if (demand > 0) then
					ResearchDemandSet( JUGGERNAUGHTTECH, demand + economicallysound )
				end
			end
		end				
	end
	--reesearch division	
	if NumSubSystems(RESEARCH) >= 1 then
	  if (Util_CheckResearch(AUTOGENRES) ) then
			local demand = ShipDemandGet(HGN_RESOURCECONTROLLER)
			if (demand > 0) then
				ResearchDemandSet( AUTOGENRES, demand*2 )
			end
		end		
	  if (Util_CheckResearch(INTRUDERTECH)) then
			local demand = ShipDemandGet(HGN_RAILGUNFIGHTER)
			if (demand > 0) then
				ResearchDemandSet( INTRUDERTECH, demand)
			end
		end					
		if (Util_CheckResearch(BOMBERVETTETECH)) then
			local demand = ShipDemandGet(HGN_BOMBERVETTE)
			if (demand > 0) then
				ResearchDemandSet( BOMBERVETTETECH, demand)
			end
		end	
		if (Util_CheckResearch(TORPEDOTECH)) then
			local demand = ShipDemandGet(HGN_TORPEDOFRIGATE)
			if (demand > 0) then
				ResearchDemandSet( TORPEDOTECH, demand)
			end
		end
		--if (Util_CheckResearch(PLATFORMIONWEAPONS)) then
			--local demand = ShipDemandGet(HGN_PULSARTURRET)
			--if (demand > 0) then
				--ResearchDemandSet( PLATFORMIONWEAPONS, demand )
			--end
		--end
		if (s_militaryPop > 13 and numRU > 1300) then
			if (Util_CheckResearch(DESTROYERTECH) ) then			
				local demand = ShipDemandGet(HGN_DESTROYER)
				if (demand > 0) then
					ResearchDemandSet( DESTROYERTECH, demand )
				end
			end
		end		
		if (s_militaryPop > 13 and numRU > 1300) then
			if (Util_CheckResearch(SWEEPERDESTROYERTECH) ) then			
				local demand = ShipDemandGet(HGN_SWEEPERDESTROYER)
				if (demand > 0) then
					ResearchDemandSet( SWEEPERDESTROYERTECH, demand )
				end
			end
		end				
	end  	
	--research station
	if NumSquadrons( HGN_RESEARCHSTATION ) >= 1 then
	  if (Util_CheckResearch(LBOMBERTECH)) then
			local demand = ShipDemandGet(HGN_LBOMBER)
			if (demand > 0) then
				ResearchDemandSet( LBOMBERTECH, demand )
			end
		end		
		if (Util_CheckResearch(PULSARCORVETTETECH)) then
			local demand = ShipDemandGet(HGN_PULSARCORVETTE)
			if (demand > 0) then
				ResearchDemandSet( PULSARCORVETTETECH, demand)
			end
		end	
		--ability
		if (Util_CheckResearch(CAPITALRETIRE) ) then
	    ResearchDemandSet( CAPITALRETIRE, 10 )
	  end	  
		if (s_militaryPop > 6 and numRU > 1000) then
		  if (Util_CheckResearch(COMPUTERLINK) ) then
		    ResearchDemandSet( COMPUTERLINK, 0.9 )
		  end			  
		end	
		if (Util_CheckResearch(ATTACKBOMBERIMPROVEDBOMBS) ) then
			local numUnit = NumSquadrons( HGN_ATTACKBOMBER )
			if (numUnit > 2) then
				ResearchDemandSet( ATTACKBOMBERIMPROVEDBOMBS, numUnit )
			end
		end		
		if (Util_CheckResearch(MULTIGUNAUTOMINE) ) then
			local numUnit = NumSquadrons( HGN_MULTIGUNCORVETTE )
			if (numUnit > 3) then
				ResearchDemandSet( MULTIGUNAUTOMINE, numUnit * 5 )
			end
		end	
		if (Util_CheckResearch(IMPROVEDSHIELDASSAULTGUNSHIPICON) ) then
			local numUnit = NumSquadrons( HGN_CTH ) + NumSquadrons( HGN_CTHION )
			if (numUnit > 3) then
				ResearchDemandSet( IMPROVEDSHIELDASSAULTGUNSHIPICON, numUnit * 4 )
			end
		end		
		if (Util_CheckResearch(ASSAULTGUNSHIPLINKWEAPONICON) ) then
			local numUnit = NumSquadrons( HGN_CTH ) + NumSquadrons( HGN_CTHION )
			if (numUnit > 3) then
				ResearchDemandSet( ASSAULTGUNSHIPLINKWEAPONICON, numUnit * 5 )
			end
		end		
		if (Util_CheckResearch(IMPROVEDTORPEDO) ) then
			local numUnit = NumSquadrons( HGN_TORPEDOFRIGATE )
			if (numUnit > 2) then
				ResearchDemandSet( IMPROVEDTORPEDO, numUnit * 5 )
			end
		end	
		if (Util_CheckResearch(IMPROVEDTORPEDOLRM) ) then
			local numUnit = NumSquadrons( HGN_LRMS )
			if (numUnit > 2) then
				ResearchDemandSet( IMPROVEDTORPEDOLRM, numUnit * 5 )
			end
		end	
		if (Util_CheckResearch(IONCANNONFRIGATESHIELDPENETRATION) ) then
			local numUnit = NumSquadrons( HGN_IONCANNONFRIGATE )
			if (numUnit > 2) then
				ResearchDemandSet( IONCANNONFRIGATESHIELDPENETRATION, numUnit * 5 )
			end
		end	
		if (Util_CheckResearch(TULWAREMPABILITY) ) then
			local numUnit = NumSquadrons( HGN_TULWAR )
			if (numUnit > 3) then
				ResearchDemandSet( TULWAREMPABILITY, numUnit )
			end
		end	
		if (Util_CheckResearch(GUNTURRETANTIMISSILESYSTEM) ) then
			local numUnit = NumSquadrons( HGN_GUNTURRET )
			if (numUnit > 3) then
				ResearchDemandSet( GUNTURRETANTIMISSILESYSTEM, numUnit )
			end
		end		
		if (Util_CheckResearch(FASTTRACKING) ) then
			local numUnit = NumSquadrons( HGN_RTS )
			if (numUnit > 2) then
				ResearchDemandSet( FASTTRACKING, numUnit * 5 )
			end
		end		
		if (Util_CheckResearch(IMPROVEDTORPEDODESTROYERICON) ) then
			local numUnit = NumSquadrons( HGN_DESTROYER ) + NumSquadrons( HGN_MISSILEDESTROYER ) + NumSquadrons( HGN_IONDESTROYER ) + NumSquadrons( HGN_ADVDESTROYER )
			if (numUnit > 2) then
				ResearchDemandSet( IMPROVEDTORPEDODESTROYERICON, numUnit * 10 )
			end
		end		
		if (Util_CheckResearch(IMPROVEDTORPEDOCRUISERAICON) ) then
			local numUnit = NumSquadrons( HGN_CRUISERA )
			if (numUnit >= 1) then
				ResearchDemandSet( IMPROVEDTORPEDOCRUISERAICON, numUnit * 15 )
			end
		end		
		if (Util_CheckResearch(IMPROVEDTORPEDOCRUISERBICON) ) then
			local numUnit = NumSquadrons( HGN_CRUISERB )
			if (numUnit >= 1) then
				ResearchDemandSet( IMPROVEDTORPEDOCRUISERBICON, numUnit * 15 )
			end
		end					
		if (Util_CheckResearch(IMPROVEDSHIELDCRUISERICON) ) then
			local numUnit = NumSquadrons( HGN_CRUISERA ) + NumSquadrons( HGN_CRUISERB )
			if (numUnit >= 2) then
				ResearchDemandSet( IMPROVEDSHIELDCRUISERICON, numUnit * 15 )
			end
		end							
		if (Util_CheckResearch(IMPROVEDTORPEDOMOTHERSHIP) ) then
			local numUnit = NumSquadrons( HGN_MOTHERSHIP )
			if (numUnit > 0) then
				ResearchDemandSet( IMPROVEDTORPEDOMOTHERSHIP, numUnit * 50 )
			end
		end			
	end	
end

function DoUpgradeDemand_Hiigaran()		
	local numRU = GetRU()
	--Economic status
	local economicallysound = 0
	if numRU > 15000 then
		economicallysound = 100
	elseif numRU > 10000 then
		economicallysound = 75
	elseif numRU > 5000 then
		economicallysound = 50
	end  	 		
	--Capital		
	local numCapital = numActiveOfClass( s_playerIndex, eCapital )	
	if (numCapital > 1) then
		--health
		ResearchDemandSet( ARMEDCAPITALHEALTHUPGRADE1, numCapital * 2 )
		ResearchDemandSet( ARMEDCAPITALHEALTHUPGRADE2, numCapital * 1.9 )
		ResearchDemandSet( ARMEDCAPITALHEALTHUPGRADE3, numCapital * 1.8 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHUPGRADE1, numCapital * 2 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHUPGRADE2, numCapital * 1.9 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHUPGRADE3, numCapital * 1.8 )
		ResearchDemandSet( CAPITALHEALTHUPGRADE1, numCapital * 2 )
		ResearchDemandSet( CAPITALHEALTHUPGRADE2, numCapital * 1.9 )
		ResearchDemandSet( CAPITALHEALTHUPGRADE3, numCapital * 1.8 )
		--speed
		ResearchDemandSet( ARMEDCAPITALSPEEDUPGRADE1, numCapital * 1.9)
		ResearchDemandSet( ARMEDCAPITALSPEEDUPGRADE2, numCapital * 1.8)
		ResearchDemandSet( ARMEDCAPITALSPEEDUPGRADE3, numCapital * 1.7)
		ResearchDemandSet( SUPERARMEDCAPITALSPEEDUPGRADE1, numCapital * 1.9)
		ResearchDemandSet( SUPERARMEDCAPITALSPEEDUPGRADE2, numCapital * 1.8)
		ResearchDemandSet( SUPERARMEDCAPITALSPEEDUPGRADE3, numCapital * 1.7)
		ResearchDemandSet( CAPITALSPEEDUPGRADE1, numCapital * 1.9 )
		ResearchDemandSet( CAPITALSPEEDUPGRADE2, numCapital * 1.8 )
		ResearchDemandSet( CAPITALSPEEDUPGRADE3, numCapital * 1.7 )
		--build
		ResearchDemandSet( CAPITALBUILDUPGRADE1, numCapital * 1.8 )
		ResearchDemandSet( CAPITALBUILDUPGRADE2, numCapital * 1.7 )
		ResearchDemandSet( CAPITALBUILDUPGRADE3, numCapital * 1.6 )			
		--weapon damage
		ResearchDemandSet( ARMEDCAPITALWEAPONDAMAGEUPGRADE1, numCapital * 1.7)
		ResearchDemandSet( ARMEDCAPITALWEAPONDAMAGEUPGRADE2, numCapital * 1.6)
		ResearchDemandSet( ARMEDCAPITALWEAPONDAMAGEUPGRADE3, numCapital * 1.5)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONDAMAGEUPGRADE1, numCapital * 1.7)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONDAMAGEUPGRADE2, numCapital * 1.6)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONDAMAGEUPGRADE3, numCapital * 1.5)
		ResearchDemandSet( CAPITALWEAPONDAMAGEUPGRADE1, numCapital * 1.7 )
		ResearchDemandSet( CAPITALWEAPONDAMAGEUPGRADE2, numCapital * 1.6 )
		ResearchDemandSet( CAPITALWEAPONDAMAGEUPGRADE3, numCapital * 1.5 )
		--drive
		ResearchDemandSet( ARMEDCAPITALDRIVEUPGRADE1, numCapital * 1.6)
		ResearchDemandSet( ARMEDCAPITALDRIVEUPGRADE2, numCapital * 1.5)
		ResearchDemandSet( ARMEDCAPITALDRIVEUPGRADE3, numCapital * 1.4)
		ResearchDemandSet( SUPERARMEDCAPITALDRIVEUPGRADE1, numCapital * 1.6)
		ResearchDemandSet( SUPERARMEDCAPITALDRIVEUPGRADE2, numCapital * 1.5)
		ResearchDemandSet( SUPERARMEDCAPITALDRIVEUPGRADE3, numCapital * 1.4)
		ResearchDemandSet( CAPITALDRIVEUPGRADE1, numCapital * 1.6 )
		ResearchDemandSet( CAPITALDRIVEUPGRADE2, numCapital * 1.5 )
		ResearchDemandSet( CAPITALDRIVEUPGRADE3, numCapital * 1.4 )
		--repair
		ResearchDemandSet( ARMEDCAPITALHEALTHREGUPGRADE1, numCapital * 1.5 )
		ResearchDemandSet( ARMEDCAPITALHEALTHREGUPGRADE2, numCapital * 1.4 )
		ResearchDemandSet( ARMEDCAPITALHEALTHREGUPGRADE3, numCapital * 1.3 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHREGUPGRADE1, numCapital * 1.5 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHREGUPGRADE2, numCapital * 1.4 )
		ResearchDemandSet( SUPERARMEDCAPITALHEALTHREGUPGRADE3, numCapital * 1.3 )
		ResearchDemandSet( CAPITALHEALTHREGUPGRADE1, numCapital * 1.5 )
		ResearchDemandSet( CAPITALHEALTHREGUPGRADE2, numCapital * 1.4 )
		ResearchDemandSet( CAPITALHEALTHREGUPGRADE3, numCapital * 1.3 )
		--weapon accuracy
		ResearchDemandSet( ARMEDCAPITALWEAPONACCURACYUPGRADE1, numCapital * 1.1)
		ResearchDemandSet( ARMEDCAPITALWEAPONACCURACYUPGRADE2, numCapital * 1)
		ResearchDemandSet( ARMEDCAPITALWEAPONACCURACYUPGRADE3, numCapital * 0.9)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONACCURACYUPGRADE1, numCapital * 1.1)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONACCURACYUPGRADE2, numCapital * 1)
		ResearchDemandSet( SUPERARMEDCAPITALWEAPONACCURACYUPGRADE3, numCapital * 0.9)
		ResearchDemandSet( CAPITALWEAPONACCURACYUPGRADE1, numCapital * 1.1 )
		ResearchDemandSet( CAPITALWEAPONACCURACYUPGRADE2, numCapital * 1 )
		ResearchDemandSet( CAPITALWEAPONACCURACYUPGRADE3, numCapital * 0.9 )
		--docking
		--ResearchDemandSet( CAPITALDOCKINGUPGRADE1, numCapital * 1.3 )
		--ResearchDemandSet( CAPITALDOCKINGUPGRADE2, numCapital * 1.2 )
		--ResearchDemandSet( CAPITALDOCKINGUPGRADE3, numCapital * 1.1 )		
	end				  
	local numWeapons = NumSquadrons( HGN_BATTLECRUISER ) + NumSquadrons( HGN_BATTLESHIP )
	if (numWeapons > 1) then				
		ResearchDemandSet( WEAPONSPEEDUPGRADE1, numWeapons * 1.3 )
		ResearchDemandSet( WEAPONSPEEDUPGRADE2, numWeapons * 1.2 )
		ResearchDemandSet( WEAPONSPEEDUPGRADE3, numWeapons * 1.1 )
		ResearchDemandSet( WEAPONIMPACTUPGRADE1, numWeapons * 1.2 )
		ResearchDemandSet( WEAPONIMPACTUPGRADE2, numWeapons * 1.1 )
		ResearchDemandSet( WEAPONIMPACTUPGRADE3, numWeapons * 1 )
	end				
	--Mothership				
	ResearchDemandSet( MOTHERSHIPDEFENSEFIELDTIMEUPGRADE1, 20 )
	ResearchDemandSet( MOTHERSHIPDEFENSEFIELDTIMEUPGRADE2, 15 )
	if numRU > 4000 then
		ResearchDemandSet( MOTHERSHIPDEFENSEFIELDTIMEUPGRADE3, 10 )	   
	end       
	ResearchDemandSet( MOTHERSHIPSHIELDREGENERATIONRATEUPGRADE1, 20 )
	ResearchDemandSet( MOTHERSHIPSHIELDREGENERATIONRATEUPGRADE2, 15 )
	if numRU > 4000 then
		ResearchDemandSet( MOTHERSHIPSHIELDREGENERATIONRATEUPGRADE3, 10 )	
	end   
	if numRU > 3000 then  
		ResearchDemandSet( HIC1, 50 + economicallysound )
	end  
	if numRU > 4000 then
		ResearchDemandSet( HIC2, 40 + economicallysound )
	end
	if numRU > 5000 then  
		ResearchDemandSet( HIC3, 30 + economicallysound )	
	end 
	--Juggernaut    
	local numJuggernaughts = NumSquadrons( HGN_JUGGERNAUGHT )
	if (numJuggernaughts > 0) then					
		ResearchDemandSet( DETONATIONPOWER, (numJuggernaughts*7) + economicallysound )				
		ResearchDemandSet( DETONATIONRANGE, (numJuggernaughts*5.9) + economicallysound )					
		if numRU > 4000 then
			ResearchDemandSet( DETONATIONPOWER1, (numJuggernaughts*5.5) + economicallysound )	
			ResearchDemandSet( DETONATIONRANGE1, (numJuggernaughts*5.4) + economicallysound )			  		  
		end
		if numRU > 8000 then
			ResearchDemandSet( DETONATIONPOWER2, (numJuggernaughts*5) + economicallysound )	
			ResearchDemandSet( DETONATIONRANGE2, (numJuggernaughts*4.9) + economicallysound )				  
		end
	end	      
	--Fleet    
	ResearchDemandSet( SENSORSUPGRADE1, 2.75 + economicallysound )
	ResearchDemandSet( SENSORSUPGRADE2, 2.65 + economicallysound )
	ResearchDemandSet( SENSORSUPGRADE3, 2.45 )
	ResearchDemandSet( HYPERSPACECOSTUPGRADE1, 7 + economicallysound )
	ResearchDemandSet( HYPERSPACECOSTUPGRADE2, 6 + economicallysound )
	ResearchDemandSet( HYPERSPACECOSTUPGRADE3, 5 + economicallysound )  
	ResearchDemandSet( HYPERSPACEDAMAGEUPGRADE1, 6 + economicallysound )
	ResearchDemandSet( HYPERSPACEDAMAGEUPGRADE2, 5 + economicallysound )
	ResearchDemandSet( HYPERSPACEDAMAGEUPGRADE3, 4 )  
	ResearchDemandSet( HYPERSPACEREGENUPGRADE1, 5 + economicallysound )
	ResearchDemandSet( HYPERSPACEREGENUPGRADE2, 4 )
	ResearchDemandSet( HYPERSPACEREGENUPGRADE3, 3 )  
	ResearchDemandSet( HYPERSPACETIMEUPGRADE1, 4 + economicallysound )
	ResearchDemandSet( HYPERSPACETIMEUPGRADE2, 3 )
	ResearchDemandSet( HYPERSPACETIMEUPGRADE3, 2 ) 
	ResearchDemandSet( COMPUTERLINK1, 2.69 + economicallysound )
	ResearchDemandSet( COMPUTERLINK2, 2.43 + economicallysound )
	ResearchDemandSet( COMPUTERLINK3, 2.17 )
	ResearchDemandSet( MAINTENANCE1, 30 + economicallysound )
	ResearchDemandSet( MAINTENANCE2, 25 + economicallysound )
	ResearchDemandSet( MAINTENANCE3, 20 )
	--Utility		
	local numCollectors = NumSquadrons( HGN_RESOURCECOLLECTOR )
	if (numCollectors > 6) then			
    --health
		ResearchDemandSet( UTILITYHEALTHUPGRADE1, numCollectors * 2 )
		ResearchDemandSet( UTILITYHEALTHUPGRADE2, numCollectors * 1.9 )
		ResearchDemandSet( UTILITYHEALTHUPGRADE3, numCollectors * 1.8 )		  	
		--speed
		ResearchDemandSet( UTILITYSPEEDUPGRADE1, numCollectors * 1.9 )
		ResearchDemandSet( UTILITYSPEEDUPGRADE2, numCollectors * 1.8 )
		ResearchDemandSet( UTILITYSPEEDUPGRADE3, numCollectors * 1.7 )		
		--resource
		ResearchDemandSet( RESOURCECOLLECTORRUCAPUPGRADE1, numCollectors*4.25 )
		ResearchDemandSet( RESOURCECOLLECTORRUCAPUPGRADE2, numCollectors*3.15 )
		ResearchDemandSet( RESOURCECOLLECTORRUCAPUPGRADE3, numCollectors*3.05 )
		ResearchDemandSet( RESOURCECOLLECTORRURATEUPGRADE1, numCollectors*4.55 )
		ResearchDemandSet( RESOURCECOLLECTORRURATEUPGRADE2, numCollectors*3.25 )
		ResearchDemandSet( RESOURCECOLLECTORRURATEUPGRADE3, numCollectors*3.1 )
		ResearchDemandSet( RESOURCECOLLECTORRUDROPOFFUPGRADE1, numCollectors*4.15 )
		ResearchDemandSet( RESOURCECOLLECTORRUDROPOFFUPGRADE2, numCollectors*3.05 )
		ResearchDemandSet( RESOURCECOLLECTORRUDROPOFFUPGRADE3, numCollectors*2.025 )
		ResearchDemandSet( RESOURCECOLLECTOREXTRACTION1, numCollectors*4.55 )
		ResearchDemandSet( RESOURCECOLLECTOREXTRACTION2, numCollectors*3.25 )
		ResearchDemandSet( RESOURCECOLLECTOREXTRACTION3, numCollectors*3.1 )
	end
	local numMineContainers = NumSquadrons( HGN_MINECONTAINER )
	if (numMineContainers > 2) then		
		--resource	
		ResearchDemandSet( MINECONTAINERLOAD1, numMineContainers*3.5 )
		ResearchDemandSet( MINECONTAINERLOAD2, numMineContainers*3.3 )
		ResearchDemandSet( MINECONTAINERLOAD3, numMineContainers*3.1 )
		ResearchDemandSet( MINECONTAINERRURATE1, numMineContainers*3.75 )
		ResearchDemandSet( MINECONTAINERRURATE2, numMineContainers*3 )
		ResearchDemandSet( MINECONTAINERRURATE3, numMineContainers*2.5 )
		ResearchDemandSet( MINECONTAINERDROPOFF1, numMineContainers*3.15 )
		ResearchDemandSet( MINECONTAINERDROPOFF2, numMineContainers*2.9 )
		ResearchDemandSet( MINECONTAINERDROPOFF3, numMineContainers*1.4 )
	end		
	local numRefinery = NumSquadrons( HGN_RESOURCECONTROLLER )		
	if (numRefinery > 2) then
		--fusion
		ResearchDemandSet( AUTOGENRES1, numRefinery*2.9 )			
		ResearchDemandSet( AUTOGENRES2, numRefinery*2.7 )
		ResearchDemandSet( AUTOGENRES3, numRefinery*2.5 )					
	end		
	local numScaver = NumSquadrons( HGN_SCAVER )		
	if (numScaver > 1) then
		--fusion
		ResearchDemandSet( SCAVERAUTOGENRES1, numScaver*4.9 )			
		ResearchDemandSet( SCAVERAUTOGENRES2, numScaver*4.2 )
		ResearchDemandSet( SCAVERAUTOGENRES3, numScaver*3.5 )					
	end		
	ResearchDemandSet( CREWCELLCARGO1, 5.75 + economicallysound )
	ResearchDemandSet( CREWCELLCARGO2, 5.65 + economicallysound )
	ResearchDemandSet( CREWCELLCARGO3, 5.45 )		
	--Fighter	
	local numFighter = numActiveOfClass( s_playerIndex, eFighter )	
	if (numFighter > 5) then
		--health
		ResearchDemandSet( FIGHTERHEALTHUPGRADE1, numFighter * 1.7 )
		ResearchDemandSet( FIGHTERHEALTHUPGRADE2, numFighter * 1.6 )
		ResearchDemandSet( FIGHTERHEALTHUPGRADE3, numFighter * 1.5 )
		--speed
		ResearchDemandSet( FIGHTERSPEEDUPGRADE1, numFighter * 1.6 )
		ResearchDemandSet( FIGHTERSPEEDUPGRADE2, numFighter * 1.5 )
		ResearchDemandSet( FIGHTERSPEEDUPGRADE3, numFighter * 1.4 )		  
    --weapon damage
		ResearchDemandSet( FIGHTERWEAPONDAMAGEUPGRADE1, numFighter * 1.5 )
		ResearchDemandSet( FIGHTERWEAPONDAMAGEUPGRADE2, numFighter * 1.4 )
		ResearchDemandSet( FIGHTERWEAPONDAMAGEUPGRADE3, numFighter * 1.3 )			
		--weapon accuracy
		ResearchDemandSet( FIGHTERWEAPONACCURACYUPGRADE1, numFighter * 1.2 )
		ResearchDemandSet( FIGHTERWEAPONACCURACYUPGRADE2, numFighter * 1.1 )
		ResearchDemandSet( FIGHTERWEAPONACCURACYUPGRADE3, numFighter * 1 )		  
	end		
	--Corvette	
	local numCorvette = numActiveOfClass( s_playerIndex, eCorvette )	
	if (numCorvette > 4) then
		--health
		ResearchDemandSet( CORVETTEHEALTHUPGRADE1, numCorvette * 1.8 )
		ResearchDemandSet( CORVETTEHEALTHUPGRADE2, numCorvette * 1.7 )
		ResearchDemandSet( CORVETTEHEALTHUPGRADE3, numCorvette * 1.6 )
		--speed
		ResearchDemandSet( CORVETTESPEEDUPGRADE1, numCorvette * 1.7 )
		ResearchDemandSet( CORVETTESPEEDUPGRADE2, numCorvette * 1.6 )
		ResearchDemandSet( CORVETTESPEEDUPGRADE3, numCorvette * 1.5 )		
    --weapon damage
		ResearchDemandSet( CORVETTEWEAPONDAMAGEUPGRADE1, numCorvette * 1.6 )
		ResearchDemandSet( CORVETTEWEAPONDAMAGEUPGRADE2, numCorvette * 1.5 )
		ResearchDemandSet( CORVETTEWEAPONDAMAGEUPGRADE3, numCorvette * 1.4 )	 		
		--weapon accuracy
		ResearchDemandSet( CORVETTEWEAPONACCURACYUPGRADE1, numCorvette * 1.3 )
		ResearchDemandSet( CORVETTEWEAPONACCURACYUPGRADE2, numCorvette * 1.2 )
		ResearchDemandSet( CORVETTEWEAPONACCURACYUPGRADE3, numCorvette * 1.1 )
	end	
	--Frigate	
	local numFrigate = numActiveOfClass( s_playerIndex, eFrigate )	
	if (numFrigate > 3) then
		--health
		ResearchDemandSet( FRIGATEHEALTHUPGRADE1, numFrigate * 1.9 )
		ResearchDemandSet( FRIGATEHEALTHUPGRADE2, numFrigate * 1.8 )
		ResearchDemandSet( FRIGATEHEALTHUPGRADE3, numFrigate * 1.7 )
		--speed
		ResearchDemandSet( FRIGATESPEEDUPGRADE1, numFrigate * 1.8 )
		ResearchDemandSet( FRIGATESPEEDUPGRADE2, numFrigate * 1.7 )
		ResearchDemandSet( FRIGATESPEEDUPGRADE3, numFrigate * 1.6 )		 
    --weapon damage
		ResearchDemandSet( FRIGATEWEAPONDAMAGEUPGRADE1, numFrigate * 1.7 )
		ResearchDemandSet( FRIGATEWEAPONDAMAGEUPGRADE2, numFrigate * 1.6 )
		ResearchDemandSet( FRIGATEWEAPONDAMAGEUPGRADE3, numFrigate * 1.5 ) 	
    --repair
		ResearchDemandSet( FRIGATEHEALTHREGUPGRADE1, numFrigate * 1.5 )
		ResearchDemandSet( FRIGATEHEALTHREGUPGRADE2, numFrigate * 1.4 )
		ResearchDemandSet( FRIGATEHEALTHREGUPGRADE3, numFrigate * 1.3 )				
		--weapon accuracy
		ResearchDemandSet( FRIGATEWEAPONACCURACYUPGRADE1, numFrigate * 1.4 )
		ResearchDemandSet( FRIGATEWEAPONACCURACYUPGRADE2, numFrigate * 1.3 )
		ResearchDemandSet( FRIGATEWEAPONACCURACYUPGRADE3, numFrigate * 1.2 )
	end		
	local numDFFrigate = NumSquadrons( HGN_DEFENSEFIELDFRIGATE )
	if (numDFFrigate>1) then						
		--ResearchDemandSet( MAXSHIELDUPGRADE1, numDFFrigate*1.6 )			
		ResearchDemandSet( DEFENSEFIELDTIMEUPGRADE1, numDFFrigate*1.5 )
		ResearchDemandSet( SHIELDREGENERATIONRATEUPGRADE1, numDFFrigate*1.4 )					
	end		
	local numMarineFrigate = NumSquadrons( HGN_MARINEFRIGATE )
	if (numMarineFrigate>1) then						
		ResearchDemandSet( MARINEFRIGATECAPTUREUPGRADE1, numMarineFrigate*1.25 )
		--ResearchDemandSet( MARINEFRIGATECAPTUREUPGRADE2, numMarineFrigate*1.25 )
		--ResearchDemandSet( MARINEFRIGATECAPTUREUPGRADE3, numMarineFrigate*1.25 )							
	end		
	--Platform	
	local numPlatform = numActiveOfClass( s_playerIndex, ePlatform )	
	if (numPlatform > 2) then		  
		--health
		ResearchDemandSet( PLATFORMHEALTHUPGRADE1, numPlatform * 1.9 )
		ResearchDemandSet( PLATFORMHEALTHUPGRADE2, numPlatform * 1.8 )
		ResearchDemandSet( PLATFORMHEALTHUPGRADE3, numPlatform * 1.7 )
		--weapon damage
		ResearchDemandSet( PLATFORMWEAPONDAMAGEUPGRADE1, numPlatform * 1.8 )
		ResearchDemandSet( PLATFORMWEAPONDAMAGEUPGRADE2, numPlatform * 1.7 )
		ResearchDemandSet( PLATFORMWEAPONDAMAGEUPGRADE3, numPlatform * 1.6 )
		--repair
		ResearchDemandSet( PLATFORMHEALTHREGUPGRADE1, numPlatform * 1.6 )
		ResearchDemandSet( PLATFORMHEALTHREGUPGRADE2, numPlatform * 1.5 )
		ResearchDemandSet( PLATFORMHEALTHREGUPGRADE3, numPlatform * 1.4 )		
		--weapon accuracy
		ResearchDemandSet( PLATFORMWEAPONACCURACYUPGRADE1, numPlatform * 1.5 )
		ResearchDemandSet( PLATFORMWEAPONACCURACYUPGRADE2, numPlatform * 1.4 )
		ResearchDemandSet( PLATFORMWEAPONACCURACYUPGRADE3, numPlatform * 1.3 )		
	end		
end	        		

function inc_research_demand( researchtype, val)
	local typeis = typeid(researchtype);		
	if (typeis == LT_TABLE) then
		for i, v in researchtype do
			inc_research_demand(v, val);
		end
	else
		if (Util_CheckResearch(researchtype)) then
			ResearchDemandAdd( researchtype, val )
		end
	end
end

function inc_upgrade_demand( upgradetype, val )
	inc_research_demand( upgradetype, val )
end


