function keeppositiononpassive()
  --destroyers 
  if nd > 0 then
	  for i = 0,nd-1,1 do  
	    if SobGroup_Empty("splitdestroyers"..i) == 0	then
        if Player_HasResearch(SobGroup_OwnedBy("splitdestroyers"..i), "isai" ) == 1 then
          break
        end					
	      if SobGroup_GetTactics("splitdestroyers"..i) == 2 then  	   	
	        if SobGroup_IsDoingAbility("splitdestroyers"..i, abilityList[2]) == 1 and SobGroup_IsDoingAbility("splitdestroyers"..i, abilityList[14]) == 1 then 
	          if ((SobGroup_GetHardPointHealth("splitdestroyers"..i, "Distance")*1000000) - SobGroup_GetDistanceToSobGroup("splitdestroyers"..i, "splitter") ~= 0) and
	             ((SobGroup_GetHardPointHealth("splitdestroyers"..i, "Distance")*1000000) - SobGroup_GetDistanceToSobGroup("splitdestroyers"..i, "splitter") < 100) then   
		          SobGroup_SetHardPointHealth("splitdestroyers"..i, "Position", 0.055)  
		        else
		          SobGroup_SetHardPointHealth("splitdestroyers"..i, "Position", 1)      
		        end 
		        SobGroup_SetHardPointHealth("splitdestroyers"..i, "Distance", (SobGroup_GetDistanceToSobGroup("splitdestroyers"..i, "splitter")/1000000))    
		      else
		        SobGroup_SetHardPointHealth("splitdestroyers"..i, "Position", 1)      
	        end	
	      else
	        SobGroup_SetHardPointHealth("splitdestroyers"..i, "Position", 1)  	            			
	      end	     
	    end		       
	  end             
  end	     
  --battlecruiser	
  if nbc > 0 then
	  for i = 0,nbc-1,1 do  
	    if SobGroup_Empty("splitbattlecruisers"..i) == 0	then
        if Player_HasResearch(SobGroup_OwnedBy("splitbattlecruisers"..i), "isai" ) == 1 then
          break
        end					
	      if SobGroup_GetTactics("splitbattlecruisers"..i) == 2 then  	   	
	        if SobGroup_IsDoingAbility("splitbattlecruisers"..i, abilityList[2]) == 1 and SobGroup_IsDoingAbility("splitbattlecruisers"..i, abilityList[14]) == 1 then 
	          if ((SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "Distance")*1000000) - SobGroup_GetDistanceToSobGroup("splitbattlecruisers"..i, "splitter") ~= 0) and
	             ((SobGroup_GetHardPointHealth("splitbattlecruisers"..i, "Distance")*1000000) - SobGroup_GetDistanceToSobGroup("splitbattlecruisers"..i, "splitter") < 100) then   
		          SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Position", 0.055)  
		        else
		          SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Position", 1)      
		        end 
		        SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Distance", (SobGroup_GetDistanceToSobGroup("splitbattlecruisers"..i, "splitter")/1000000))    
		      else
		        SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Position", 1)      
	        end	
	      else
	        SobGroup_SetHardPointHealth("splitbattlecruisers"..i, "Position", 1)  	            			
	      end	     
	    end		       
	  end             
  end	                     	
end
