aitrace("LOADING CPU MILITARY")
function CpuMilitary_Init()
	cp_attackPercent = 100
	if (g_LOD == 0) then
	  cp_attackPercent = 60
	end	
	cp_initThreatModifier = 0.5	
	if (g_LOD == 0) then
	  cp_initThreatModifier = 0.4
	elseif (g_LOD == 1) then
	  cp_initThreatModifier = 0.5
	elseif (g_LOD == 2) then
	  cp_initThreatModifier = 0.6	
	elseif (g_LOD > 2) then
	  cp_initThreatModifier = 0.7		
	end		
	sg_militaryRand = Rand(100)	
	if (Override_MilitaryInit) then
	  Override_MilitaryInit()
	end	
end

function CpuMilitary_Process()		
	Logic_military_groupvars();	
	Logic_military_attackrules();		
	Logic_military_setattacktimer();		
end

function Logic_military_groupvars()  
	local rank = (NumSubSystems(ISLIEUTENANT) + NumSubSystems(ISCOMMANDER) + NumSubSystems(ISCAPTAIN) + NumSubSystems(ISCOMMODORE) + NumSubSystems(ISADMIRAL) + NumSubSystems(ISFLEETADMIRAL))  	
	local military = 1.025	--normal		
	if NumSubSystems(MILITARY2) >= 1 then	--max	 
	  military = 0.55			 
	elseif NumSubSystems(MILITARY1) >= 1 then	--high	 
	  military = 0.8 																
	elseif NumSubSystems(MILITARY) >= 1 then	--few	  
	  military = 1.35	 
	elseif NumSubSystems(MILITARY0) >= 1 then	--none	  
	  military = 1.75	  
	end		
	cp_minSquadGroupSize = floor((4+(rank*2)+g_LOD)*military)
	cp_minSquadGroupValue = floor((160+(rank*100))*military)
	cp_maxGroupSize = floor((11+(rank*2)+g_LOD)*military)
	cp_maxGroupValue = floor((160+(rank*100))*military)
	cp_forceAttackGroupSize = floor((8+(rank*2)+g_LOD*2)*military)	
end

function Logic_military_attackrules()			
	if (g_LOD == 0) then		
		if (gameTime() > 20*60 and s_militaryStrength > 0) then
		  cp_attackPercent = 100
		end					
		if (s_selfTotalValue*2 < s_enemyTotalValue and s_selfTotalValue > 150) then			
			cp_attackPercent = 0
			aitrace("I'm Losing!! Go on defence")
		end
	end	
end	

function Logic_military_setattacktimer()
  local timedelay = 300 	
	local wavedelay = 160 + sg_militaryRand
	if (g_LOD == 0) then
	  timedelay = 400
		wavedelay = 240 + sg_militaryRand
	elseif (g_LOD == 1) then
	  timedelay = 300
		wavedelay = 180 + sg_militaryRand
	elseif (g_LOD == 2) then
	  timedelay = 200
		wavedelay = 120 + sg_militaryRand
	elseif (g_LOD > 2) then
	  timedelay = 100
		wavedelay = 60 + sg_militaryRand
	end			
	local gametime = gameTime()		
	if (gametime >= timedelay or HaveBeenAttacked()==1) then 			
		if (Rule_Exists("attack_now_timer") == 0) then
			aitrace("Script: Attacktimer added")			
			Rule_AddInterval("attack_now_timer", wavedelay )
		end		
	end	
end

function attack_now_timer()	
	aitrace("Script:calling attack_now_timer")	
	AttackNow();
	Rule_Remove("attack_now_timer")	
end