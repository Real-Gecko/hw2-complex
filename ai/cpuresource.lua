aitrace("LOADING CPU RESOURCING")
function CpuResource_Init()    
  cpResourcersPerPath = 4  
  cpNumCollectorsPerLatchPoint = 1.25    
  cpMaxThreatAddedDistance = 6000    
  cpMinThreatAddedDistance = 12000        
  SetResourceDockFamily("Utility")
  sg_minNumCollectors = 5
  sg_maxNumCollectors = 20 
  if (Override_ResourceInit) then
	  Override_ResourceInit()
  end	
end

function DoResourceBuild()	
  CalcDesiredNumCollectors()
  local numCollectors = numQueueOfClass( eCollector )			
  if (numCollectors < sg_desiredNumCollectors and CanBuild( kCollector ) == 1) then
	  aitrace("Build collector: desired:"..sg_desiredNumCollectors.." count:"..numCollectors)
	  Build( kCollector )
	  return 1
  end	
  if(GetNumberOfIdleRefineries() <= 0) then        
    local numberOfActiveBlobs = GetActiveBlobCount()
    local neededRefineries = 0
    local neededSalvageDropOffs = 0
    for activeIndex = 0 , (numberOfActiveBlobs-1) do
      local blobIndex = GetActiveBlobAt(activeIndex)
      local collectors = CollectorsAtBlob(blobIndex)
      local refineryCapacity = CollectorCapacityOfRefineriesAtBlob(blobIndex)            
      if(collectors > refineryCapacity) then                
        if(IsSalvage(blobIndex) ~= 0) then
          neededSalvageDropOffs = neededSalvageDropOffs + 1
        else
          neededRefineries = neededRefineries + 1
        end
      end
    end		
	  if (UnderAttackThreat() > -75) then
		  return 0
		end		
	  local numRefineriesQueued = numQueueOfClass( eDropOff )-numActiveOfClass( s_playerIndex, eDropOff )         
	  if(neededRefineries > 0 and numRefineriesQueued==0) then            
	    ShipDemandAddByClass( eRefinery, neededRefineries )
	  end                
	  local numSalDropsQueued = numQueueOfClass( eSalvageDropOff )-numActiveOfClass( s_playerIndex, eSalvageDropOff )        
	  if(neededSalvageDropOffs > 0 and numSalDropsQueued==0 and UnderAttackThreat() < -75) then            
	    ShipDemandAddByClass( eSalvageDropOff, neededSalvageDropOffs )
	  end
  end	
  return 0
end	

function CalcDesiredNumCollectors()		
  local baseCollectors = 6
  local collectorsToMilitary = 0.6
  if(g_LOD == 0) then		
		baseCollectors = 4
		collectorsToMilitary = 0.4
  elseif(g_LOD == 1) then		
		baseCollectors = 6
		collectorsToMilitary = 0.6
  elseif(g_LOD == 2) then		
		baseCollectors = 7
		collectorsToMilitary = 0.7
	elseif(g_LOD > 2) then		
		baseCollectors = 8
		collectorsToMilitary = 0.8	
  end		
  local maxCollectorsForMilitary = baseCollectors
  if (s_militaryPop > 0) then
		maxCollectorsForMilitary = maxCollectorsForMilitary + (s_militaryPop * collectorsToMilitary)
  end    
  sg_desiredNumCollectors = GetActiveCollectorSlots()*cpNumCollectorsPerLatchPoint + 2   	
  local numRU = GetRU()
  if (numRU > 1000) then
		sg_desiredNumCollectors = sg_desiredNumCollectors - ((numRU-1000)/1000)
  end	    
  if (sg_desiredNumCollectors < baseCollectors) then
    sg_desiredNumCollectors = baseCollectors
  end       
  if (sg_desiredNumCollectors >= maxCollectorsForMilitary) then
	  sg_desiredNumCollectors = maxCollectorsForMilitary
  end	    
  local collectorsInSystem = numQueueOfClass( eCollector )
  if(collectorsInSystem > 18) then
    sg_militaryToBuildPerCollector = 5
  elseif(collectorsInSystem > 15) then
    sg_militaryToBuildPerCollector = 4
  elseif(collectorsInSystem > 12) then
    sg_militaryToBuildPerCollector = 3
  elseif(collectorsInSystem > 9) then
    sg_militaryToBuildPerCollector = 2
  elseif(collectorsInSystem > 6) then
    sg_militaryToBuildPerCollector = 1
  else
    sg_militaryToBuildPerCollector = 0
  end         
  if (UnderAttackThreat() > 0) then        
    if(numRU > 1500) then
      sg_desiredNumCollectors = 0
    else            
      sg_militaryToBuildPerCollector = sg_militaryToBuildPerCollector + ((UnderAttackThreat() / 50) + 1)
    end
  end    
  if (sg_desiredNumCollectors > sg_maxNumCollectors) then
	  sg_desiredNumCollectors = sg_maxNumCollectors
  end    
end