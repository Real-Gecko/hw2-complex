RRPI_PlayerName         = 0
RRPI_PlayerProgress     = 1
RRPI_PlayerColour       = 2
RRPN_Parameters         = 3

function OnInit()     
	--setGlareIntensity(2)
	music_data = music_data_original
	Rule_AddInterval("Play_Music", 1.5)				
	UI_SetButtonPressed("MusicMenu","RandomPlayDynamic",1)	
	UI_SetElementVisible('MusicMenu','MusicPlayType1',0)
	UI_SetElementVisible('MusicMenu','MusicPlayType2',0)
	UI_SetElementVisible('MusicMenu','MusicPlayType3',0)
	UI_BindKeyEvent(F9KEY, "musicslide")		 	     
  Volume_AddSphere("s0", { 0,      0,     0,    }, 10)
	Volume_AddSphere("s1", {-1000000,  0,     0,    }, 10)
	Volume_AddSphere("s2", { 1000000,  0,     0,    }, 10)
	Volume_AddSphere("s3", { 0,     -1000000, 0,    }, 10)
	Volume_AddSphere("s4", { 0,      1000000, 0,    }, 10)
	Volume_AddSphere("s5", { 0,      0,    -1000000,}, 10)
	Volume_AddSphere("s6", { 0,      0,     1000000,}, 10)
  Volume_AddSphere("s7", {-1000000,  0,    -1000000,}, 10)
  Volume_AddSphere("s8", {-1000000,  0,     1000000,}, 10)  
  Volume_AddSphere("s9", { 1000000,  0,    -1000000,}, 10)
  Volume_AddSphere("s10",{ 1000000,  0,     1000000,}, 10)  
  Volume_AddSphere("s11",{ 0,     -1000000,-1000000,}, 10)
  Volume_AddSphere("s12",{ 0,     -1000000, 1000000,}, 10)  
  Volume_AddSphere("s13",{ 0,      1000000,-1000000,}, 10)
  Volume_AddSphere("s14",{ 0,      1000000, 1000000,}, 10)  
  Volume_AddSphere("s15", {-1000000,-1000000, 0,    }, 10)
  Volume_AddSphere("s16", { 1000000, 1000000, 0,    }, 10)
  Volume_AddSphere("s17", {-1000000, 1000000, 0,    }, 10)
  Volume_AddSphere("s18", { 1000000,-1000000, 0,    }, 10)  
  Volume_AddSphere("s19", {-1000000,-1000000,-1000000,}, 10)
  Volume_AddSphere("s20", {-1000000,-1000000, 1000000,}, 10)
  Volume_AddSphere("s21", { 1000000, 1000000,-1000000,}, 10)
  Volume_AddSphere("s22", { 1000000, 1000000, 1000000,}, 10)
  Volume_AddSphere("s23", {-1000000, 1000000,-1000000,}, 10)
  Volume_AddSphere("s24", {-1000000, 1000000, 1000000,}, 10)
  Volume_AddSphere("s25", { 1000000,-1000000,-1000000,}, 10)
  Volume_AddSphere("s26", { 1000000,-1000000, 1000000,}, 10)  
	Volume_AddSphere("up0", {0, 400000, 0,}, 100)
  Volume_AddSphere("up1", {0, 390000, 0,}, 100)
  Volume_AddSphere("up2", {0, 380000, 0,}, 100)
  Volume_AddSphere("up3", {0, 370000, 0,}, 100)
  Volume_AddSphere("up4", {0, 360000, 0,}, 100)
  Volume_AddSphere("up5", {0, 350000, 0,}, 100)
  Volume_AddSphere("centre", {-11111, 11111, 11111,}, 10)          
	--GAME SETTINGS   
  winCondition = GetGameSettingAsString("wincondition");
	honourstart = GetGameSettingAsNumber("honourstart")  
  autosave = GetGameSettingAsNumber("autosave") 
  rankremuneration = GetGameSettingAsNumber("rankremuneration")
  unithealth = GetGameSettingAsNumber("unithealth")
  buildspeed = GetGameSettingAsNumber("buildspeed")
  resource = GetGameSettingAsNumber("resource")  
  recruiting = GetGameSettingAsNumber("recruiting")     
  secondaryobjectives = GetGameSettingAsNumber("secondaryobjectives")   
  honoursensitivity = GetGameSettingAsNumber("honoursensitivity")    
  researchsensitivity = GetGameSettingAsNumber("researchsensitivity")    
  experiencesensitivity = GetGameSettingAsNumber("experiencesensitivity") 
  energysensitivity = GetGameSettingAsNumber("energysensitivity")  
  hyperspace = GetGameSettingAsNumber("hyperspace") 
  startwith = GetGameSettingAsNumber("startwith") 	
  military = GetGameSettingAsNumber("military")
  diplomacy = GetGameSettingAsNumber("diplomacy")
  unitcapsrank = GetGameSettingAsNumber("unitcapsrank")  
  interface = GetGameSettingAsNumber("interface")
  resstart = GetGameSettingAsNumber("resstart")
	intro = GetGameSettingAsNumber("intro")  
	unlockspecial = GetGameSettingAsNumber("unlockspecial") 
  spacebalancer = GetGameSettingAsNumber("spacebalancer") 
	popbalancer = GetGameSettingAsNumber("popbalancer")  	
  --win condition	
  if (winCondition == "DestroyMothership") then  
    Rule_AddInterval("CheckMothershipDeadRule", 13.1) --ok     
	elseif (winCondition == "DestroyAll") then        
    Rule_AddInterval("CheckDeadRule", 13) --ok  
  elseif (winCondition == "Store100000RUs") then  
    ATI_LoadTemplates("data:LevelData\\Multiplayer\\ResourceRace\\ATI.lua")      
    Rule_AddInterval("CheckStore100000RUsDeadRule", 13.1) --ok      
  elseif (winCondition == "Sandbox") then  
  elseif (winCondition == "Scenario") then	 
	else
	  Rule_AddInterval("CheckMothershipDeadRule", 13.1) --ok      	
  end
	--secondaryobjectives
	if secondaryobjectives == 2 then		   
	else
		rurace = 1
		rankrace = 1
		domainrace = 1  	
	end  
	--diplomacy fee
	if diplomacy == 1 then
		diplomacy = 0    
	elseif diplomacy == 2 then 
		diplomacy = 1 
	elseif diplomacy == 3 then    
		diplomacy = 2
	elseif diplomacy == 4 then  
		diplomacy = 3
	elseif diplomacy == 5 then  
		diplomacy = 4  
	else 
		diplomacy = 2		  
	end  	
	--honour
	if honourstart == 1 then
		for i = 1,6,1 do
			honourstartList[i] = 0
		end  		  
	elseif honourstart == 2 then
		for i = 1,6,1 do
			honourstartList[i] = 10
		end  		  	  
	elseif honourstart == 3 then  
		for i = 1,6,1 do
			honourstartList[i] = 20
		end  		  
	elseif honourstart == 4 then  
		for i = 1,6,1 do
			honourstartList[i] = 30
		end  		    
		if rankrace == 1 then
			rankrace = 3
		end
	elseif honourstart == 5 then  
		for i = 1,6,1 do
			honourstartList[i] = 80
		end  		   
		if rankrace == 1 then
			rankrace = 5
		end
	elseif honourstart == 6 then  
		for i = 1,6,1 do
			honourstartList[i] = 150
		end  		   
		if rankrace == 1 then
			rankrace = 7
		end
	elseif honourstart == 7 then  
		for i = 1,6,1 do
			honourstartList[i] = 240
		end  		   
		if rankrace == 1 then
			rankrace = 9
		end
	elseif honourstart == 8 then  
		for i = 1,6,1 do
			honourstartList[i] = 350
		end  		  
		if rankrace == 1 then
			rankrace = 11
		end
	elseif honourstart == 9 then  
		for i = 1,6,1 do
			honourstartList[i] = 480
		end  		   
		rankrace = 0		                      
	else
		for i = 1,6,1 do
			honourstartList[i] = 10
		end  		   
	end		  
	--honoursensivity
	if honoursensitivity == 1 then
		honoursensitivity = 0.85		    
	elseif honoursensitivity == 2 then  
		honoursensitivity = 1.15
	elseif honoursensitivity == 3 then 		    
		honoursensitivity = 1.65 
	elseif honoursensitivity == 4 then 		    
		honoursensitivity = 2.4 		   
	elseif honoursensitivity == 5 then  --test 		    
		honoursensitivity = 3       
	else
		honoursensitivity = 1.1 
	end		  
	--researchsensitivity
	if researchsensitivity == 1 then
		researchsensitivity = 1.55
	elseif researchsensitivity == 2 then  
		researchsensitivity = 1.2
	elseif researchsensitivity == 3 then 
		researchsensitivity = 0.85
	elseif researchsensitivity == 4 then 
		researchsensitivity = 0.45 
	elseif researchsensitivity == 5 then  --test
		researchsensitivity = 0.2   
	else
		researchsensitivity = 1.2 
	end				
	--buildspeed
	if buildspeed == 1 then
		buildspeed = 0 		    
	elseif buildspeed == 2 then  
		buildspeed = 0.25		    
	elseif buildspeed == 3 then 
		buildspeed = 0.5 
	elseif buildspeed == 4 then 
		buildspeed = 1 		      		    
	else
		buildspeed = 0.25 		    
	end			
	--military AI
	if military == 1 then  
		military = 1
	elseif military == 2 then
		military = 2
	elseif military == 3 then  
		military = 3  	
	elseif military == 4 then  
		military = 4   	  
	elseif military == 5 then  
		military = 5 
	elseif military == 6 then  --disable AI
		military = 6		
	elseif military == 7 then  --destroy AI
		military = 7		     	     	         	     	    
	else
		military = 3
	end		      	    
	--resource
	if resource == 1 then
		resource = 0
		miningfactor = 0.75
		fusionfactor = 12.27
	elseif resource == 2 then
		resource = 0.25  
		miningfactor = 0.95
		fusionfactor = 10.14
	elseif resource == 3 then  
		resource = 0.5
		miningfactor = 1.15
		fusionfactor = 8.72
	elseif resource == 4 then  
		resource = 1 
		miningfactor = 2.3
		fusionfactor = 6 
	else
		resource = 0.25 
		miningfactor = 0.95
		fusionfactor = 10.14
	end  		  
	--recruiting, deve sempre essere un numero pari perchè in transportcell.lua divide x 2
	if recruiting == 1 then
		recruiting = 0
	elseif recruiting == 2 then 
		recruiting = 2 
	elseif recruiting == 3 then 
		recruiting = 4 
	elseif recruiting == 4 then 
		recruiting = 8   
	else
		recruiting = 2 
	end		 
	--experiencesensitivity
	if experiencesensitivity == 1 then
		experiencesensitivity = 1
	elseif experiencesensitivity == 2 then  
		experiencesensitivity = 1.5
	elseif experiencesensitivity == 3 then 
		experiencesensitivity = 2
	elseif experiencesensitivity == 4 then 
		experiencesensitivity = 2.5 
	elseif experiencesensitivity == 5 then  --test
		experiencesensitivity = 3.5   
	else
		experiencesensitivity = 1.5 
	end		   
	--energysensitivity
	if energysensitivity == 1 then
		energysensitivity = 0.9
	elseif energysensitivity == 2 then  
		energysensitivity = 1
	elseif energysensitivity == 3 then 
		energysensitivity = 1.1
	elseif energysensitivity == 4 then 
		energysensitivity = 1.2 
	elseif energysensitivity == 5 then  --test
		energysensitivity = 2.4   
	else
		energysensitivity = 1 
	end		     
	--hyperspace
	if hyperspace == 1 then
		hyperspace = 1
	elseif hyperspace == 2 then  
		hyperspace = 0.7
	elseif hyperspace == 3 then  
		hyperspace = 0.4
	elseif hyperspace == 4 then  
		hyperspace = 0  
	else
		hyperspace = 0.7 
	end		  
	--rankremuneration
	if rankremuneration == 1 then
		rankremuneration = 0
	elseif rankremuneration == 2 then 
		rankremuneration = 1 
	elseif rankremuneration == 3 then 
		rankremuneration = 2 
	elseif rankremuneration == 4 then  
		rankremuneration = 3
	elseif rankremuneration == 5 then  
		rankremuneration = 4  
	else
		rankremuneration = 2 
	end		  
	--unithealth
	if unithealth == 1 then
		unithealth = 0
	elseif unithealth == 2 then  
		unithealth = 0.3
	elseif unithealth == 3 then  
		unithealth = 0.6 
	elseif unithealth == 4 then  
		unithealth = 1     
	else
		unithealth = 0.3 
	end 		
	--interface
	if interface == 1 then
		interface = 1.75
	elseif interface == 2 then  
		interface = 1.25
	elseif interface == 3 then  
		interface = 0.75		  
	elseif interface == 4 then  --test  
		interface = 2.25		    		      		  
	else
		interface = 1 
	end 				  				  			
	--starting collectors
	starttimer = 115
	if intro == 1 then
	  starttimer = 35	
	end		
	if startwith == 1 then        
		SetStartFleetSuffix("") 	 		      
	elseif startwith == 2 then        
		SetStartFleetSuffix("extra") 	    
		Rule_AddInterval("buildonstartextra", starttimer) --ok (one shot)				
	elseif startwith == 3 then        
		SetStartFleetSuffix("fleet")	
		Rule_AddInterval("buildonstartfleet", starttimer) --ok (one shot) 	  
	elseif startwith == 4 then        
		SetStartFleetSuffix("empire")	
		Rule_AddInterval("buildonstartempire", starttimer) --ok (one shot) 
  --test		
	elseif startwith == 7 then        
		SetStartFleetSuffix("test")	
		Rule_AddInterval("buildonstarttest", starttimer) --ok (one shot) 	
  --movies		
	elseif startwith == 8 then        
		SetStartFleetSuffix("movies")	
		Rule_AddInterval("buildonstartmovies", starttimer) --ok (one shot)		
	end
	--start resource
	if resstart == 7000 then
		Rule_AddInterval("buildonresstart7000", 3) --ok (one shot) 	
	elseif resstart == 11000 then
		Rule_AddInterval("buildonresstart11000", 3) --ok (one shot)  		    
	end 	
	--start map
	Rule_AddInterval("buildonstartmap", 35) --ok (one shot)
	--FUNCTIONS
	if military < 6 then
		Rule_AddInterval("ai", 45) --ok 
	end		
  Rule_AddInterval("time", 1.91) --ok	
  Rule_AddInterval("sobgroupscreate", 0.2) --ok (one shot)
  Rule_AddInterval("sobgroups", 1.4) --ok (runselected)  
	Universe_AllowPlayerOrders(0)  
  UI_SetScreenEnabled("ResourceMenu", 0)     
  UI_SetScreenEnabled("NewTaskbar", 0)	
  ec_intro_count = 0
  Rule_AddInterval("ec_welcome", 8) --ok (one shot) 
  fadedown_intro()    
  Rule_AddInterval("interfaceintro", 0.25) --ok (one shot)
  Rule_AddInterval("locard", 14) --ok (one shot)
  Rule_AddInterval("interfacebuttons", 1.5) --ok   
  Rule_AddInterval("selected", 0.7) --ok (runselected) 
  Rule_AddInterval("matchinit", 5) --ok (-> 60) 
  Rule_AddInterval("pop", popbalancer) --ok   
  Rule_AddInterval("megalithinitialize", 1.5) --ok (one shot)
  Rule_AddInterval("fusion", fusionfactor) --ok
  Rule_AddInterval("researching", 16.94) --ok (runselected)
  Rule_AddInterval("maintenance", 59.47) --ok
  Rule_AddInterval("score", 54.43) --ok
  Rule_AddInterval("missile_explosiondamage", 2.5) --ok
  Rule_AddInterval("computerspy", 11.1) --ok
  Rule_AddInterval("aijuggernaught", 10.6789)
  Rule_AddInterval("trade", 15.11) --ok 
  Rule_AddInterval("weaponsets", 11.51) --ok    	
  Rule_AddInterval("autorepair", 27.22) --ok
  --Rule_AddInterval("weight", 57.39) --ok
  Rule_AddInterval("experience", 33.33) --ok 
  Rule_AddInterval("eventi", 19.76) --ok  
  --Rule_AddInterval("keeppositiononpassive", 0.99) --ok
  Rule_AddInterval("enginegujking", 3.7) --ok 
  --test
  --Rule_AddInterval("test", 5) --ok 	
end
function test()
  SobGroup_TakeDamage("vgr_sinner0", 0.01)	
	CPU_Enable(1,0)
end