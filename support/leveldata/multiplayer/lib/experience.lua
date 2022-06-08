function experience()
  experienceExecute("splitmotherships", nms, 1)
	experienceExecute("splitresearchstations", nrs, 1)
	experienceExecute("splitpowerstations", nps, 1)
	experienceExecute("splitcrewstations", ncs, 1)
	experienceExecute("splitweaponstations", nws, 1)
	experienceExecute("splitdestroyers", nd, 2)
	experienceExecute("splitcarriers", nc, 1)
	experienceExecute("splitbattlecruisers", nbc, 3)
	experienceExecute("splitshipyards", nsy, 1)
	experienceExecute("splitcommandfortresses", ncf, 1)
	experienceExecute("splithyperspacestations", nhs, 1)
	experienceExecute("splitjuggernaughts", nj, 0) 
end

function experienceExecute(Group, Counter, Factor)
  if Counter > 0 then
	  for i = 0,Counter-1,1 do                                             
	    if SobGroup_Empty(Group .. tostring(i)) == 0 then  
	      local esperienza = 0.000085
	      --build
	      if SobGroup_IsDoingAbility(Group .. tostring(i), abilityList[8]) == 1 then
	        esperienza = esperienza + 0.000025
	        if Factor == 1 then
	          esperienza = esperienza + 0.000025
	        end
	      end    
	      --move
	      if SobGroup_IsDoingAbility(Group .. tostring(i), abilityList[1]) == 1 then
	        esperienza = esperienza + 0.00008
	      end
	      --attack
	      if SobGroup_UnderAttack(Group .. tostring(i)) == 1 then
	        esperienza = esperienza + 0.00012
	        if Factor >= 2 then
	          esperienza = esperienza + 0.00012
	        end
	      end
	      if SobGroup_IsDoingAbility(Group .. tostring(i), abilityList[2]) == 1 then
	        esperienza = esperienza + 0.00018
	        if Factor >= 2 then
	          esperienza = esperienza + 0.00018
	        end
	      end      
	      if SobGroup_IsDoingAbility(Group .. tostring(i), abilityList[15]) == 1 then
	        esperienza = esperienza + 0.00018
	        if Factor >= 2 then
	          esperienza = esperienza + 0.00018
	        end
	      end   
	      --defense field    
	      if SobGroup_IsDoingAbility(Group .. tostring(i), abilityList[25]) == 1 then
	        esperienza = esperienza + 0.000085
	      end  
        --cloak				
	      if SobGroup_IsDoingAbility(Group .. tostring(i), abilityList[28]) == 1 then
	        esperienza = esperienza + 0.000085
	      end        
	      SobGroup_SetHardPointHealth(Group .. tostring(i), "experience", (SobGroup_GetHardPointHealth(Group .. tostring(i), "experience") + (esperienza*experiencesensitivity)))
	    end
	  end    
	end  
end
