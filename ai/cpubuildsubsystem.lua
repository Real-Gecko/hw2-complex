function CpuBuildSS_Init()
	if (s_race == Race_Hiigaran) then
		CpuBuildSS_DefaultSubSystemDemandRules = DoSubSystemDemand_Hiigaran
	else
		CpuBuildSS_DefaultSubSystemDemandRules = DoSubSystemDemand_Vaygr
	end	
	sg_retireCountCheck = 0	
end

function CpuBuildSS_DoBuildSubSystem()	
	SubSystemDemandClear()	
	if (Override_SubSystemDemand) then
		Override_SubSystemDemand()
	else
		CpuBuildSS_DefaultSubSystemDemandRules()
	end		
	local subSystemId = FindHighDemandSubSystem()		
	sg_subSystemOverflowDemand = 0	
	if (s_race == Race_Vaygr) then
		CpuBuildSS_RetireVaygrProductionSubSystems()
	end	
	if (subSystemId > 0) then				
		BuildSubSystem( subSystemId )
		return 1
	end
	return 0	
end

function DoSubSystemDemand_Hiigaran()	
	local rank = (NumSubSystems(ISLIEUTENANTCORE) + NumSubSystems(ISCOMMANDERCORE) + NumSubSystems(ISCAPTAINCORE) + NumSubSystems(ISCOMMODORECORE) + NumSubSystems(ISADMIRALCORE) + NumSubSystems(ISFLEETADMIRALCORE))
	local numRUs = GetRU() 
	--production subs
	SubSystemDemandSet(FIGHTERPRODUCTION, 10 )
	SubSystemDemandSet(CORVETTEPRODUCTION, 8 )
	SubSystemDemandSet(FRIGATEPRODUCTION, 6 )
	SubSystemDemandSet(CAPSHIPPRODUCTION, 4 )		
	SubSystemDemandSet(ADVCAPSHIPPRODUCTION, 3 )			
	--RU supply
	if rank >= 1 then
		if numRUs > 5000 then
			SubSystemDemandSet(SUPPLY1, 1.1 )
			SubSystemDemandSet(SUPPLYMS, 1.1 )
			SubSystemDemandSet(SUPPLYMS1, 1.1 )
			SubSystemDemandSet(SUPPLYMS2, 1.1 )
			SubSystemDemandSet(SUPPLYMS3, 1.1 )
			SubSystemDemandSet(SUPPLY, 1.1 )
		end
		if numRUs > 8000 then
			SubSystemDemandSet(SUPPLY2, 1 )
		end
		if numRUs > 11000 then
			SubSystemDemandSet(SUPPLY3, 0.9 )
		end
		if numRUs > 14000 then
			SubSystemDemandSet(SUPPLY4, 0.8 )
		end
		if numRUs > 17000 then
			SubSystemDemandSet(SUPPLY5, 0.7 )
		end	  
	end
	--power
	if rank >= 1 then			
		if numRUs > 6500 then
			SubSystemDemandSet(HGN_POWER_MS, 1 )
			SubSystemDemandSet(HGN_POWER_MS1, 1 )
			SubSystemDemandSet(HGN_POWER_BSY, 1 )
			SubSystemDemandSet(HGN_POWER_BSY1, 1 )
			SubSystemDemandSet(HGN_POWER_BSY2, 1 )
			SubSystemDemandSet(HGN_POWER_BSY3, 1 )
		end	
	end	
	--research station  
  if NumSquadrons( HGN_RESEARCHSTATION ) >= 1 then	  
	  if numRUs > 1000 then
		  SubSystemDemandSet(RESEARCH, 2 )
		end
    if numRUs > 2000 then
			SubSystemDemandSet(ADVANCEDRESEARCH, 1.75 )	
		end
		if numRUs > 4000 then
			SubSystemDemandSet(ADVANCEDRESEARCH1, 1.5 ) 
		end		  
	end    
	--crew station
	if NumSquadrons( HGN_CREWSTATION ) >= 1 then
		if numRUs > 500 then
			SubSystemDemandSet(ISLIEUTENANTCORE, 3 )
			SubSystemDemandSet(PILOTMODULE, 2 )
		end
		if numRUs > 700 then
			SubSystemDemandSet(ISCOMMANDERCORE, 2.9 ) 
			SubSystemDemandSet(PILOTMODULE1, 1.9 )
			SubSystemDemandSet(OFFICERMODULE, 1.9 )
		end
		if numRUs > 900 then
			SubSystemDemandSet(ISCAPTAINCORE, 2.8 )
			SubSystemDemandSet(PILOTMODULE2, 1.8 )
			SubSystemDemandSet(OFFICERMODULE1, 1.8 )
		end
		if numRUs > 1100 then
			SubSystemDemandSet(ISCOMMODORECORE, 2.7 )	  
			SubSystemDemandSet(PILOTMODULE3, 1.7 )
			SubSystemDemandSet(OFFICERMODULE2, 1.7 )
		end
		if numRUs > 1300 then
			SubSystemDemandSet(ISADMIRALCORE, 2.6 )   
			SubSystemDemandSet(PILOTMODULE4, 1.6 )
			SubSystemDemandSet(OFFICERMODULE3, 1.6 )
		end
		if numRUs > 1500 then
			SubSystemDemandSet(ISFLEETADMIRALCORE, 2.5 ) 
			SubSystemDemandSet(PILOTMODULE5, 1.5 )
			SubSystemDemandSet(OFFICERMODULE4, 1.5 )		
		end		
	end
	--power station
  if NumSquadrons( HGN_POWER ) >= 1 then      
    if numRUs > 1000 then
	    SubSystemDemandSet(HGN_POWER_M1, 1.4 )
			SubSystemDemandSet(DEFENSEFIELDPS, 1.4 )
	  end
		if numRUs > 2000 then
	    SubSystemDemandSet(HGN_POWER_M2, 1.3 ) 
	  end
		if numRUs > 3000 then
	    SubSystemDemandSet(HGN_POWER_M3, 1.2 ) 
	  end
		if numRUs > 4000 then
	    SubSystemDemandSet(HGN_POWER_M4, 1.1 ) 
	  end
		if numRUs > 5000 then
	    SubSystemDemandSet(HGN_POWER_M5, 1) 
	  end
		if numRUs > 6000 then
	    SubSystemDemandSet(HGN_POWER_M6, 0.9 ) 
	  end
		if numRUs > 7000 then
	    SubSystemDemandSet(HGN_POWER_M7, 0.8 ) 
	  end
		if numRUs > 8000 then
	    SubSystemDemandSet(HGN_POWER_M8, 0.7 ) 
	  end
		if numRUs > 9000 then
	    SubSystemDemandSet(HGN_POWER_M9, 0.6 ) 
	  end
		if numRUs > 10000 then
	    SubSystemDemandSet(HGN_POWER_M0, 0.5 ) 	  
    end
		if numRUs > 12000 then
	    SubSystemDemandSet(ADVHOLESCRUMBLER, 0.4 ) 				
	  end	  	  
	end		
	--orbital station
	if NumSquadrons(HGN_BATTLESTATION) >= 1 then
	  if numRUs > 7000 then	    
	    SubSystemDemandSet(CIVILMODULE1, 1 )
	    SubSystemDemandSet(CIVILMODULE2, 0.9 )
	    SubSystemDemandSet(CIVILMODULE3, 0.8 )
	    SubSystemDemandSet(CIVILMODULE4, 0.7 )
	    SubSystemDemandSet(CIVILMODULE5, 0.6 )
	    SubSystemDemandSet(CIVILMODULE6, 0.5 )	       
	  end	   
	end	
	--Mothership	
	if numRUs > 1500 then
		SubSystemDemandSet(RAPIDTURRET1_MS, 0.45)
	end	
	if numRUs > 2000 then
		SubSystemDemandSet(TORPEDOLAUNCHER1, 0.4)
	end	
	if numRUs > 3000 then
		SubSystemDemandSet(DEFENSEFIELD, 0.33)
	end		
	if numRUs > 4000 then
		SubSystemDemandSet(HEAVYIONCANNON, 0.25)
	end	
	--command fortress	
	if numRUs > 2000 then
		SubSystemDemandSet(RAPIDTURRET1_CF, 0.44)
	end					
	if numRUs > 2500 then
		SubSystemDemandSet(TORPEDOLAUNCHER1_CF, 0.46)
	end			
	if numRUs > 3000 then
		SubSystemDemandSet(HKC1_CF, 0.45)
	end			
	if numRUs > 3500 then
		SubSystemDemandSet(CFIONCANNON1, 0.43)
	end			
	if numRUs > 4000 then
		SubSystemDemandSet(CFMINESOWER1, 0.42)
	end			
	if numRUs > 2500 then
		SubSystemDemandSet(CFREPAIRSYSTEM, 0.75)
	end
	if numRUs > 5000 then
		SubSystemDemandSet(CFNUCLEARBOMBLAUNCHER, 0.36)
	end		
	if numRUs > 5000 then
		SubSystemDemandSet(CFNUCLEARBOMBLAUNCHER1, 0.36)
	end			
	if numRUs > 5000 then
		SubSystemDemandSet(CFNUCLEARBOMBLAUNCHER2, 0.36)
	end											
	--war machines
  SubSystemDemandSet(RAPIDTURRET1, 1 )
	SubSystemDemandSet(RAPIDTURRET2, 1 )
	SubSystemDemandSet(RAPIDTURRET3, 1 )
	numWarMachine = NumSquadrons(HGN_BATTLECRUISER)+NumSquadrons(HGN_BATTLESHIP)+NumSquadrons(HGN_VORTEX)
	if numWarMachine >= 1 then
		if numRUs > 500 then      	
      SubSystemDemandSet(VKINETIKCANNON, 1*numWarMachine )
	    SubSystemDemandSet(HGN_VHCANNONX3, 1*numWarMachine )
	    SubSystemDemandSet(HGN_VHCANNONX6, 1*numWarMachine )		
      SubSystemDemandSet(RAPIDTURRET1, 1*numWarMachine )
	    SubSystemDemandSet(RAPIDTURRET2, 1*numWarMachine )
	    SubSystemDemandSet(RAPIDTURRET3, 1*numWarMachine )
	    SubSystemDemandSet(RAPIDTURRET4, 1*numWarMachine )	    
	    SubSystemDemandSet(XPULSARS1BC, 2*numWarMachine )
	    SubSystemDemandSet(XPULSARS2BC, 2*numWarMachine )
	    SubSystemDemandSet(XPULSARS3BC, 2*numWarMachine )
	    SubSystemDemandSet(XPULSARS4BC, 2*numWarMachine )	     
	  end
		if numRUs > 800 then
	    SubSystemDemandSet(KINETIKCANNON1, 1*numWarMachine )
	    SubSystemDemandSet(KINETIKCANNON2, 1*numWarMachine )
	    SubSystemDemandSet(KINETIKCANNON3, 1*numWarMachine )
			SubSystemDemandSet(HKC3XBC1, 2*numWarMachine )
			SubSystemDemandSet(HKC3XBC2, 2*numWarMachine )
			SubSystemDemandSet(HKC3XBC3, 2*numWarMachine )
			SubSystemDemandSet(HKC1_S1BC, 3*numWarMachine )
			SubSystemDemandSet(HKC1_S2BC, 3*numWarMachine )
			SubSystemDemandSet(HKC1_S3BC, 3*numWarMachine )
			SubSystemDemandSet(VTORPEDOLAUNCHER1, 1*numWarMachine )
	    SubSystemDemandSet(VTORPEDOLAUNCHER2, 1*numWarMachine )
	    SubSystemDemandSet(VTORPEDOLAUNCHER3, 1*numWarMachine )
	    SubSystemDemandSet(VTORPEDOLAUNCHER4, 1*numWarMachine )
	  end	 
		if numRUs > 1100 then
	    SubSystemDemandSet(IONCANNON1, 1*numWarMachine )
			SubSystemDemandSet(IONCANNON2, 1*numWarMachine )
			SubSystemDemandSet(HEAVYIONCANNONS1BC, 2*numWarMachine )
			SubSystemDemandSet(HEAVYIONCANNONS2BC, 2*numWarMachine )
			SubSystemDemandSet(HEAVYIONCANNONS1BS, 3*numWarMachine )
			SubSystemDemandSet(HEAVYIONCANNONS2BS, 3*numWarMachine )			
			SubSystemDemandSet(BCTUBESBS, 1*numWarMachine )
			SubSystemDemandSet(BCTUBES1BS, 2*numWarMachine )
			SubSystemDemandSet(BCTUBES2BS, 3*numWarMachine )
			SubSystemDemandSet(BCTUBESBSREAR, 3*numWarMachine )  
			SubSystemDemandSet(MINESOWER1, 1*numWarMachine )
	    SubSystemDemandSet(MINESOWER2, 1*numWarMachine )	    
	  end	   
	end			
	--adv sentinel
	if NumSquadrons(HGN_ARTILLERYSENTINEL) >= 1 then	  	 
	  if numRUs > 900 then
		  SubSystemDemandSet(HEAVYIONCANNONS1, 2 )
			SubSystemDemandSet(TORPEDOLAUNCHER1_CFS1, 2 )
			SubSystemDemandSet(HKC1_S2, 2.1 )
	    SubSystemDemandSet(HKC1_S3, 2.2 )	 
	    SubSystemDemandSet(CFNUCLEARBOMBLAUNCHERS4, 1.9 )	       
	  end	 	  
	end		
	--weapon station
	if NumSquadrons(HGN_COMBATBASE) >= 1 then
	  if numRUs > 900 then
	    SubSystemDemandSet(HEAVYIONCANNONS1, 3 )	   
      SubSystemDemandSet(HEAVYIONCANNONS2, 3 )			
	    SubSystemDemandSet(CFNUCLEARBOMBLAUNCHERS1, 2.9 )	  
      SubSystemDemandSet(CFNUCLEARBOMBLAUNCHERS2, 2.9 )				
	  end	  
	end				
	--other
	CpuBuildSS_OtherMiscSubSystemDemand();	
end

function DoSubSystemDemand_Vaygr()	
	local rank = (NumSubSystems(ISLIEUTENANT) + NumSubSystems(ISCOMMANDER) + NumSubSystems(ISCAPTAIN) + NumSubSystems(ISCOMMODORE) + NumSubSystems(ISADMIRAL) + NumSubSystems(ISFLEETADMIRAL))
	local numRUs = GetRU() 
	--production subs
	SubSystemDemandSet(FIGHTERPRODUCTION, 10 )
	SubSystemDemandSet(CORVETTEPRODUCTION, 8 )
	SubSystemDemandSet(FRIGATEPRODUCTION, 6 )
	SubSystemDemandSet(CAPSHIPPRODUCTION, 4 )		
	SubSystemDemandSet(ADVCAPSHIPPRODUCTION, 3 )		
	--research
  local researchcount = NumSubSystems(RESEARCH) + NumSubSystemsQ(RESEARCH)
	if researchcount==0 then				
		if numRUs > 1000 then
	    SubSystemDemandSet(RESEARCH, 2 )
	  end
	end			
	--power
	if rank >= 1 then			
		if numRUs > 6500 then
			SubSystemDemandSet(VGR_POWER_MS, 1 )
			SubSystemDemandSet(VGR_POWER_SY, 1 )
			SubSystemDemandSet(VGR_POWER_SY1, 1 )			
		end	
	end	
	--scavenger  
  if NumSquadrons( VGR_SCAVER ) >= 1 then
		if rank >= 1 then
		  if numRUs > 5000 then
		    SubSystemDemandSet(SUPPLY1, 1.1 )
		  end
		  if numRUs > 8000 then
		    SubSystemDemandSet(SUPPLY2, 1 )
		  end
		  if numRUs > 11000 then
		    SubSystemDemandSet(SUPPLY3, 0.9 )
		  end
		  if numRUs > 14000 then
		    SubSystemDemandSet(SUPPLY4, 0.8 )
		  end
		  if numRUs > 17000 then
		    SubSystemDemandSet(SUPPLY5, 0.7 )
		  end	  
		end
	end		
	--Battlecarrier
  if NumSquadrons(VGR_BATTLECARRIER) >= 0 then
	  if numRUs > 1000 then
	    SubSystemDemandSet(FREAKERL, 1.3 )
	    SubSystemDemandSet(FREAKERL1, 1.3 )	    
	  end	  
	end			
	--flagship	
	if numRUs > 2000 then
		SubSystemDemandSet(DOUBLEKINETICCANNONF, 1)
	end		
	if numRUs > 3000 then
		SubSystemDemandSet(VGRMSARMOR, 1.2)
	end		
	if numRUs > 4000 then
		SubSystemDemandSet(PC, 0.8)
	end	
	--command fortress
	if numRUs > 2000 then
		SubSystemDemandSet(DOUBLEKINETICCANNON_CF, 0.65)
	end			
	if numRUs > 2500 then
		SubSystemDemandSet(IONCANNON1_CF, 0.64)
	end		
	if numRUs > 3000 then
		SubSystemDemandSet(MISSILEBOX, 0.63)
	end			
	if numRUs > 3500 then
		SubSystemDemandSet(FREAKER, 0.62)
	end				
	if numRUs > 2500 then
		SubSystemDemandSet(CFREPAIRSYSTEM, 0.66)
	end					
	--war machines
	SubSystemDemandSet(LASERCANNON, 1 )
	SubSystemDemandSet(LASERCANNON1, 1 )
	SubSystemDemandSet(LASERCANNON2, 1 )
	SubSystemDemandSet(LASERCANNON3, 1 )
	SubSystemDemandSet(LASERCANNONS, 1 )
	SubSystemDemandSet(LASERCANNONS1, 1 )
	--battleship
	if NumSquadrons(VGR_ALKHALID) >= 1 then
	  if numRUs > 500 then
	    SubSystemDemandSet(KINETICCANNON, 1.3 )
	    SubSystemDemandSet(KINETICCANNON1, 1.2 )
	    SubSystemDemandSet(KINETICCANNON2, 1.1 )
	    SubSystemDemandSet(KINETICCANNON3, 1 )
	  end
	  if numRUs > 800 then
	    SubSystemDemandSet(DOUBLEKINETICCANNON, 0.9 )
	    SubSystemDemandSet(DOUBLEKINETICCANNON1, 0.8 )
	    SubSystemDemandSet(DOUBLEKINETICCANNON2, 0.7 )
	  end	  
	end		
	--sinner
	if NumSquadrons(VGR_SINNER) >= 1 then
	  if numRUs > 800 then
	    SubSystemDemandSet(DOUBLEKINETICCANNON, 0.9 )
	    SubSystemDemandSet(DOUBLEKINETICCANNON1, 0.8 )	    
	  end	  
	end		
	--Battlecruiser
  if NumSquadrons(VGR_BATTLECRUISER) >= 0 then
	  if numRUs > 1000 then
	    SubSystemDemandSet(BCIONBEAMTURRET, 1.3 )	     
	  end	  
		if numRUs > 1200 then
	    SubSystemDemandSet(MISSILEBOXBC, 1.2 )	
			SubSystemDemandSet(MISSILEBOX1BC, 1.1 )	
	  end	  
		if numRUs > 1400 then
	    SubSystemDemandSet(FREAKERL, 1 )	    
	  end	  
	end		
	--Missile Battlecruiser
  if NumSquadrons(VGR_MISSILEBATTLECRUISER) >= 0 then
	  if numRUs > 1000 then
	    SubSystemDemandSet(VGR_MBC_C, 1.3 )	     
	  end	  
		if numRUs > 5000 then
		  SubSystemDemandSet(VGR_MBC_F, 1.2 )	
      SubSystemDemandSet(VGR_MBC_F1, 1.2 )	
      SubSystemDemandSet(VGR_MBC_F2, 1.2 )			  
		else		
	    SubSystemDemandSet(HEAVYFUSIONMISSILELAUNCHERMBC, 1.2 )				
	  end	  		
	end		
	--artillery Cruiser
  if NumSquadrons(VGR_ARTILLERYSHIP) >= 0 then
	  if numRUs > 1000 then
	    SubSystemDemandSet(VGR_CR_P, 1.3 )
	    SubSystemDemandSet(VGR_CR_M, 1.3 )	 
      SubSystemDemandSet(VGR_CR_L, 1.3 )	    			
	  end	  
	end						
	--other
	CpuBuildSS_OtherMiscSubSystemDemand();	
end

function CpuBuildSS_RetireVaygrProductionSubSystems()
	local numCarriers = CarrierCount()
	for i=0, (numCarriers-1) do	
		local carrier = CarrierAt( i )		
		local productionId = CarrierProductionSubSystem( carrier )		
		if (productionId ~= 0) then
			local ssdemand = SubSystemDemandGet( productionId )		
			if (ssdemand < 0) then
				sg_retireCountCheck = sg_retireCountCheck + 1
				if (sg_retireCountCheck >= 2) then														
					RetireSubSystem( carrier, productionId )					
					sg_retireCountCheck = 0
					return
				end
			else
				sg_retireCountCheck = 0
			end			
		end	
	end
end

function CpuBuildSS_OtherMiscSubSystemDemand()
  local GameTime = gameTime()
	local numRUs = GetRU() 
	--platform
	if NumSubSystems(PLATFORMPRODUCTION) + NumSubSystemsQ(PLATFORMPRODUCTION) < 1 then		
		SubSystemDemandSet(PLATFORMPRODUCTION, 10 )
	else	  
    SubSystemDemandSet(PLATFORMPRODUCTION, -10 )	
	end   
	--harvest     	
	if s_totalProdSS > 0 and numRUs > 2000 then
		SubSystemDemandSet(HARVESTCONTROLMODULE, 0.5-(NumSubSystems(HARVESTCONTROLMODULE) + NumSubSystemsQ(HARVESTCONTROLMODULE))/2)	
	end		
	if (s_race == Race_Hiigaran) then			
		if NumSquadrons( HGN_CARRIER ) + NumSquadrons( HGN_SCAVER ) == 0 then
			SubSystemDemandSet(HARVESTCONTROLMODULE, -10)
		end	
	else
    if NumSquadrons( VGR_CARRIER ) + NumSquadrons( VGR_LIGHTCARRIER ) + NumSquadrons( VGR_SCAVER ) == 0 then
			SubSystemDemandSet(HARVESTCONTROLMODULE, -10)
		end		
	end	
	--fusion	
	if s_totalProdSS > 2 and numRUs > 3000 then
		SubSystemDemandSet(FUSION, 0.5-(NumSubSystems(FUSION) + NumSubSystemsQ(FUSION))/2)	
	end			
	--hyperspace		
	if s_totalProdSS > 1 and numRUs > 2000 then
		SubSystemDemandSet(HYPERSPACE, 0.6-(NumSubSystems(HYPERSPACE) + NumSubSystemsQ(HYPERSPACE))/4)	
	end			
	if ( NumSquadrons(kShipYard) + NumSquadronsQ(kShipYard) == 0 ) then
		SubSystemDemandAdd(HYPERSPACE, 0.5 )
	end		
	--drive	
	if s_totalProdSS > 1 and numRUs > 2500 then
		SubSystemDemandSet(DRIVESYSTEM, 0.4-(NumSubSystems(DRIVESYSTEM) + NumSubSystemsQ(DRIVESYSTEM))/2)	
	end			
	if (s_race == Race_Hiigaran) then	
		local numCarriers = NumSquadrons( HGN_LIGHTCARRIER ) + NumSquadrons( HGN_CARRIER ) + NumSquadrons( HGN_BATTLECARRIER )
		if numCarriers == 0 and GameTime < 2500 then
			SubSystemDemandSet(DRIVESYSTEM, -10)
		end	
	end	
	--defense	
	if s_totalProdSS > 1 and numRUs > 2500 then
		SubSystemDemandSet(DEFENSEFIELDMODULE, 0.4-(NumSubSystems(DEFENSEFIELDMODULE) + NumSubSystemsQ(DEFENSEFIELDMODULE))/2)	
	end			
	--fire	
	if s_totalProdSS > 1 and numRUs > 2500 and NumSubSystems(HYPERSPACE) >= 1 then
		SubSystemDemandSet(FIRECONTROLTOWER, 0.4-(NumSubSystems(FIRECONTROLTOWER) + NumSubSystemsQ(FIRECONTROLTOWER))/2)	
	end			
	--build	
	if s_totalProdSS > 2 and numRUs > 3000 and NumSubSystems(HYPERSPACE) >= 1 then
		SubSystemDemandSet(BUILD, 0.4-(NumSubSystems(BUILD) + NumSubSystemsQ(BUILD))/2)	
	end			
	--repair
	if s_totalProdSS > 2 and numRUs > 3000 and NumSubSystems(HYPERSPACE) >= 1 then
		SubSystemDemandSet(REPAIRSYSTEM, 0.4-(NumSubSystems(REPAIRSYSTEM) + NumSubSystemsQ(REPAIRSYSTEM))/2)	
	end			
	--gravity well generator
	if s_totalProdSS > 2 and numRUs > 3000 and NumSubSystems(HYPERSPACE) >= 1 then
		SubSystemDemandSet(HYPERSPACEINHIBITOR, 0.4-(NumSubSystems(HYPERSPACEINHIBITOR) + NumSubSystemsQ(HYPERSPACEINHIBITOR))/2)	
	end		
	--cloak generator	
	if s_totalProdSS > 2 and numRUs > 3000 and NumSubSystems(HYPERSPACE) >= 1 then
		SubSystemDemandSet(CLOAKGENERATOR, 0.4-(NumSubSystems(CLOAKGENERATOR) + NumSubSystemsQ(CLOAKGENERATOR))/2)	
	end			
	--hole scrumbler		
	if s_totalProdSS > 3 and numRUs > 4000 and NumSubSystems(HYPERSPACE) >= 1 then
		SubSystemDemandSet(HOLESCRUMBLER, 0.3-(NumSubSystems(HOLESCRUMBLER) + NumSubSystemsQ(HOLESCRUMBLER))/2)	
	end		  
	--advanced array
	if s_totalProdSS > 0 and numRUs > 500 then
		SubSystemDemandSet(ADVANCEDARRAY, 0.5-(NumSubSystems(ADVANCEDARRAY) + NumSubSystemsQ(ADVANCEDARRAY))/2)	
	end		
	--cloak sensors
	if s_totalProdSS > 0 and numRUs > 500 then
		SubSystemDemandSet(CLOAKSENSOR, 0.4-(NumSubSystems(CLOAKSENSOR) + NumSubSystemsQ(CLOAKSENSOR))/2)	
	end		
end