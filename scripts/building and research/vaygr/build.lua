Ship = 0
SubSystem = 1

build = 
{
    { 
        Type = SubSystem, 
        ThingToBuild = "Vgr_power_ms", 
        RequiredResearch = "", 
        RequiredFleetSubSystems = "", 
        DisplayPriority = 26, 
        DisplayedName = "Power Generator", 
        Description = "<b>Description:</b> On-board Power Generator, provides basic energy production (4 MeV) \n\n<b>Type:</b> Special (takes 1 special slot) \nProduction: 3 \nSupply: none \nCost: 1000 RUs \nBuild time: 25 s \nMaintenance cost: 100 RUs/year \nWeight: 0.5 t \n\n<b>Prerequisites:</b> \nNone", },			            
		{ 
        Type = SubSystem, 
        ThingToBuild = "Vgr_power_sy", 
        RequiredResearch = "", 
        RequiredFleetSubSystems = "", 
        DisplayPriority = 26, 
        DisplayedName = "Power Generator", 
        Description = "<b>Description:</b> On-board Power Generator, provides basic energy production (4 MeV) \n\n<b>Type:</b> Special (takes 1 special slot) \nProduction: 3 \nSupply: none \nCost: 1000 RUs \nBuild time: 25 s \nMaintenance cost: 100 RUs/year \nWeight: 0.5 t \n\n<b>Prerequisites:</b> \nNone", },			            		
    { 
        Type = SubSystem, 
        ThingToBuild = "Vgr_power_sy1", 
        RequiredResearch = "", 
        RequiredFleetSubSystems = "", 
        DisplayPriority = 27, 
        DisplayedName = "Power Generator", 
        Description = "<b>Description:</b> On-board Power Generator, provides basic energy production (4 MeV) \n\n<b>Type:</b> Special (takes 1 special slot) \nProduction: 3 \nSupply: none \nCost: 1000 RUs \nBuild time: 25 s \nMaintenance cost: 100 RUs/year \nWeight: 0.5 t \n\n<b>Prerequisites:</b> \nNone", },			            		
---SUPPLY-----------
  {
        Type = SubSystem,
        ThingToBuild = "Supply1",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 24,
        DisplayedName = "RU Supply",
        Description = "<b>Description:</b> RU supplier, stores 3000 extra RUs \n\n<b>Type:</b> Special (takes 1 special slot) \nSupply: 3000 RUs \nCost: 1500 RUs \nBuild time: 75 s \nMaintenance cost: 40 RUs/year \nWeight: 7 t \n\n<b>Prerequisites:</b> \nNone",}, 
    {
        Type = SubSystem,
        ThingToBuild = "Supply2",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 25,
        DisplayedName = "RU Supply",
        Description = "<b>Description:</b> RU supplier, stores 3000 extra RUs \n\n<b>Type:</b> Special (takes 1 special slot) \nSupply: 3000 RUs \nCost: 1500 RUs \nBuild time: 75 s \nMaintenance cost: 40 RUs/year \nWeight: 7 t \n\n<b>Prerequisites:</b> \nNone",},                                                           
    {
        Type = SubSystem,
        ThingToBuild = "Supply3",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 26,
        DisplayedName = "RU Supply",
        Description = "<b>Description:</b> RU supplier, stores 3000 extra RUs \n\n<b>Type:</b> Special (takes 1 special slot) \nSupply: 3000 RUs \nCost: 1500 RUs \nBuild time: 75 s \nMaintenance cost: 40 RUs/year \nWeight: 7 t \n\n<b>Prerequisites:</b> \nNone",},                                                           
    {
        Type = SubSystem,
        ThingToBuild = "Supply4",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 27,
        DisplayedName = "RU Supply",
        Description = "<b>Description:</b> RU supplier, stores 3000 extra RUs \n\n<b>Type:</b> Special (takes 1 special slot) \nSupply: 3000 RUs \nCost: 1500 RUs \nBuild time: 75 s \nMaintenance cost: 40 RUs/year \nWeight: 7 t \n\n<b>Prerequisites:</b> \nNone",},                                                           
    {
        Type = SubSystem,
        ThingToBuild = "Supply5",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 28,
        DisplayedName = "RU Supply",
        Description = "<b>Description:</b> RU supplier, stores 3000 extra RUs \n\n<b>Type:</b> Special (takes 1 special slot) \nSupply: 3000 RUs \nCost: 1500 RUs \nBuild time: 75 s \nMaintenance cost: 40 RUs/year \nWeight: 7 t \n\n<b>Prerequisites:</b> \nNone",},                                                                                                                                 
    {
        Type = SubSystem,
        ThingToBuild = "Harvest",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 22,
        DisplayedName = "Harvest Control Module",
        Description = "<b>Description:</b> Improves harvesting operations within a limited radius around the carrier ship, unlocks harvest abilities and upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 15% Harvest, own collectors within radius \n+ 15% Load, own collectors within radius \n+ 15% Drop Off, own collectors within radius \nRadius: 3000 m \nCost: 700 RUs \nBuild time: 35 s \nMaintenance cost: 50 RUs/year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone",},  
    {
        Type = SubSystem,
        ThingToBuild = "Fusion",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 23,
        DisplayedName = "Fusion Control Module",
        Description = "<b>Description:</b> Fusion controller. Enables RU generation from fusion allowing the Scavenger to autonomously generate RUs (RUs generated this way are provided to the fleet at the end of each game year). Unlocks fusion abilities and upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \nFusion: 30 RUs every 10 s \nCost: 1500 RUs \nBuild time: 75 s \nMaintenance cost: 50 RUs/year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone",},
		{
        Type = SubSystem,
        ThingToBuild = "Hgn_S_Module_Defensefieldshield",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 41,
        DisplayedName = "Anti-Radiation Field",
        Description = "<b>Description:</b> Enables Anti-Radiation Field, protects carrier ship and nearby allied ships from the damaging effects of high-energy particles in nebulae, unlocks anti-radiation upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n-90% Nebula sensivity, own ships within radius \n-90% Dust Cloud sensivity, own ships within radius \nRadius: 1850 m \nCost: 2600 RUs \nBuild time: 40 s \nMaintenance cost: 50 RUs/year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},  
------------------------------------------------------------------------------
	   { 
        Type = SubSystem, 
        ThingToBuild = "vgr_cr_m", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"Research",
        DisplayPriority = 1, 
        DisplayedName = "Mortar Missile Battery", 
        Description = "<b>Description:</b> Mortar Missile Battery, Long-Range Anti-Capital Ships weapon, composed of: \n5 Anti-Capital Ships Mortar Missile \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nDamage: 6000 x 5 \nRate: 22 s \nRange: 12500 m \nCost: 2000 RUs \nBuild time: 120 s \nMaintenance cost: 50 RUs / year \nWeight: 10 t \n\n<b>Prerequisites:</b> \nResearch Division" },
    { 
        Type = SubSystem, 
        ThingToBuild = "vgr_cr_l", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"Research",
        DisplayPriority = 2, 
        DisplayedName = "Frontal Ion System", 
        Description = "<b>Description:</b> Frontal Ion System, Long-Range Anti-Capital Ships weapon, composed of: \n1 Anti-Capital Ships Ion Cannon \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nDamage: 14000 \nRate: 14 s \nRange: 9000 m \nCost: 2000 RUs \nBuild time: 120 s \nMaintenance cost: 50 RUs / year \nWeight: 10 t \n\n<b>Prerequisites:</b> \nResearch Division" }, 
    { 
        Type = SubSystem, 
        ThingToBuild = "vgr_cr_p", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"Research",
        DisplayPriority = 3, 
        DisplayedName = "Laser Pulser Turret", 
        Description = "<b>Description:</b> Laser Pulser Turret, Long-Range Anti-Frigate/Capital Ships weapon, composed of: \n1 Anti-Capital Ships Laser Pulser \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nDamage: 3000 x 2 \nRate: 9 s \nRange: 9000 m \nCost: 2000 RUs \nBuild time: 120 s \nMaintenance cost: 50 RUs / year \nWeight: 10 t \n\n<b>Prerequisites:</b> \nResearch Division" }, 
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_ms_plasma", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "FireControlTower", 
				RequiredFleetSubSystems =	"Research & isCaptain",
        DisplayPriority = 74, 
        DisplayedName = "Heavy Ion Cannon", 
        Description = "<b>Description:</b> Heavy Ion Cannon, Long-Range Anti-Capital Ships weapon (to fire press the Z key or the related command icon) \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nDamage: 35000 \nRate: 24 s \nRange: 20000 m \nCost: 12000 RUs \nBuild time: 120 s \nMaintenance cost: 100 RUs / year \nWeight: 10 t \n\n<b>Prerequisites:</b> \nResearch Division \nFire Control Tower (on board) \nCaptain Rank (150 Honor points)" },		
	  { 
        Type = SubSystem, 
        ThingToBuild = "vgr_mbc_c", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"",
        DisplayPriority = 4, 
        DisplayedName = "Concussion Missile Battery", 
        Description = "<b>Description:</b> Concussion Missile Battery, Anti-Fighter/Corvette weapon, composed of: \n3 Anti-Fighter/Corvette Concussion Missiles \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nDamage: 500 x 3 \nRate: 12 s \nRange: 4500 m \nCost: 1000 RUs \nBuild time: 10 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_mbc_m", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"Research",
        DisplayPriority = 5, 
        DisplayedName = "Mortar Missile Battery", 
        Description = "<b>Description:</b> Mortar Missile Battery, Long-Range Anti-Capital Ships weapon, composed of: \n3 Anti-Capital Ships Mortar Missiles \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nDamage: 6000 x 3 \nRate: 11 s \nRange: 12500 m \nCost: 1000 RUs \nBuild time: 10 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_mbc_d", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"Research",
        DisplayPriority = 6, 
        DisplayedName = "Drone Battery", 
        Description = "<b>Description:</b> Drone Battery, produces Minelayer Drones \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nCost: 1000 RUs \nBuild time: 10 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "Vgr_HeavyFusionMissileLauncherMBC", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"",
        DisplayPriority = 7, 
        DisplayedName = "Standard Controller", 
        Description = "<b>Description:</b> Arms the Heavy Missile Battery with standard missiles \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nCost: 1500 RUs \nBuild time: 15 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone" },
		
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_mbc_f", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"Research",
        DisplayPriority = 8, 
        DisplayedName = "Propulsion Controller", 
        Description = "<b>Description:</b> Arms the Heavy Missile Battery with the Propulsion Controller, improves missile' engine providing faster missiles \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nPropulsion: x2 \nCost: 4000 RUs \nBuild time: 40 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_mbc_f1", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"Research",
        DisplayPriority = 9, 
        DisplayedName = "Fire-Rate Controller", 
        Description = "<b>Description:</b> Arms the Heavy Missile Battery with the Fire-Rate Controller, improves missile' loading time providing faster fire rate \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nRate: x2 \nCost: 4000 RUs \nBuild time: 40 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_mbc_f2", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"Research",
        DisplayPriority = 10, 
        DisplayedName = "Hull Controller", 
        Description = "<b>Description:</b> Arms the Heavy Missile Battery with the Hull Controller, improves missile' hull providing more shield penetration and anti-missile resistence \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nShield Penetration: x2 \nAnti-Missile Resistence: x2 \nCost: 4000 RUs \nBuild time: 40 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_cmd_sensors_advancedarray", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"",
        DisplayPriority = 2, 
        DisplayedName = "Advanced Sensors Array", 
        Description = "<b>Description:</b> Improves basic sensors \n\n<b>Type:</b> Sensor (takes 1 Special slot) \nCost: 250 RUs \nBuild time: 20 s \nMaintenance cost: none / year \nWeight: 0.5 t \n\n<b>Prerequisites:</b> \nNone" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_cmd_detecthyperspace", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"",
        DisplayPriority = 4, 
        DisplayedName = "Hyperspace Sensors", 
        Description = "<b>Description:</b> Detects all hyperspace signatures within a radius around the carrier ship \n\n<b>Type:</b> Sensor (takes 1 Special slot) \nCost: 250 RUs \nBuild time: 20 s \nMaintenance cost: none / year \nWeight: 0.5 t \n\n<b>Prerequisites:</b> \nNone" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_cmd_detectcloaked", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"",
        DisplayPriority = 6, 
        DisplayedName = "Anti-Cloaking Sensors", 
        Description = "<b>Description:</b> Improves sensors against cloaked ships \n\n<b>Type:</b> Sensor (takes 1 Special slot) \nCost: 250 RUs \nBuild time: 20 s \nMaintenance cost: none / year \nWeight: 0.5 t \n\n<b>Prerequisites:</b> \nNone" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_cmd_production_probe", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"",
        DisplayPriority = 8, 
        DisplayedName = "Probe Production", 
        Description = "<b>Description:</b> Enables probes production \n\n<b>Type:</b> Sensor (takes 1 Special slot) \nCost: 250 RUs \nBuild time: 20 s \nMaintenance cost: none / year \nWeight: 0.5 t \n\n<b>Prerequisites:</b> \nNone" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_cmd_cloakgenerator", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"",
        DisplayPriority = 10, 
        DisplayedName = "Light Cloak Generator", 
        Description = "<b>Description:</b> Electromagnetic signature manipulation device, when activated, generates a field which temporarily refracts and redirects enemy sensors and visible light around affected radius, effectively masking the carrier ship and nearby allied vessels from detection and sight. Activation requires a minimum amount of available energy and authorization by Command \n\n<b>Type:</b> Sensor (takes 1 Special slot) \nCost: 250 RUs \nBuild time: 20 s \nMaintenance cost: none / year \nWeight: 0.5 t \n\n<b>Prerequisites:</b> \nNone" },
		{ 
        Type = SubSystem, 
        ThingToBuild = "vgr_cmd_antiradiation", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
				RequiredFleetSubSystems =	"",
        DisplayPriority = 12, 
        DisplayedName = "Light Anti-Radiation Field", 
        Description = "<b>Description:</b> Enables Anti-Radiation Field, protects carrier ship and nearby allied ships from the damaging effects of high-energy particles in nebulae \n\n<b>Type:</b> Sensor (takes 1 Special slot) \nCost: 250 RUs \nBuild time: 20 s \nMaintenance cost: none / year \nWeight: 0.5 t \n\n<b>Prerequisites:</b> \nNone" },
		
	-- PRODUCTION MODULE SUBSYSTEMS

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_LC_Production_Fighter",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7100",
		Description = "<b>Description:</b> Enables Fighter class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 450 RUs \nBuild time: 45 s \nEnergy Consume: 1 MeV \nMaintenance cost: 20 RUs / year \nWeight: 3 t \n\n<b>Prerequisites:</b> \nNone", 
	},
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Production_Fighter",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7100",
		Description = "<b>Description:</b> Enables Fighter class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 450 RUs \nBuild time: 45 s \nEnergy Consume: 1 MeV \nMaintenance cost: 20 RUs / year \nWeight: 3 t \n\n<b>Prerequisites:</b> \nNone", 
	},
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_BC_Production_Fighter",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7100",
		Description = "<b>Description:</b> Enables Fighter class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 450 RUs \nBuild time: 45 s \nEnergy Consume: 1 MeV \nMaintenance cost: 20 RUs / year \nWeight: 3 t \n\n<b>Prerequisites:</b> \nNone", 
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Production_Fighter",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7100",
		Description = "<b>Description:</b> Enables Fighter class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 450 RUs \nBuild time: 45 s \nEnergy Consume: 1 MeV \nMaintenance cost: 10 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nNone", 
	},


	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_LC_Production_Corvette",
		RequiredResearch =		"CorvetteTech",
		RequiredFleetSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7102",
		Description = "<b>Description:</b> Enables Corvette class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 900 RUs \nBuild time: 60 s \nEnergy Consume: 2 MeV \nMaintenance cost: 20 RUs / year \nWeight: 3 t \n\n<b>Prerequisites:</b> \nResearch Division \nCorvette Technology (Lieutenant Rank)", 
	},
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Production_Corvette",
		RequiredResearch =		"CorvetteTech",
		RequiredFleetSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7102",
		Description = "<b>Description:</b> Enables Corvette class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 900 RUs \nBuild time: 60 s \nEnergy Consume: 2 MeV \nMaintenance cost: 20 RUs / year \nWeight: 3 t \n\n<b>Prerequisites:</b> \nResearch Division \nCorvette Technology (Lieutenant Rank)", 
	},
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_BC_Production_Corvette",
		RequiredResearch =		"CorvetteTech",
		RequiredFleetSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7102",
		Description = "<b>Description:</b> Enables Corvette class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 900 RUs \nBuild time: 60 s \nEnergy Consume: 2 MeV \nMaintenance cost: 20 RUs / year \nWeight: 3 t \n\n<b>Prerequisites:</b> \nResearch Division \nCorvette Technology (Lieutenant Rank)", 
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Production_Corvette",
		RequiredResearch =		"CorvetteTech",
		RequiredFleetSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7102",
		Description = "<b>Description:</b> Enables Corvette class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 900 RUs \nBuild time: 60 s \nEnergy Consume: 2 MeV \nMaintenance cost: 20 RUs / year \nWeight: 3 t \n\n<b>Prerequisites:</b> \nResearch Division \nCorvette Technology (Lieutenant Rank)", 
	},


	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Production_Frigate",
		RequiredResearch =		"FrigateTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7104",
		Description = "<b>Description:</b> Enables Frigate class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 1300 RUs \nBuild time: 65 s \nEnergy Consume: 2 MeV \nMaintenance cost: 20 RUs / year \nWeight: 3 t \n\n<b>Prerequisites:</b> \nResearch Division \nFrigate Technology (Lieutenant Rank)", 
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Production_Frigate",
		RequiredResearch =		"FrigateTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7104",
		Description = "<b>Description:</b> Enables Frigate class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 1300 RUs \nBuild time: 65 s \nEnergy Consume: 2 MeV \nMaintenance cost: 40 RUs / year \nWeight: 4 t \n\n<b>Prerequisites:</b> \nResearch Division \nFrigate Technology (Lieutenant Rank)", 
	},


	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Module_PlatformControl",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		11,
		DisplayedName =			"$7108",
		Description = "<b>Description:</b> Coordinates weapon platform operations, required for building weapon platforms and missiles \n\n<b>Type:</b> Module (takes 1 module slot) \nCost: 625 RUs \nBuild time: 70 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone",      
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Module_PlatformControl",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		11,
		DisplayedName =			"$7108",
		Description = "<b>Description:</b> Coordinates weapon platform operations, required for building weapon platforms and missiles \n\n<b>Type:</b> Module (takes 1 module slot) \nCost: 625 RUs \nBuild time: 70 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone",      
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Production_CapShip",
		RequiredResearch =		"CapitalTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"Battle Capital Class Facility",
		Description = "<b>Description:</b> Enables Battle Capital class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 2800 RUs \nBuild time: 90 s \nEnergy Consume: 4 Mev \nMaintenance cost: 90 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division \nBattle Capital Technology (Commander Rank)",  
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_SY_Production_CapShip",
		RequiredResearch =		"CapitalTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"Battle Capital Class Facility",
		Description = "<b>Description:</b> Enables Battle Capital class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 2800 RUs \nBuild time: 90 s \nEnergy Consume: 4 Mev \nMaintenance cost: 90 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division \nBattle Capital Technology (Commander Rank)",  
	},
	
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_SY_AdvProduction_CapShip",
		RequiredResearch =		"AdvCapitalTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"Heavy Capital Class Facility",
		Description = "<b>Description:</b> Enables Heavy Capital class production \n\n<b>Type:</b> Production Facility (take 1 production slot) \nCost: 3500 RUs \nBuild time: 120 s \nEnergy Consume: 4 Mev \nMaintenance cost: 90 RUs / year \nWeight: 7 t \n\n<b>Prerequisites:</b> \nResearch Division \nHeavy Capital Technology (Captain Rank)",  
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Module_Research",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"Research Division",
		Description = "<b>Description:</b> Science division, unlocks research and new ships \n\n<b>Type:</b> Module (takes 1 module slot) \nCost: 2500 RUs \nBuild time: 150 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone", 
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Module_Research",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		10,
		DisplayedName =			"Research Division",
		Description = "<b>Description:</b> Science division, unlocks research and new ships \n\n<b>Type:</b> Module (takes 1 module slot) \nCost: 2500 RUs \nBuild time: 150 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone", 
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Module_CloakGenerator",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		30,
		DisplayedName =			"$7118",
		Description = "<b>Description:</b> Electromagnetic signature manipulation device, when activated, generates a field which temporarily refracts and redirects enemy sensors and visible light around affected radius, effectively masking the carrier ship and nearby allied vessels from detection and sight. Activation requires a minimum amount of available energy and authorization by Command. Unlocks cloak upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \nRadius: 2000 m \nCost: 2400 RUs \nBuild time: 90 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division", 
	},		
	
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Module_CloakGenerator",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		30,
		DisplayedName =			"$7118",
		Description = "<b>Description:</b> Electromagnetic signature manipulation device, when activated, generates a field which temporarily refracts and redirects enemy sensors and visible light around affected radius, effectively masking the carrier ship and nearby allied vessels from detection and sight. Activation requires a minimum amount of available energy and authorization by Command. Unlocks cloak upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \nRadius: 2000 m \nCost: 2400 RUs \nBuild time: 90 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division", 
	},		
	
	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Module_HyperspaceInhibitor",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		28,
		DisplayedName =			"$7116",
		Description = "<b>Description:</b> Gravity Well projection system, prevents hostile ships from entering or traveling through hyperspace in the affected area (ships in hyperspace are forced back to normal space). Note that ships traveling via hyperspace gates are unaffected. Requires a minimum amount of available energy \n\n<b>Type:</b> Module (takes 1 module slot) \nRadius: 12000 m \nCost: 2200 RUs \nBuild time: 60 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",      
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Module_HyperspaceInhibitor",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		28,
		DisplayedName =			"$7116",
		Description = "<b>Description:</b> Gravity Well projection system, prevents hostile ships from entering or traveling through hyperspace in the affected area (ships in hyperspace are forced back to normal space). Note that ships traveling via hyperspace gates are unaffected. Requires a minimum amount of available energy \n\n<b>Type:</b> Module (takes 1 module slot) \nRadius: 12000 m \nCost: 2200 RUs \nBuild time: 60 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",      
	},

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Module_FireControl",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		22,
		DisplayedName =			"$7120",
		Description = "<b>Description:</b> Improves the combat effectiveness within a limited radius around the carrier ship, unlocks fire abilities and weapon damage upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 20% Weapon Damage, carrying ship \n+ 15% Weapon Damage, own ships within radius \n+ 20% Weapon Aim, carrying ship \n+ 15% Weapon Aim, own ships within radius \nRadius: 4500 m \nCost: 1500 RUs \nBuild time: 75 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},      


	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Module_FireControl",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		22,
		DisplayedName =			"$7120",
		Description = "<b>Description:</b> Improves the combat effectiveness within a limited radius around the carrier ship, unlocks fire abilities and weapon damage upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 20% Weapon Damage, carrying ship \n+ 15% Weapon Damage, own ships within radius \n+ 20% Weapon Aim, carrying ship \n+ 15% Weapon Aim, own ships within radius \nRadius: 4500 m \nCost: 1500 RUs \nBuild time: 75 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},      

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Module_Hyperspace",
		RequiredResearch =		"HyperspaceGateTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		23,
		DisplayedName =			"$7114",
		Description = "<b>Description:</b> Hyperspace drives and wake generators, allows nearby Frigates and Capital ships to hyperspace, unlocks hyperspace upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \nRadius: 3500 m \nCost: 1600 RUs \nBuild time: 60 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division \nHyperspace Gate Technology",},      

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Module_Hyperspace",
		RequiredResearch =		"HyperspaceGateTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		23,
		DisplayedName =			"$7114",
		Description = "<b>Description:</b> Hyperspace drives and wake generators, allows nearby Frigates and Capital ships to hyperspace, unlocks hyperspace upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \nRadius: 3500 m \nCost: 1600 RUs \nBuild time: 60 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division \nHyperspace Gate Technology",},      

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Sensors_AdvancedArray",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7122",
		Description = "<b>Description:</b> Improves basic sensors, unlocks sensor upgrades \n\n<b>Type:</b> Sensor (takes 1 special slot, you can build only one sensor per ship) \nCost: 250 RUs \nBuild time: 35 s \nMaintenance cost: 5 RUs / year \nWeight: 1 t \n\n<b>Prerequisites:</b> \nNone",},


	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Sensors_AdvancedArray",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		0,
		DisplayedName =			"$7122",
		Description = "<b>Description:</b> Improves basic sensors, unlocks sensor upgrades \n\n<b>Type:</b> Sensor (takes 1 special slot, you can build only one sensor per ship) \nCost: 250 RUs \nBuild time: 35 s \nMaintenance cost: 5 RUs / year \nWeight: 1 t \n\n<b>Prerequisites:</b> \nNone",},


	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_C_Sensors_DetectHyperspace",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Hyperspace",
		DisplayPriority =		1,
		DisplayedName =			"$7126",
		Description = "<b>Description:</b> Detects all hyperspace signatures within a radius around the carrier ship \n\n<b>Type:</b> Sensor (takes 1 special slot, you can build only one sensor per ship) \nCost: 250 RUs \nBuild time: 35 s \nMaintenance cost: 5 RUs / year \nWeight: 1 t \n\n<b>Prerequisites:</b> \nHyperspace Module",},       

	{ 
		Type = 					SubSystem, 
		ThingToBuild = 			"Vgr_MS_Sensors_DetectHyperspace",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Hyperspace",
		DisplayPriority =		1,
		DisplayedName =			"$7126",
		Description = "<b>Description:</b> Detects all hyperspace signatures within a radius around the carrier ship \n\n<b>Type:</b> Sensor (takes 1 special slot, you can build only one sensor per ship) \nCost: 250 RUs \nBuild time: 35 s \nMaintenance cost: 5 RUs / year \nWeight: 1 t \n\n<b>Prerequisites:</b> \nHyperspace Module",},       
	
	{
        Type = SubSystem,
        ThingToBuild = "Vgr_MS_Module_build",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 25,
        DisplayedName = "Manufacturing Controller",
        Description = "<b>Description:</b> Contains improved control equipment for the ship's phased dissambler array, improving the ship's production speed, unlocks build upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 40% Manufacturing, carrying ship \nCost: 2000 RUs \nBuild time: 60 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},       
        
        {
        Type = SubSystem,
        ThingToBuild = "Vgr_C_Module_build",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 25,
        DisplayedName = "Manufacturing Controller",
        Description = "<b>Description:</b> Contains improved control equipment for the ship's phased dissambler array, improving the ship's production speed, unlocks build upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 40% Manufacturing, carrying ship \nCost: 2000 RUs \nBuild time: 60 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},       
     
	
	{ 
        Type = SubSystem, 
        ThingToBuild = "Vgr_C_Sensors_DetectCloaked", 
        RequiredResearch = "", 
        RequiredFleetSubSystems = "CloakGenerator", 
        DisplayPriority = 2, 
        DisplayedName = "$7024", 
        Description = "<b>Description:</b> Improves sensors against cloaked ships, unlocks cloak upgrades \n\n<b>Type:</b> Sensor (takes 1 special slot, you can build only one sensor per ship) \nCost: 250 RUs \nBuild time: 35 s \nMaintenance cost: 5 RUs / year \nWeight: 1 t \n\n<b>Prerequisites:</b> \nCloak Generator",},
        
        {
        Type = SubSystem, 
        ThingToBuild = "Vgr_MS_Sensors_DetectCloaked", 
        RequiredResearch = "", 
        RequiredFleetSubSystems = "CloakGenerator", 
        DisplayPriority = 2, 
        DisplayedName = "$7024", 
        Description = "<b>Description:</b> Improves sensors against cloaked ships, unlocks cloak upgrades \n\n<b>Type:</b> Sensor (takes 1 special slot, you can build only one sensor per ship) \nCost: 250 RUs \nBuild time: 35 s \nMaintenance cost: 5 RUs / year \nWeight: 1 t \n\n<b>Prerequisites:</b> \nCloak Generator",},
  { 
		Type = 				SubSystem, 
		ThingToBuild = 			"Vgr_HeavyCannonTurrets",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		64,
		DisplayedName =			"Heavy Cannon Turrets",
		Description = "<b>Description:</b> Heavy Cannon Turrets System, Anti-Frigate weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 11000 x 4 \nRate 10 s \nRange 6500 m \nCost: 1900 RUs \nBuild time: 85 s \nMaintenance cost: 60 RUs / year \nWeight: 9 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_lithiumion_port_s",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		65,
		DisplayedName =			"Laser Cannon Turret",
		Description = "<b>Description:</b> Laser Cannon Turret System, Anti-Fighter/Corvette weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 550 x 2 \nRate 2.5 s \nRange 4000 m \nCost: 600 RUs \nBuild time: 30 s \nMaintenance cost: 10 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_lithiumion_port_s1",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		66,
		DisplayedName =			"Laser Cannon Turret",
		Description = "<b>Description:</b> Laser Cannon Turret System, Anti-Fighter/Corvette weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 550 x 2 \nRate 2.5 s \nRange 4000 m \nCost: 600 RUs \nBuild time: 30 s \nMaintenance cost: 10 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_lithiumion_port",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		65,
		DisplayedName =			"Laser Cannon Turret",
		Description = "<b>Description:</b> Laser Cannon Turret System, Anti-Fighter/Corvette weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 550 x 2 \nRate 2.5 s \nRange 4000 m \nCost: 600 RUs \nBuild time: 30 s \nMaintenance cost: 10 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_lithiumion_stbd",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		66,
		DisplayedName =			"Laser Cannon Turret",
		Description = "<b>Description:</b> Laser Cannon Turret System, Anti-Fighter/Corvette weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 550 x 2 \nRate 2.5 s \nRange 4000 m \nCost: 600 RUs \nBuild time: 30 s \nMaintenance cost: 10 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_lithiumion_port1",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		67,
		DisplayedName =			"Laser Cannon Turret",
		Description = "<b>Description:</b> Laser Cannon Turret System, Anti-Fighter/Corvette weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 550 x 2 \nRate 2.5 s \nRange 4000 m \nCost: 600 RUs \nBuild time: 30 s \nMaintenance cost: 10 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_lithiumion_stbd1",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		68,
		DisplayedName =			"Laser Cannon Turret",
		Description = "<b>Description:</b> Laser Cannon Turret System, Anti-Fighter/Corvette weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 550 x 2 \nRate 2.5 s \nRange 4000 m \nCost: 600 RUs \nBuild time: 30 s \nMaintenance cost: 10 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_dualflechette_port",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		69,
		DisplayedName =			"Kinetic Cannon Turret",
		Description = "<b>Description:</b> Kinetic Cannon Turret System, Advanced Anti-Frigate weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 625 x 2 \nRate 4.5 s \nRange 6000 m \nCost: 700 RUs \nBuild time: 35 s \nMaintenance cost: 15 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_dualflechette_stbd",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		70,
		DisplayedName =			"Kinetic Cannon Turret",
		Description = "<b>Description:</b> Kinetic Cannon Turret System, Advanced Anti-Frigate weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 625 x 2 \nRate 4.5 s \nRange 6000 m \nCost: 700 RUs \nBuild time: 35 s \nMaintenance cost: 15 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_dualflechette_port1",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		71,
		DisplayedName =			"Kinetic Cannon Turret",
		Description = "<b>Description:</b> Kinetic Cannon Turret System, Advanced Anti-Frigate weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 625 x 2 \nRate 4.5 s \nRange 6000 m \nCost: 700 RUs \nBuild time: 35 s \nMaintenance cost: 15 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_dualflechette_stbd1",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		72,
		DisplayedName =			"Kinetic Cannon Turret",
		Description = "<b>Description:</b> Kinetic Cannon Turret System, Advanced Anti-Frigate weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 625 x 2 \nRate 4.5 s \nRange 6000 m \nCost: 700 RUs \nBuild time: 35 s \nMaintenance cost: 15 RUs / year \nWeight: 2 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_quadflechette_stbd",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		73,
		DisplayedName =			"Double Kinetic Cannon Turret",
		Description = "<b>Description:</b> Double Kinetic Cannon Turret System, Advanced Anti-Frigate weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 625 x 4 \nRate 4.5 s \nRange 6000 m \nCost: 1200 RUs \nBuild time: 45 s \nMaintenance cost: 20 RUs / year \nWeight: 4 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},	
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_quadflechette_stbd1",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		74,
		DisplayedName =			"Double Kinetic Cannon Turret",
		Description = "<b>Description:</b> Double Kinetic Cannon Turret System, Advanced Anti-Frigate weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 625 x 4 \nRate 4.5 s \nRange 6000 m \nCost: 1200 RUs \nBuild time: 45 s \nMaintenance cost: 20 RUs / year \nWeight: 4 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},	
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_quadflechette_stbd2",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research",
		DisplayPriority =		75,
		DisplayedName =			"Double Kinetic Cannon Turret",
		Description = "<b>Description:</b> Double Kinetic Cannon Turret System, Advanced Anti-Frigate weapon \n\n<b>Type:</b> Weapon (takes 1 special slot) \nDamage 625 x 4 \nRate 4.5 s \nRange 6000 m \nCost: 1200 RUs \nBuild time: 45 s \nMaintenance cost: 20 RUs / year \nWeight: 4 t \n\n<b>Prerequisites:</b> \nResearch Division" 
	},		
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_qje_quadflechette_stbdF",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research & isLieutenant",
		RequiredShipSubSystems =	"FireControlTower",
		DisplayPriority =		72,
		DisplayedName =			"Double Kinetic Cannon (SET)",
		Description = "<b>Description:</b> Double Kinetic Cannon Turret System, Advanced Anti-Frigate weapon, composed of: \n4 Anti-Frigate Double Kinetic Cannon Turrets \n2 Anti-Fighter Long-Range Suppressor Fire Turrets \n\n<b>Type:</b> Weapon (takes 6 Special slot) \nDamage 625 x 16 \nRate 4.5 s \nRange 6000 m \nCost: 6000 RUs \nBuild time: 120 s \nMaintenance cost: 80 RUs / year \nWeight: 1 t \n\n<b>Prerequisites:</b> \nResearch Division \nFire Control Tower (on board) \nLieutenant Rank (30 Honor points)" 
	},	
	   				
	{ 
		Type = 				SubSystem, 
		ThingToBuild = 			"vgr_pl",
		RequiredResearch =		"",
		RequiredFleetSubSystems =	"Research & isLieutenant & 4000ru",
		RequiredShipSubSystems =	"FireControlTower",
		DisplayPriority =		71,
		DisplayedName =			"Perforation Pod Controller",
		Description = "<b>Description:</b> Automated Perforation Pod Controller, enables the Flag Ship Perforation Pods Attack for a short time, needs a lot of energy \n\n<b>Type:</b> Weapon (doesn't take Special slot) \nCost: 4000 RUs \nBuild time: none \nEnergy Consume: 10 MeV \n\n<b>Prerequisites:</b> \nResearch Division \nFire Control Tower (on board) \nLieutenant Rank (30 Honor points) \n4000 RUs (Stored)" 
	},			  		  
	
---command fortress

  { 
        Type = Ship, 
        ThingToBuild = "Vgr_CommandFortress",         
        RequiredResearch = "CommandFortressTech", 
        RequiredShipSubSystems = "Hyperspace", 
        RequiredFleetSubSystems = "", 
        DisplayPriority = 350, 
        DisplayedName = "Command Fortress", 
        Description = "<b>Description:</b> Capital Class Support Ship, helpful to control specific map zones, it carries advanced communication systems, equipped with: \n15 Special slot \n8 Heavy Laser Cannon Turret \nIntegrated Hyperspace System \n\n<b>Type:</b> Capital Ship \nCost: 11000 RUs \nBuild time: 700 s \nMaintenance cost: 250 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nHyperspace Module (on board) \nCommand Fortress Chassis Technology (Admiral Rank) \n6 officers \n50 crew members" }, 
    { 
				Type = SubSystem, 
				ThingToBuild = "hgn_commandfortress_defencefacility",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 20,
				DisplayedName = "Defense Facility",
        Description = "<b>Description:</b> Defense and support systems improver, includes advanced defense technologies: enable the Perimeter Defense Field, disrupts enemy abilities and improves armour of friendly units within a limited radius around the Fortress, enables the Anti-Radiation Field, prevents enemy ships from entering or exiting hyperspace, the integrated Repair System improves the auto repair rate of the Fortress and own nearby ships, also unlocks dock and auto-repair upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \nCost: 5000 RUs \nBuild time: 250 s \nMaintenance cost: 150 RUs / year \nWeight: 12 t \n\n<b>Prerequisites:</b> \nNone",},	   
  { 
				Type = SubSystem, 
				ThingToBuild = "hgn_commandfortress_comunicationfacility",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 0,
				DisplayedName = "Communications Facility",
        Description = "<b>Description:</b> Communications improver, basically includes any available sensors technology: improves basic sensors, improves sensors against cloaked ships, detects all hyperspace signatures, scrumbles enemy sensors, enables Sensor Ping ability, unlocks sensor upgrades, also extends Hyperspace abilities to the nearby ships \n\n<b>Type:</b> Sensor (takes 1 special slot, you can build only one sensor per ship) \nCost: 1500 RUs \nBuild time: 90 s \nMaintenance cost: 100 RUs / year \nWeight: 9 t \n\n<b>Prerequisites:</b> \nNone",},	          
  { 
			  Type = SubSystem, 
			  ThingToBuild = "vgr_qje_quadflechette_stbd_cf",	
			  RequiredResearch = "", 
        RequiredFleetSubSystems = "Research", 
        RequiredShipSubSystems = "CFRepairSystem",      	    
			  DisplayPriority = 36,
			  DisplayedName = "Double Kinetic Cannon (SET)", 
        Description = "<b>Description:</b> Double Kinetic Cannon Turret System, Advanced Anti-Frigate weapon set, composed of: \n8 Anti-Frigate Double Kinetic Cannon Turrets \n\n<b>Type:</b> Weapon (takes 8 Special slot) \nDamage: 625 x 32 \nRate: 4.5 s \nRange: 6000 m \nCost: 6000 RUs \nBuild time: 300 s \nMaintenance cost: 120 RUs / year \nWeight: 16 t \n\n<b>Prerequisites:</b> \nResearch Division\nDefense Facility (on board)" }, 	   
  	
	 { 
			  Type = SubSystem, 
			  ThingToBuild = "vgr_ion1",	
			  RequiredResearch = "", 
        RequiredFleetSubSystems = "Research", 
        RequiredShipSubSystems = "CFRepairSystem",      	    
			  DisplayPriority = 37,
			  DisplayedName = "Laser Pulsar Cannon (SET)", 
        Description = "<b>Description:</b> Heavy Laser Pulsar Cannon Turret System, Anti-Frigate/Capital Ships weapon set, composed of: \n6 Anti-Frigate/Capital Ships Cannon Turrets \n\n<b>Type:</b> Weapon (takes 6 Special slot) \nDamage: 6000 x 12 \nRate: 12 s \nRange: 6500 m \nCost: 7000 RUs \nBuild time: 350 s \nMaintenance cost: 90 RUs / year \nWeight: 14 t \n\n<b>Prerequisites:</b> \nResearch Division\nDefense Facility (on board)" }, 	   
	 			   		  		 		  		 		  		  	  	      		  		  		  		  		  		  		  		  		  		  		  	      
	
	{ 
			  Type = SubSystem, 
			  ThingToBuild = "missile_box",	
			  RequiredResearch = "", 
        RequiredFleetSubSystems = "Research", 
        RequiredShipSubSystems = "CFRepairSystem",      	    
			  DisplayPriority = 38,
			  DisplayedName = "Perforation Pod Launcher (SET)", 
        Description = "<b>Description:</b> Perforation Pod Launcher System, Anti-Capital Ships weapon set, composed of: \n6 Anti-Capital Ships Pod Launcher \n\n<b>Type:</b> Weapon (takes 6 Special slot) \nDamage: 6000 x 6 \nRate: 7 s \nRange: 6500 m \nCost: 8000 RUs \nBuild time: 400 s \nMaintenance cost: 120 RUs / year \nWeight: 14 t \n\n<b>Prerequisites:</b> \nResearch Division\nDefense Facility (on board)" }, 	   
	 
	 { 
			  Type = SubSystem, 
			  ThingToBuild = "vgr_dt3_turret_light",	
			  RequiredResearch = "", 
        RequiredFleetSubSystems = "Research", 
        RequiredShipSubSystems = "",      	    
			  DisplayPriority = 76,
			  DisplayedName = "Concussion Cannon", 
        Description = "<b>Description:</b> Concussion Cannon Turret System, Anti-Corvette/Frigate weapon, composed of: \n4 Anti-Corvette/Frigate Micro-Bomb Cannons \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nDamage: 500 x 4 \nRate: 9 s \nRange: 6200 m \nCost: 3000 RUs \nBuild time: 100 s \nMaintenance cost: 30 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division" }, 	   		  		  
	 { 
			  Type = SubSystem, 
			  ThingToBuild = "vgr_dt3_turret_light1",	
			  RequiredResearch = "", 
        RequiredFleetSubSystems = "Research", 
        RequiredShipSubSystems = "",      	    
			  DisplayPriority = 77,
			  DisplayedName = "Concussion Cannon", 
        Description = "<b>Description:</b> Concussion Cannon Turret System, Anti-Corvette/Frigate weapon, composed of: \n4 Anti-Corvette/Frigate Micro-Bomb Cannons \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nDamage: 500 x 4 \nRate: 9 s \nRange: 6200 m \nCost: 3000 RUs \nBuild time: 100 s \nMaintenance cost: 30 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division" }, 	   		  		  	
	 { 
			  Type = SubSystem, 
			  ThingToBuild = "vgr_dt3_turret",	
			  RequiredResearch = "", 
        RequiredFleetSubSystems = "Research", 
        RequiredShipSubSystems = "CFRepairSystem",      	    
			  DisplayPriority = 39,
			  DisplayedName = "Concussion Cannon (SET)", 
        Description = "<b>Description:</b> Heavy Concussion Cannon Turret System, Anti-Corvette/Frigate weapon set, composed of: \n3 Anti-Corvette/Frigate Concussion Cannon Turrets \n\n<b>Type:</b> Weapon (takes 3 Special slot) \nDamage: 5000 x 12 \nRate: 9 s \nRange: 6500 m \nCost: 9000 RUs \nBuild time: 375 s \nMaintenance cost: 150 RUs / year \nWeight: 14 t \n\n<b>Prerequisites:</b> \nResearch Division\nDefense Facility (on board)" }, 	   		  
   				      
	 { 
			  Type = SubSystem, 
			  ThingToBuild = "missile_boxbc",	
			  RequiredResearch = "", 
        RequiredFleetSubSystems = "Research", 
        RequiredShipSubSystems = "",      	    
			  DisplayPriority = 65,
			  DisplayedName = "Perforation Pod Launcher", 
        Description = "<b>Description:</b> Perforation Pod Launcher System, Anti-Capital Ships weapon, composed of: \n1 Anti-Capital Ships Pod Launcher \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nDamage: 6000 \nRate: 7 s \nRange: 6500 m \nCost: 1400 RUs \nBuild time: 90 s \nMaintenance cost: 20 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division" }, 	  
   { 
			  Type = SubSystem, 
			  ThingToBuild = "missile_box1bc",	
			  RequiredResearch = "", 
        RequiredFleetSubSystems = "Research", 
        RequiredShipSubSystems = "",      	    
			  DisplayPriority = 66,
			  DisplayedName = "Perforation Pod Launcher", 
        Description = "<b>Description:</b> Perforation Pod Launcher System, Anti-Capital Ships weapon, composed of: \n1 Anti-Capital Ships Pod Launcher \n\n<b>Type:</b> Weapon (takes 1 Special slot) \nDamage: 6000 \nRate: 7 s \nRange: 6500 m \nCost: 1400 RUs \nBuild time: 90 s \nMaintenance cost: 20 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division" }, 	   		  		   		  		 		  		 		  		  	  	      		  		  		  		  		  		  		  		  		  		  		  	            		  		   		  		 		  		 		  		  	  	      		  		  		  		  		  		  		  		  		  		  		  	      
	
	{
        Type = SubSystem,
        ThingToBuild = "Vgr_MS_Module_Mine",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 16,
        DisplayedName = "Harvest Control Module",
        Description = "<b>Description:</b> Improves harvesting operations within a limited Radius around the carrier ship, unlocks harvesting upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 15% Harvest, own collectors within radius \n+ 15% Load, own collectors within radius \n+ 15% Drop Off, own collectors within radius \nRadius: 3000 m \nCost: 800 RUs \nBuild time: 60 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone",},     
        
        {
        Type = SubSystem,
        ThingToBuild = "Vgr_C_Module_Mine",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 16,
        DisplayedName = "Harvest Control Module",
        Description = "<b>Description:</b> Improves harvesting operations within a limited Radius around the carrier ship, unlocks harvesting upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 15% Harvest, own collectors within radius \n+ 15% Load, own collectors within radius \n+ 15% Drop Off, own collectors within radius \nRadius: 3000 m \nCost: 800 RUs \nBuild time: 60 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone",},       
        
        {
        Type = SubSystem,
        ThingToBuild = "Vgr_MS_Module_drive",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 18,
        DisplayedName = "Drive System",
        Description = "<b>Description:</b> Provides additional power to the ship's engines and thrusters, improving mobility of carrier ship and friendly units within a limited radius around the carrier ship, unlocks drive and speed upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 50% Drive, ship \n+ 10% Drive, own ships within radius\n+ 40% Speed, ship \n+ 10% Speed, own ships within radius \nRadius: 5250 m \nCost: 1600 RUs \nBuild time: 35 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone",},
     
     {
        Type = SubSystem,
        ThingToBuild = "Vgr_C_Module_drive",
        RequiredResearch = "",
        RequiredFleetSubSystems = "",
        DisplayPriority = 18,
        DisplayedName = "Drive System",
        Description = "<b>Description:</b> Provides additional power to the ship's engines and thrusters, improving mobility of carrier ship and friendly units within a limited radius around the carrier ship, unlocks drive and speed upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 50% Drive, ship \n+ 10% Drive, own ships within radius\n+ 40% Speed, ship \n+ 10% Speed, own ships within radius \nRadius: 5250 m \nCost: 1600 RUs \nBuild time: 35 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nNone",},
        
        {
        Type = SubSystem,
        ThingToBuild = "Vgr_C_Module_Defensefield",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 20,
        DisplayedName = "Defense Control Tower",
        Description = "<b>Description:</b> Improves damage control systems and rapid response crews, effectively enhancing the carrier ship's health, unlocks defense abilities and health upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 25% Health \nCost: 1400 RUs \nBuild time: 70 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},
     
     {
        Type = SubSystem,
        ThingToBuild = "Vgr_MS_Module_Defensefield",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 20,
        DisplayedName = "Defense Control Tower",
        Description = "<b>Description:</b> Improves damage control systems and rapid response crews, effectively enhancing the carrier ship's health, unlocks defense abilities and health upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 25% Health \nCost: 1400 RUs \nBuild time: 70 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},
        
        {
        Type = SubSystem,
        ThingToBuild = "Vgr_MS_Module_Repair",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 24,
        DisplayedName = "Repair System",
        Description = "<b>Description:</b> Contains telemetry systems for controlling large numbers of automated repair drones, allowing this ship and nearby allied ships to self repair at improved rates, unlocks dock and auto-repair upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 460% Repair, own ships within radius \n+ 150% Docking, carrying ship \nRadius: 6000 m \nCost: 1800 RUs \nBuild time: 80 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},   
        
        {
        Type = SubSystem,
        ThingToBuild = "Vgr_C_Module_Repair",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 24,
        DisplayedName = "Repair System",
        Description = "<b>Description:</b> Contains telemetry systems for controlling large numbers of automated repair drones, allowing this ship and nearby allied ships to self repair at improved rates, unlocks dock and auto-repair upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n+ 460% Repair, own ships within radius \n+ 150% Docking, carrying ship \nRadius: 6000 m \nCost: 1800 RUs \nBuild time: 80 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},   
        
        {
        Type = SubSystem,
        ThingToBuild = "Vgr_MS_Module_Defensefieldshield",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 62,
        DisplayedName = "Anti-Radiation Field",
        Description = "<b>Description:</b> Enables Anti-Radiation Field, protects carrier ship and nearby allied ships from the damaging effects of high-energy particles in nebulae, unlocks anti-radiation upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n-90% Nebula sensivity, own ships within radius \n-90% Dust Cloud sensivity, own ships within radius \nRadius: 1850 m \nCost: 2600 RUs \nBuild time: 40 s \nMaintenance cost: 50 RUs/year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},  		
    {
        Type = SubSystem,
        ThingToBuild = "Vgr_C_Module_Defensefieldshield",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 62,
        DisplayedName = "Anti-Radiation Field",
        Description = "<b>Description:</b> Enables Anti-Radiation Field, protects carrier ship and nearby allied ships from the damaging effects of high-energy particles in nebulae, unlocks anti-radiation upgrades \n\n<b>Type:</b> Module (takes 1 module slot) \n-90% Nebula sensivity, own ships within radius \n-90% Dust Cloud sensivity, own ships within radius \nRadius: 1850 m \nCost: 2600 RUs \nBuild time: 40 s \nMaintenance cost: 50 RUs/year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},  
        {
        Type = SubSystem,
        ThingToBuild = "Vgr_MS_Module_holescrumbler",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 63,
        DisplayedName = "Power Disruptor",
        Description = "<b>Description:</b> Contains a suite of ECM and computer disruption systems, which will disrupt most systems on enemy ships, reducing their ability to operate at full efficiency within the afflicted area. Activation requires a minimum amount of available energy \n\n<b>Type:</b> Module (takes 1 module slot) \n-30% Speed \n-25% Drive \n-20% Weapon Damage \n-30% Weapon Aim \nRadius: 8000 m \nCost: 3000 RUs \nBuild time: 100 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",},      
        
        {
        Type = SubSystem,
        ThingToBuild = "Vgr_C_Module_holescrumbler",
        RequiredResearch = "",
        RequiredFleetSubSystems = "Research",
        DisplayPriority = 67,
        DisplayedName = "Power Disruptor",
        Description = "<b>Description:</b> Contains a suite of ECM and computer disruption systems, which will disrupt most systems on enemy ships, reducing their ability to operate at full efficiency within the afflicted area. Activation requires a minimum amount of available energy \n\n<b>Type:</b> Module (takes 1 module slot) \n-30% Speed \n-25% Drive \n-20% Weapon Damage \n-30% Weapon Aim \nRadius: 8000 m \nCost: 3000 RUs \nBuild time: 100 s \nMaintenance cost: 50 RUs / year \nWeight: 5 t \n\n<b>Prerequisites:</b> \nResearch Division",}, 
        {
        Type = SubSystem,
        ThingToBuild = "Vgr_MS_Armor",
        RequiredResearch = "",
				RequiredShipSubSystems =	"DefenseFieldModule",
        RequiredFleetSubSystems = "Research & isCommander",				
        DisplayPriority = 73,
        DisplayedName = "Armor Asset",
        Description = "<b>Description:</b> Heavy Armor Asset, improves Mothership's attack and defense systems \n\n<b>Type:</b> Special (doesn't take Special slot)  \n+ 10% Speed \n+ 5% Drive \n+ 40% Health \n+ 20% Weapon Damage \n+ 20% Weapon Aim \n+ 40% Auto-repair \nCost: 8000 RUs \nBuild time: 250 s \nMaintenance cost: none / year \nWeight: 25 t \n\n<b>Prerequisites:</b> \nResearch Division \nDefense Control Tower (on board) \nCommander Rank (80 honor points)",},           



	-------------------------------------------------------------------------------
	-- SHIPS


	-- Fighters ---------------

	{
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Scout",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		20,
		DisplayedName =			"$7130",
		Description = "<b>Description:</b> Reconnaissance Fighter Squadron, equipped with: \nLight Flechette Gun \nElectro Magnetic Pulse Emitter (when upgraded) \nSensor Ping (when upgraded) \n\n<b>Type:</b> Fighter \nCost: 350 RUs \nBuild time: 20 s \nMaintenance cost: 5 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \n3 crew members"  
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Interceptor",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		21,
		DisplayedName =			"$7132",
		Description = "<b>Description:</b> Basic Fighter Squadron, equipped with: \nFlechette Gun \n\n<b>Type:</b> Fighter \nCost: 500 RUs \nBuild time: 35 s \nMaintenance cost: 7 RUs / year \nStrong vs: Fighters \n\n<b>Prerequisites:</b> \nFighter Facility \n7 crew members" 
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Bomber",
		RequiredResearch =		"PlasmaBombs",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		24,
		DisplayedName =			"$7134",
		Description = "<b>Description:</b> Anti-Capital Ship Fighter Squadron, equipped with: \n2 Anti-Capital Ship Plasma Bomb Launcher \n2 Anti-SubSystem Plasma Bombs Launcher (when upgraded) \n\n<b>Type:</b> Fighter \nCost: 550 RUs \nBuild time: 40 s \nMaintenance cost: 8 RUs / year \nStrong vs: Frigates, Capital Ships, Subsystems (when upgraded) \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nFusion Bomb Technology \n6 crew members"  
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LanceFighter",
		RequiredResearch =		"LanceBeams",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		26,
		DisplayedName =			"$7136",
		Description = "<b>Description:</b> Anti-Corvette Fighter Squadron, equipped with: \nLight Plasma Lance \n\n<b>Type:</b> Fighter \nCost: 550 RUs \nBuild time: 35 s \nMaintenance cost: 7 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nLance Beam Technology \n5 crew members" 
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Defender",
		RequiredResearch =		"DefenderTech",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		28,
		DisplayedName =			"Defender",
		Description = "<b>Description:</b> Advanced Fighter Squadron, equipped with: \n3 Flechette Guns \n\n<b>Type:</b> Fighter \nCost: 650 RUs \nBuild time: 50 s \nMaintenance cost: 9 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nDefender Technology \n5 crew members" 
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HeavyFighter",
		RequiredResearch =		"HeavyFighterTech",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		30,
		DisplayedName =			"Heavy Fighter",
		Description = "<b>Description:</b> Heavy Fighter Squadron, equipped with: \nLight Plasma Lance \nConcussion Missile Launcher \n\n<b>Type:</b> Fighter \nCost: 750 RUs \nBuild time: 55 s \nMaintenance cost: 12 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nHeavy Fighter Technology \n5 crew members" 
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MissileBomber",
		RequiredResearch =		"MissileBomberTech",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		31,
		DisplayedName =			"Missile Bomber",
		Description = "<b>Description:</b> Advanced Anti-Capital Ship Fighter Squadron, equipped with: \n2 Anti-Capital Ship Plasma Bomb Launcher \n2 Anti-SubSystem Plasma Bombs Launcher (when upgraded) \n2 Fusion Missile Launcher \n\n<b>Type:</b> Fighter \nCost: 850 RUs \nBuild time: 60 s \nMaintenance cost: 13 RUs / year \nStrong vs: Frigates, Capital Ships, Subsystems (when upgraded)  \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nMissile Bomber Technology (Lieutenant Rank) \n6 crew members" 
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_EliteFighter",
		RequiredResearch =		"MultiroleTech",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		32,
		DisplayedName =			"Multi-Role Fighter",
		Description = "<b>Description:</b> Multi-Role Fighter Squadron, equipped with: \nFast Flechette Cannon \n2 Flechette Guns \n2 Anti-Capital Ship Plasma Bomb Launcher \n2 Anti-SubSystem Plasma Bombs Launcher (when upgraded) \n\n<b>Type:</b> Fighter \nCost: 950 RUs \nBuild time: 65 s \nMaintenance cost: 13 RUs / year \nStrong vs: Multi-Role \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nMulti-Role Technology (Commander Rank) \n5 crew members" 
	},
	

	-- Corvettes --------------

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"vgr_shamshiriictg",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		10,
		DisplayedName =			"Swarm Corvette",
		Description = "<b>Description:</b> Anti-Fighter Corvette Squadron, equipped with: \n2 Flechette Guns \nAblative defense field (if upgraded) \nAnti-Radiation Field (if upgraded) \n\n<b>Type:</b> Corvette \nCost: 500 RUs \nBuild time: 40 s \nMaintenance cost: 10 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nCorvette Facility \n8 crew members"  
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MissileCorvette",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		100,
		DisplayedName =			"$7138",
		Description = "<b>Description:</b> Basic Corvette Squadron, equipped with: \nConcussion Missile Launcher \n\n<b>Type:</b> Corvette \nCost: 625 RUs \nBuild time: 45 s \nMaintenance cost: 11 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nCorvette Facility \n8 crew members"  
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LaserCorvette",
		RequiredResearch =		"CorvetteLaser",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		105,
		DisplayedName =			"$7140",
		Description = "<b>Description:</b> Anti-Frigate Corvette Squadron, equipped with: \nLaser Cannon \n\n<b>Type:</b> Corvette \nCost: 650 RUs \nBuild time: 45 s \nMaintenance cost: 12 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nLaser Systems Technology \n8 crew members"   
	},
	
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_PlasmaCorvette",
		RequiredResearch =		"CorvettePlasma",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		106,
		DisplayedName =			"Plasma Corvette",
		Description = "<b>Description:</b> Anti-Frigate/Capital Ships Corvette Squadron, equipped with: \nPlasma Cannon \n\n<b>Type:</b> Corvette \nCost: 650 RUs \nBuild time: 45 s \nMaintenance cost: 12 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nPlasma Systems Technology \n8 crew members"   
	},
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Vgr_CommandCorvette",
		RequiredResearch =		"CorvetteCommand",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		110,
		DisplayedName =			"$7144",
		Description = "<b>Description:</b> Utility Corvette, improves all nearby ship weapon damage (+15%) and accuracy (+15%), equipped with: \nImproved Sensors \nWeapon Command System \n\n<b>Type:</b> Corvette \nCost: 400 RUs \nBuild time: 30 s \nMaintenance cost: 8 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nCommand System Technology \n2 crew members"   
	},
	
  { 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_EMPCorvette",
		RequiredResearch =		"CorvetteEMP",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		114,
		DisplayedName =			"EMP Corvette",
		Description = "<b>Description:</b> EMP Corvette Squadron, equipped with: \nFlechette Cannon \n2 EMP Light Cannons \n\n<b>Type:</b> Corvette \nCost: 700 RUs \nBuild time: 45 s \nMaintenance cost: 13 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nEMP Corvette Technology \n6 crew members"  
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MinelayerCorvette",
		RequiredResearch =		"CorvetteGraviticAttraction",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		115,
		DisplayedName =			"$7142",
		Description = "<b>Description:</b> Utility Corvette, can deploy mines as a special action (default N), equipped with: \nKinetic Cannon \nMine Sweeper \nMine Deploying System \n\n<b>Type:</b> Corvette \nCost: 800 RUs \nBuild time: 45 s \nMaintenance cost: 6 RUs / year \nStrong vs: Capital Ships \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nMinelaying Technology \n3 crew members"   
	},	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"vgr_mortarcorvette",
		RequiredResearch =		"mortartech",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		118,
		DisplayedName =			"Scatterer Corvette",
		Description = "<b>Description:</b> Advanced Corvette Squadron, equipped with: \n8 Concussion Missile Launchers \n\n<b>Type:</b> Corvette \nCost: 900 RUs \nBuild time: 60 s \nMaintenance cost: 14 RUs / year \nStrong vs: Fighters, Corvettes, Frigates \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nScatterer Technology (Lieutenant Rank) \n9 crew members"   
	},
	
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MultiLanceCorvette",
		RequiredResearch =		"CorvetteMultiLance",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		119,
		DisplayedName =			"MultiLance Corvette",
		Description = "<b>Description:</b> Advanced Corvette Squadron, equipped with: \n2 Laser Turrets \n\n<b>Type:</b> Corvette \nCost: 900 RUs \nBuild time: 60 s \nMaintenance cost: 13 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nMultiLance Technology (Lieutenant Rank) \n9 crew members"   
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Standvette",
		RequiredResearch =		"stormtech",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		117,
		DisplayedName =			"Storm Corvette",
		Description = "<b>Description:</b> Anti-Corvette/Frigate Squadron, equipped with: \nFlechette Turret \n\n<b>Type:</b> Corvette \nCost: 800 RUs \nBuild time: 50 s \nMaintenance cost: 14 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nCorvette Facility \nStorm Corvette Technology \n8 crew members"   
	},
	
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Striker",
		RequiredResearch =		"Striker",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		120,
		DisplayedName =			"Striker Corvette",
		Description = "<b>Description:</b> Advanced Corvette Squadron, equipped with: \n3 Fast Flechette Cannons \n2 Concussion Missile Launchers \n\n<b>Type:</b> Corvette \nCost: 1100 RUs \nBuild time: 70 s \nMaintenance cost: 14 RUs / year \nStrong vs: Fighters, Corvettes, Frigates \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nStriker Technology (Commander Rank) \n9 crew members"   
	},
	

	-- Frigates ---------------

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_AssaultFrigate",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		200,
		DisplayedName =			"$7146",
		Description = "<b>Description:</b> Anti-Fighter Frigate, equipped with: \n3 Flechette Turret \nConcussion Missile Launcher \n\n<b>Type:</b> Frigate \nCost: 750 RUs \nBuild time: 45 s \nMaintenance cost: 12 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nFrigate Facility \n6 crew members"    
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_AdvAssaultFrigate",
		RequiredResearch =		"MultiCannonTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		201,
		DisplayedName =			"Advanced Assault Frigate",
		Description = "<b>Description:</b> Advanced Anti-Fighter Frigate, equipped with: \n5 Flechette Turret \nConcussion Missile Launcher \n\n<b>Type:</b> Frigate \nCost: 850 RUs \nBuild time: 50 s \nMaintenance cost: 14 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nFrigate Facility \nMulti Cannons Technology \n7 crew members"    
	},
		
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HeavyMissileFrigate",
		RequiredResearch =		"HeavyMissileFrigate",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		220,
		DisplayedName =			"$7148",
		Description = "<b>Description:</b> Basic Frigate, equipped with: \nFusion Missile Launcher \nHeavy Concussion Missile Launcher \n\n<b>Type:</b> Frigate \nCost: 850 RUs \nBuild time: 45 s \nMaintenance cost: 12 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nFrigate Facility \nResearch Division \nHeavy Missile Frigate Technology \n6 crew members"     
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_InfiltratorFrigate",
		RequiredResearch =		"FrigateInfiltrationTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		230,
		DisplayedName =			"$7150",
		Description = "<b>Description:</b> Frigate capable of initiating boarding actions and capturing enemy ships or Mining Bases, equipped with: \nFlechette Turret \nPerforation Pods Launcher (when upgraded) \n\n<b>Type:</b> Frigate \nCost: 850 RUs \nBuil time: 50 s \nMaintenance cost: 15 RUs / year \nStrong vs: Capital Ships \n\n<b>Prerequisites:</b> \nFrigate Facility \nResearch Division \nInfiltration Pod Technology \n7 crew members"        
	},
	
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_SupportFrigateArmed",
		RequiredResearch =		"SupportFrigateArmedTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		231,
		DisplayedName =			"Support Frigate",
		Description = "<b>Description:</b> Frigate capable of repair friendly frigates and disrupt nearby enemy ships, equipped with: \n6 Electro Magnetic Pulse Emitter \n\n<b>Type:</b> Frigate \nCost: 850 RUs \nBuil time: 55 s \nMaintenance cost: 15 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nFrigate Facility \nSupport Frigate Technology \n7 crew members"               
	},
	
  { 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_CommandFrigate",
		RequiredResearch =		"CommandFrigateTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		232,
		DisplayedName =			"Patrol Frigate",
		Description = "<b>Description:</b> Reconnaissance Frigate, mounts advanced navigation systems, can build probes, equipped with: \n1 Special slot \nConcussion Missile Launcher \nIntegrated Sensor Distorsion System \nElectro Magnetic Pulse Emitter (when upgraded) \nSensor Ping (when upgraded) \n\n<b>Type:</b> Frigate \nCost: 900 RUs \nBuil time: 55 s \nMaintenance cost: 15 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nFrigate Facility \nPatrol Frigate Technology \n8 crew members"               
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_SupportFrigate",
		RequiredResearch =		"SupportFrigateTech",
		RequiredShipSubSystems = "FrigateProduction",		
		DisplayPriority =		9998,
		DisplayedName =			"Plasma Frigate",
		Description = "<b>Description:</b> Plasma Frigate, equipped with: \n6 Plasma Cannons \n\n<b>Type:</b> Frigate \nCost: 900 RUs \nBuil time: 55 s \nMaintenance cost: 17 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nFrigate Facility \nPlasma Frigate Technology \n8 crew members"       
	},
	
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_SupportFrigate_laser",
		RequiredResearch =		"SupportFrigate_LaserTech",
		RequiredShipSubSystems = "FrigateProduction",		
		DisplayPriority =		9999,
		DisplayedName =			"Concussion Frigate",
		Description = "<b>Description:</b> Concussion Frigate, equipped with: \n6 Concussion Cannons \n\n<b>Type:</b> Frigate \nCost: 900 RUs \nBuil time: 55 s \nMaintenance cost: 17 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nFrigate Facility \nConcussion Frigate Technology (Lieutenant Rank) \n8 crew members"       
	},
	
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ArtilleryFrigate",
		RequiredResearch =		"ArtilleryGunTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		10000,
		DisplayedName =			"Artillery Frigate",
		Description = "<b>Description:</b> Anti-Frigate/Capital Ships Frigate, equipped with: \n2 Laser Pulsers \n\n<b>Type:</b> Frigate \nCost: 900 RUs \nBuil time: 55 s \nMaintenance cost: 17 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nFrigate Facility \nResearch Division \nArtillery Frigate Technology (Lieutenant Rank) \n8 crew members"       
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_EmpFrigate",
		RequiredResearch =		"deathtech",
		RequiredShipSubSystems = "FrigateProduction",		
		DisplayPriority =		10001,
		DisplayedName =			"Warfare Frigate",
		Description = "<b>Description:</b> Advanced Support Frigate, equipped with: \n2 Light Plasma Lance \nFusion Missile Launcher (when upgraded) \n2 Electro Magnetic Pulse Emitter \n\n<b>Type:</b> Frigate \nCost: 1100 RUs \nBuil time: 60 s \nMaintenance cost: 18 RUs / year \nStrong vs: Frigates, Capital Ships (when upgraded) \n\n<b>Prerequisites:</b> \nFrigate Facility \nWarfare Frigate Technology (Lieutenant Rank) \n8 crew members"       
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LongRangeArtilleryFrigate",
		RequiredResearch =		"LongRangeArtilleryGunTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		10002,
		DisplayedName =			"Heavy Cannon Frigate",
		Description = "<b>Description:</b> Anti-Frigate/Capital Ships Frigate, equipped with: \n2 Kinetic Cannons \nHeavy Concussion Missile Launcher \nAnti-Capital Ship Mortar Missile Launcher (when upgraded) \n\n<b>Type:</b> Frigate \nCost: 1300 RUs \nBuil time: 70 s \nMaintenance cost: 20 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nFrigate Facility \nResearch Division \nHeavy Cannon Frigate Technology (Commander Rank) \n9 crew members"       
	},
	
	-- Capital Ships ----------

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Destroyer",
		RequiredResearch =		"DestroyerGuns",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		309,
		DisplayedName =			"$7152",
		Description = "<b>Description:</b> Anti-Frigate Capital Ship, equipped with: \n2 Flechette Cannons \n4 Anti-Capital Ship Fusion Missile Launcher (when upgraded) \nAnti-Capital Ship Heavy Mine (when upgraded) \n4 Hull Defense Guns \n\n<b>Type:</b> Capital Ship \nCost: 2000 RUs \nBuil time: 165 s \nMaintenance cost: 55 RUs / year \nStrong vs: Frigates, Capital Ships (when upgraded) \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nDestroyer Chassis Technology \n1 officer \n15 crew members"  
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_pulsedestroyer",
		RequiredResearch =		"PulseDestroyerGuns",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		310,
		DisplayedName =			"Heavy Destroyer",
		Description = "<b>Description:</b> Anti-Frigate Capital Ship, equipped with: \n1 Double Kinetic Cannon Turret \n2 Kinetic Cannon Turrets \n4 Anti-Capital Ship Fusion Missile Launcher (when upgraded) \nAnti-Capital Ship Heavy Mine (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 2500 RUs \nBuil time: 175 s \nMaintenance cost: 75 RUs / year \nStrong vs: Frigates, Capital Ships (when upgraded) \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nHeavy Destroyer Chassis Technology \n1 officer \n15 crew members"  
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_AM",
		RequiredResearch =		"AMGuns",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		311,
		DisplayedName =			"Guardian",
		Description = "<b>Description:</b> Advanced Anti-Missile Capital Ship, fires at any incoming missile/bomb or mine, it can also deploy heavy mine fields, equipped with: \n4 Fast Tracking Turrets \nMine Layer \nIntegrated Defense Field \n\n<b>Type:</b> Capital Ship \nCost: 2500 RUs \nBuil time: 165 s \nMaintenance cost: 55 RUs / year \nStrong vs: Missile, Bomb, Mine \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nGuardian Chassis Technology \n12 crew members"  
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Cruiser",
		RequiredResearch =		"CruiserTech",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		312,
		DisplayedName =			"Cruiser",
		Description = "<b>Description:</b> Advanced Anti-Frigate/Capital Ship, equipped with: \n1 Double Kinetic Cannon Turret \n2 Kinetic Cannon Turrets \n12 Anti-Capital Ship Fusion Missile Launcher (when upgraded) \n1 Advanced Anti-Capital Ship Heavy Fusion Missile Launcher (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 3000 RUs \nBuil time: 210 s \nMaintenance cost: 100 RUs / year \nStrong vs: Frigates, Capital Ships (when upgraded) \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nCruiser Chassis Technology (Lieutenant Rank) \n2 officer \n20 crew members"  
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_artilleryship",
		RequiredResearch =		"ArtilleryTech",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		313,
		DisplayedName =			"Artillery Cruiser",
		Description = "<b>Description:</b> Advanced Long-Range Anti-Frigate/Capital Ship, equipped with: \n5 Anti-Capital Ship Mortar Missile Launcher \n1 Special slot \n\n<b>Type:</b> Capital Ship \nCost: 3000 RUs \nBuil time: 210 s \nMaintenance cost: 100 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nArtillery Cruiser Chassis Technology (Lieutenant Rank) \n2 officer \n20 crew members"  
	},
	
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LightCruiser",
		RequiredResearch =		"IonCruiserTech",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		314,
		DisplayedName =			"Ion Cruiser",
		Description = "<b>Description:</b> Advanced Anti-Frigate/Capital Ship, equipped with: \n2 Heavy Ion Cannon Turrets \n8 Flechette Turret \n8 Anti-Capital Ship Fusion Missile Launcher (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 3000 RUs \nBuil time: 210 s \nMaintenance cost: 100 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nIon Cruiser Chassis Technology (Lieutenant Rank) \n2 officer \n20 crew members"  
	},
	
  { 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LightCarrier",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		299,
		DisplayedName =			"Light Carrier",
		Description = "<b>Description:</b> Capital Class Production Ship, equipped with: \n2 Production slot \n2 Module slot \n4 Special slot \n2 Resource Drop-Off points \n2 Hull Defense Guns \n8 Anti-Fighter/Corvette Fusion Missile Launcher (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 1500 RUs \nBuil time: 45 s \nMaintenance cost: 80 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b>\n1 officers \n15 crew members" 
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Carrier",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		300,
		DisplayedName =			"$7154",
		Description = "<b>Description:</b> Capital Class Production Ship, equipped with: \n1 Production slot \n2 Module slot \n4 Special slot \n2 Resource Drop-Off points \n4 Hull Defense Guns \n\n<b>Type:</b> Capital Ship \nCost: 2000 RUs \nBuil time: 50 s \nMaintenance cost: 100 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b>\n2 officers \n30 crew members" 
	},
	
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_BattleCarrier",
		RequiredResearch =		"BattlecarrierTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		319,
		DisplayedName =			"Battle Carrier",
		Description = "<b>Description:</b> Capital Class Production Ship, equipped with: \n1 Production slot \n2 Module slot \n3 Special slot \n4 Hull Defense Guns \n2 Kinetic Cannon Turrets \n4 Anti-Frigate/Capital Ships Fusion Missile Launcher (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 3000 RUs \nBuil time: 85 s \nMaintenance cost: 100 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b>\nBattle Carrier Chassis Technology (Commander Rank) \n2 officers \n30 crew members" 
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Sinner",
		RequiredResearch =		"SinnerTech",
		RequiredShipSubSystems = "Hyperspace", 
		DisplayPriority =		300,
		DisplayedName =			"Sinner",
		Description = "<b>Description:</b> Capital Class Breakage Ship, very resistant, can transport a lot of fighter and corvettes inside the battle, equipped with: \n1 Module slot \n2 Special slot \n4 Autogun Turrets \n\n<b>Type:</b> Capital Ship \nCost: 3000 RUs \nBuil time: 200 s \nMaintenance cost: 100 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nHyperspace Module (on board) \nSinner Chassis Technology (Commander Rank) \n2 officers \n20 crew members" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ShipYard",
		RequiredResearch =		"ShipyardTech",
		RequiredShipSubSystems =	"Hyperspace | LaserCannon4",
		DisplayPriority =		320,
		DisplayedName =			"$7156",
		Description = "<b>Description:</b> Capital Class Production Ship, this ship is so massive it can only Hyperspace into battle, equipped with: \n5 Production slot \n6 Module slot \n3 Special slot \n2 Resource Drop-Off points \n12 Hull Defense Guns \n\n<b>Type:</b> Capital Ship \nCost: 4000 RUs \nBuil time: 95 s \nMaintenance cost: 150 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \nHyperspace Module (on board) \nShipyard Chassis Technology (Commander Rank) \n3 officers \n40 crew members" 
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_BattleCruiser",
		RequiredResearch =		"BattlecruiserIonWeapons",
		RequiredShipSubSystems =	"AdvCapshipProduction",
		RequiredFleetSubSystems = "", 
		DisplayPriority =		330,
		DisplayedName =			"$7158",
		Description = "<b>Description:</b> Capital Ships Killer, equipped with: \n2 Module slot \n4 Special slot \n3 Heavy Laser Pulser \n5 Hull Defense Guns \n4 Pulsar Laser Guns \n8 Anti-Frigate/Capital Ships Fusion Missile Launcher (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 4000 RUs \nBuil time: 280 s \nMaintenance cost: 125 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nHeavy Capital Facility \nResearch Division \nBattlecruiser Chassis Technology (Captain Rank) \n3 officers \n30 crew members"
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MissileBattleCruiser",
		RequiredResearch =		"MissileBattlecruiserIonWeapons",
		RequiredShipSubSystems =	"AdvCapshipProduction",
		RequiredFleetSubSystems = "", 
		DisplayPriority =		331,
		DisplayedName =			"Missile Battlecruiser",
		Description = "<b>Description:</b> Capital Ships Killer, equipped with: \n2 Module slot \n2 Special slot \n2 Heavy Laser Pulser \n5 Hull Defense Guns \n2 Pulsar Laser Guns \n15 Anti-Frigate/Capital Ships Fusion Missile Launcher (if enabled) \n\n<b>Type:</b> Capital Ship \nCost: 5000 RUs \nBuil time: 320 s \nMaintenance cost: 125 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nHeavy Capital Facility \nResearch Division \nMissile Battlecruiser Chassis Technology (Captain Rank) \n3 officers \n30 crew members"
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MinelayerDrone",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"vgr_mbc_d",
		RequiredFleetSubSystems = "", 
		DisplayPriority =		5,
		DisplayedName =			"Minelayer Drone",
		Description = "<b>Description:</b> Utility Drone, can deploy mines (18 units max), equipped with: \nMine Sweeper \nMine Deploying System \n\n<b>Type:</b> Utility \nCost: 800 RUs \nBuild time: 40 s \nMaintenance cost: none \nStrong vs: Frigate/Capital Ships \n\n<b>Prerequisites:</b> \nDrone Battery \nResearch Division"
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_alkhalid",
		RequiredResearch =		"BattleshipTech",
		RequiredShipSubSystems =	"AdvCapshipProduction",
		RequiredFleetSubSystems = "",
		DisplayPriority =		335,
		DisplayedName =			"Battleship",
		Description = "<b>Description:</b> Death Vessel, equipped with: \n11 Special slot \n2 Laser Turrets \n2 Ion Turrets \nAnti Capital Ships Heavy Mine (when upgraded) \n8 Anti-Corvette/Frigate Fusion Missile Launcher (when upgraded) \n8 Anti-Frigate/Capital Ships Fusion Missile Launcher (when upgraded) \nAnti-Capital Ships Perforation Bomb (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 6000 RUs \nBuil time: 360 s \nMaintenance cost: 150 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nHeavy Capital Facility \nResearch Division \nBattleship Chassis Technology (Commodore Rank) \n3 officers \n35 crew members"
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_dreadnaught",
		RequiredResearch =		"DreadnaughtTech",
		RequiredShipSubSystems =	"AdvCapshipProduction",
		RequiredFleetSubSystems = "",
		DisplayPriority =		340,
		DisplayedName =			"Dreadnaught",
		Description = "<b>Description:</b> Advanced Death Vessel, equipped with: \n12 Anti Capital Ships heavy ion cannons \n2 Kinetic Cannon Turrets \n4 Pulsar Laser Guns \n5 Anti-Frigate/Capital Ships Fusion Missile Launcher \n\n<b>Type:</b> Capital Ship \nCost: 8000 RUs \nBuil time: 460 s \nMaintenance cost: 175 RUs / year \nStrong vs: Capital Ships \n\n<b>Prerequisites:</b> \nHeavy Capital Facility \nResearch Division \nDreadnaught Chassis Technology (Commodore Rank) \n3 officers \n35 crew members"
	},

	-- Platforms --------------

	{ 
			Type = Ship, 
			ThingToBuild = "Vgr_Patcher", 
			RequiredResearch = "", 
			RequiredShipSubSystems = "RepairSystem", 
			DisplayPriority = 12, 
			DisplayedName = "Patcher Drone", 
			Description = "<b>Description:</b> Repairing support Drone, can autonomously repair damaged ships (18 units max)\n\n<b>Type:</b> Drone \nCost: 800 RUs \nBuild time: 30 s \nMaintenance cost: none/year \nStrong vs: none \n\n<b>Prerequisites:</b> \nRepair System (on board)" 
	},   		
    
	
	{ 
		Type =					Ship, 
		ThingToBuild =			"Vgr_WeaponPlatform_gun",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		400,
		DisplayedName =			"$7160",
		Description = "<b>Description:</b> Anti-Fighter/Corvette Weapon Platform, equipped with: \n2 Long Range Flechette Turrets \nAnti-Missile System (when upgraded) \n\n<b>Type:</b> Platform \nCost: 400 RUs \nBuil time: 30 s \nMaintenance cost: 2 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nPlatform Control Module \n1 crew members"   
	},	
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_WeaponPlatform_lance",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		405,
		DisplayedName =			"Lance Platform",
		Description = "<b>Description:</b> Anti-Corvette/Frigate Weapon Platform, equipped with: \n2 Long Range Lance Turrets \n\n<b>Type:</b> Platform \nCost: 400 RUs \nBuil time: 30 s \nMaintenance cost: 2 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nPlatform Control Module \nResearch Division \n1 crew members"    
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_WeaponPlatform_missile",
		RequiredResearch =		"PlatformHeavyMissiles",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		410,
		DisplayedName =			"$7162",
		Description = "<b>Description:</b> Anti-Frigate/Capital Ships Weapon Platform, equipped with: \nLong Range Fusion Missile Launcher \n\n<b>Type:</b> Platform \nCost: 400 RUs \nBuil time: 30 s \nMaintenance cost: 4 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nPlatform Control Module \nResearch Division \nPlatform Missile Technology \n2 crew members"    
	},		
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_mobile_inhibitor",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"HyperspaceInhibitor & PlatformProduction",
		DisplayPriority =		530,
		DisplayedName =			"Mobile Gravity Well Generator",
		Description = "<b>Description:</b> Hyperspace inhibitor, prevents enemy ships from entering or exiting hyperspace within a limited Radius around the ship \n\n<b>Type:</b> Platform \nCost: 2000 RUs \nBuil time: 100 s \nMaintenance cost: 10 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \nPlatform Control Module \nGravity Well Generator \n4 crew members"    
	},
	
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Cruse",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FireControlTower",
		RequiredFleetSubSystems = "", 
		DisplayPriority =		530,
		DisplayedName =			"Medium-Range Cruiser Missile (Tube 1)",
		Description = "<b>Description:</b> Missile Tube, Anti-Capital Ship medium-range auto-aiming missile launcher, the Cruiser Missile automatically engages enemy Capital Ships within a medium radious, the missile do more damage if the target is close to the launching ship, if there are no enemies in the area the Cruiser will self destroy (max 3 units per tube) \n\n<b>Type:</b> Missile \nRange: 45 Km \nCost: 2000 RUs \nBuil time: none \nMaintenance cost: none \nStrong vs: Capital Ships \n\n<b>Prerequisites:</b> \nFire Control Tower (on board)" 
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Boa",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"DefenseFieldModule",
		RequiredFleetSubSystems = "", 
		DisplayPriority =		531,
		DisplayedName =			"Roller Mine (Tube 1)",
		Description = "<b>Description:</b> Mine Tube, Anti-Capital Ship short-range auto-aiming mine launcher, the Roller Mine automatically engages enemy Capital Ships within a short radious, the mine do more damage if the target is close to the launching ship, if there are no enemies in the area the mine will self destroy (max 9 units per tube) \n\n<b>Type:</b> Missile \nRange: 7.5 Km \nCost: 2000 RUs \nBuild time: none \nMaintenance cost: none \nStrong vs: Capital Ships \n\n<b>Prerequisites:</b> \nDefense Control Tower (on board)"
	},
	{ 
			Type = Ship, 
			ThingToBuild = "vgr_minermissile",
			RequiredResearch = "",         
			RequiredShipSubSystems = "",  
			RequiredFleetSubSystems = "",                               
			DisplayPriority = 200,
			DisplayedName = "Miner Missile (Tube 1)",
			Description = "<b>Description:</b> Missile Tube, Asteroid Smasher, short-range auto-aiming missile launcher, the Miner Missile automatically engages cleavable asteroids or debrises within a short radious, if there are no asteroids in the area the Miner missile will self destroy \n\n<b>Type:</b> Missile \nRange: 20 Km \nCost: 500 RUs \nBuild time: none \nMaintenance cost: none \nStrong vs: none \n\n<b>Prerequisites:</b> \nnone",},		
	{  
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HyperSpace_Platform",
		RequiredResearch =		"HyperspaceGateTech",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		520,
		DisplayedName =			"$7174",
		Description = "<b>Description:</b> Basic Hyperspace Generator unique to the Vaygr, when linked with a second Hyperspace Gate it allows friendly ships to jump between the two locations \n\n<b>Type:</b> Utility \nCost: 750 RUs \nBuil time: 30 s \nMaintenance cost: 5 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \nPlatform Control Module \nResearch Division \nHyperspace Gate Generator Technology \n2 crew members" 
	},
	

	-- Utility ----------------

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceCollector",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		500,
		DisplayedName =			"$7164",
		Description = "<b>Description:</b> Basic Utility Ship, can harvest Resources and extract RUs from Mining Bases, when upgraded can repair damaged ships \n\n<b>Type:</b> Utility \nCost: 600 RUs \nBuil time: 35 s \nMaintenance cost: 4 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \n2 crew members"     
	},
	

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceController",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		510,
		DisplayedName =			"$7166",
		Description = "<b>Description:</b> Mobile Resource Drop-Off point, can dock 2 Resource Collectors at once, equipped with: \n4 Hull Defense Guns \n2 Resource Drop-Off points \n\n<b>Type:</b> Utility \nCost: 800 RUs \nBuil time: 50 s \nMaintenance cost: 8 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \n4 crew members" 
	},
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceControllerdouble",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		511,
		DisplayedName =			"Advanced Mobile Refinery",
		Description = "<b>Description:</b> Advanced mobile Resource Drop-Off point, can dock 4 Resource Collectors at once, equipped with: \n4 Hull Defense Guns \n2 Flechette Cannons  \n4 Resource Drop-Off points \n\n<b>Type:</b> Utility \nCost: 1500 RUs \nBuil time: 75 s \nMaintenance cost: 12 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \n8 crew members" 
	},
	
	{ 
        Type = Ship, 
        ThingToBuild = "Vgr_Scaver", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
        RequiredFleetSubSystems = "Research", 
        DisplayPriority = 1, 
        DisplayedName = "Scavenger", 
        Description = "<b>Description:</b> Advanced resource operations supporter, the Scavenger can increase the RU max capacity, can dock 4 Resource Collectors at once, can generate RUs by fusion, equipped with: \n3 Module slot \n7 Special slot \n4 Resource Drop-Off points \n2 Autogun Turrets \n6 Hull Defense Guns\nCan build: Utilities, Subsystems, Weapon Tubes\nCan dock and hold: Resource Collectors\n\n<b>Type:</b> Capital Ship \nCost: 2000 RUs \nBuild time: 80 s \nMaintenance cost: 100 RUs/year \nStrong vs: none \n\n<b>Prerequisites:</b> \nResearch Division \n1 officer \n12 crew members" }, 

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"en | vgr_cmd_production_probe",
		DisplayPriority =		540,
		DisplayedName =			"$7168",
		Description = "<b>Description:</b> Long Range Sensor Device, one-shot movement \n\n<b>Type:</b> Utility \nCost: 150 RUs \nBuil time: 5 s \nStrong vs: none \n\n<b>Prerequisites:</b> \nNone"
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_Prox",
		RequiredResearch =		"SensDisProbe",
		RequiredShipSubSystems =	"en | vgr_cmd_production_probe",
		DisplayPriority =		550,
		DisplayedName =			"$7170",
		Description = "<b>Description:</b> Sensor Device capable of detecting cloaked ships, one-shot movement \n\n<b>Type:</b> Utility \nCost: 250 RUs \nBuil time: 15 s \nStrong vs: none \n\n<b>Prerequisites:</b> \nResearch Division \nProximity Sensor Technology" 
	},

	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_ECM",
		RequiredResearch =		"ProbeSensorDisruption",
		RequiredShipSubSystems =	"en | vgr_cmd_production_probe",
		DisplayPriority =		560,
		DisplayedName =			"$7172",
		Description = "<b>Description:</b> Remote Device that scrumbles enemy sensors, one-shot movement \n\n<b>Type:</b> Utility \nCost: 500 RUs \nBuil time: 30 s \nStrong vs: none \n\n<b>Prerequisites:</b> \nResearch Division \nSensor Distortion Probe Technology"    
	},

  { 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Probe_Smallhsbeacon",
		RequiredResearch =		"Rattle",
		RequiredShipSubSystems =	"en | vgr_cmd_production_probe",
		DisplayPriority =		570,
		DisplayedName =			"Rattle",
		Description = "<b>Description:</b> Remote Device that \"Ping\" the mission area briefly revealing enemy units, detects all hyperspace signatures within a limited radius, one-shot movement \n\n<b>Type:</b> Utility \nCost: 1000 RUs \nBuil time: 60 s \nStrong vs: none \n\n<b>Prerequisites:</b> \nResearch Division \nRattle Technology"    
	},		
	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Ghost",
		RequiredResearch =		"Ghost",
		RequiredShipSubSystems =	"en | vgr_cmd_production_probe",
		DisplayPriority =		580,
		DisplayedName =			"Ghost",
		Description = "<b>Description:</b> Remote Device, can auto-cloak, one-shot movement \n\n<b>Type:</b> Utility \nCost: 1000 RUs \nBuil time: 60 s \nStrong vs: none \n\n<b>Prerequisites:</b> \nResearch Division \nGhost Technology"    
	},		
	
	{ 
				Type = Ship, 
				ThingToBuild = "vgr_minecontainer",
				RequiredResearch = "",
				RequiredFleetSubSystems = "hasminingbase",	
				DisplayPriority = 520,
				DisplayedName = "Mine Container",
				Description = "<b>Description:</b> RUs Mine Container, a very capable RUs transporter, transfers RUs from Mining Bases to the fleet\nOn Passive tactic: no auto-launch\n\n<b>Type:</b> Utility \nCost: 1250 RU \nBuild time: 65 s \nMaintenance cost: none \nStrong vs: none \n\n<b>Prerequisites:</b> \nMining Base" },	
	{ 
				Type = Ship, 
				ThingToBuild = "vgr_container",
				RequiredResearch = "",
				RequiredFleetSubSystems = "hasallied",	
				DisplayPriority = 521,
				DisplayedName = "Trade Convoy",
				Description = "<b>Description:</b> RUs Trade Container, allows big Production Capital Ships to trade RUs with allied players; more RUs you have in store, more percentage (in RUs) you will gain from your trade network at any docking point; to work properly, allied players must be at a minimum distance; ideal for keep high production levels\n\n<b>Type:</b> Utility \nCost: 1250 RU \nBuild time: 65 s \nMaintenance cost: none \nStrong vs: none \n\n<b>Prerequisites:</b> \nAt least one allied player \n4 crew members" },	          			 					
	{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "isLieutenant",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
	{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "isCommander",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},  
  { 
			  Type = SubSystem, 			  
			  ThingToBuild = "isCaptain",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},  			  		        
  { 
			  Type = SubSystem, 			  
			  ThingToBuild = "isCommodore",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
	{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "isAdmiral",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},  
  { 
			  Type = SubSystem, 			  
			  ThingToBuild = "isFleetAdmiral",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},  
	{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "hasallied",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
  { 
			  Type = SubSystem, 			  
			  ThingToBuild = "resistence",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 
  { 
			  Type = SubSystem, 			  
			  ThingToBuild = "buildspeed",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 
  { 
			  Type = SubSystem, 			  
			  ThingToBuild = "resource",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 
  { 
			  Type = SubSystem, 			  
			  ThingToBuild = "hyperspace",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},   				
	{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "military0",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 
		{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "military",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},   	  
		{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "military1",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},   	  
		{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "military2",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},   
    { 
			  Type = SubSystem, 			  
			  ThingToBuild = "unitcapsrank1",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 
    { 
			  Type = SubSystem, 			  
			  ThingToBuild = "unitcapsrank2",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
    { 
			  Type = SubSystem, 			  
			  ThingToBuild = "unitcapsrank3",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
    { 
			  Type = SubSystem, 			  
			  ThingToBuild = "unitcapsrank4",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 				
		{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbdF1",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	
	{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbdF2",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	
	{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbdF3",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	
  { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_ft2_turret",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},  
	{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_ft2_turret_s",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},			
  { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_ft2_turret1",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},	  		  			  			
  { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd3",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd4",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	      
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd5",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	      
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd6",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	      
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd7",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	      
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd8",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	      
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd9",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	      
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd10",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	      
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd11",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	      
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd12",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	      
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd13",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 	      
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd14",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,}, 
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_qje_quadflechette_stbd15",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
		{ 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_ion2",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},		 
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_ion3",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_ion4",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_ion5",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},		
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_ion6",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},	
    { 
			  Type = SubSystem, 			  
			  ThingToBuild = "missile_box1",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},		 
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "missile_box2",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "missile_box3",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "missile_box4",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},		
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "missile_box5",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},		
    { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_dt3_turret1",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},	
	 { 
			  Type = SubSystem, 			  
			  ThingToBuild = "vgr_dt3_turret2",		
			  RequiredResearch = "unbuildable",     
			  DisplayPriority = 0,},
    { 
        Type = SubSystem, 
        ThingToBuild = "engine_boost_container", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
        RequiredFleetSubSystems = "", 
        DisplayPriority = 20, 
        DisplayedName = "Engine Boost", 
        Description = "<b>Description:</b> Engine final Boost, improves engine power (+300%), to work properly needs additional energy (-3)\n\n<b>Type:</b> Order", },	 
---Orders------------------
    { 
        Type = SubSystem, 
        ThingToBuild = "hgn_orders_clear", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "hgn_orders_fusion | engine_boost_container | hgn_orders_trade | hgn_orders_dock",
        DisplayPriority = 0, 
        DisplayedName = "Clear Orders", 
        Description = "<b>Description:</b> Clear all permanent orders!\n\n<b>Type:</b> Order", },
    { 
        Type = SubSystem, 
        ThingToBuild = "hgn_orders_parade", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "",
        DisplayPriority = 10, 
        DisplayedName = "Instant Parade", 
        Description = "<b>Description:</b> All units within a limited radious around the ship (7000 m) immediately parade to this ship!\n\n<b>Type:</b> Order", },
    { 
        Type = SubSystem, 
        ThingToBuild = "hgn_orders_dock", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "",
        DisplayPriority = 31, 
        DisplayedName = "Auto-Dock", 
        Description = "<b>Description:</b> All fighters and corvettes within a limited radious around the ship (15000 m) immediately dock to this ship if damaged!\n\n<b>Type:</b> Order (permanent)", },
    { 
        Type = SubSystem, 
        ThingToBuild = "hgn_orders_guard", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "",
        DisplayPriority = 30, 
        DisplayedName = "Guard", 
        Description = "<b>Description:</b> All units within a limited radious around the ship (7000 m) immediately guard this ship!\n\n<b>Type:</b> Order", },  			
    { 
        Type = SubSystem, 
        ThingToBuild = "hgn_orders_fusion", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "Fusion",
        DisplayPriority = 20, 
        DisplayedName = "Disable Fusion", 
        Description = "<b>Description:</b> Disable RUs fusion on Scavenger!\n\n<b>Type:</b> Order (permanent)", },  
    { 
        Type = SubSystem, 
        ThingToBuild = "hgn_orders_trade", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "",
        DisplayPriority = 19, 
        DisplayedName = "Disable Trading", 
        Description = "<b>Description:</b> Disable Trading on Trade Convoy!\n\n<b>Type:</b> Order (permanent)", },      				
	  { 
        Type = Ship, 
        ThingToBuild = "Vgr_CommandFortress1",         
        RequiredResearch = "CommandFortressTech", 
        RequiredShipSubSystems = "Hyperspace", 
        RequiredFleetSubSystems = "", 
        DisplayPriority = 350, 
        DisplayedName = "Command Fortress", 
        Description = "<b>Description:</b> Capital Class Support Ship, helpful to control specific map zones, it carries advanced communication systems, equipped with: \n15 Special slot \n8 Heavy Laser Cannon Turret \nIntegrated Hyperspace System \n\n<b>Type:</b> Capital Ship \nCost: 11000 RUs \nBuild time: 700 s \nMaintenance cost: 250 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nHyperspace Module (on board) \nCommand Fortress Chassis Technology (Admiral Rank ) \n6 officers \n50 crew members" },          
  {
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Scout1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		20,
		DisplayedName =			"$7130",
		Description = "<b>Description:</b> Reconnaissance Fighter Squadron, equipped with: \nLight Flechette Gun \nElectro Magnetic Pulse Emitter (when upgraded) \nSensor Ping (when upgraded) \n\n<b>Type:</b> Fighter \nCost: 350 RUs \nBuild time: 20 s \nMaintenance cost: 5 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \n3 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Interceptor1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		21,
		DisplayedName =			"$7132",
		Description = "<b>Description:</b> Basic Fighter Squadron, equipped with: \nFlechette Gun \n\n<b>Type:</b> Fighter \nCost: 500 RUs \nBuild time: 35 s \nMaintenance cost: 7 RUs / year \nStrong vs: Fighters \n\n<b>Prerequisites:</b> \nFighter Facility \n7 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Bomber1",
		RequiredResearch =		"PlasmaBombs",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		24,
		DisplayedName =			"$7134",
		Description = "<b>Description:</b> Anti-Capital Ship Fighter Squadron, equipped with: \n2 Anti-Capital Ship Plasma Bomb Launcher \n2 Anti-SubSystem Plasma Bombs Launcher (when upgraded) \n\n<b>Type:</b> Fighter \nCost: 550 RUs \nBuild time: 40 s \nMaintenance cost: 8 RUs / year \nStrong vs: Frigates, Capital Ships, Subsystems (when upgraded) \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nFusion Bomb Technology \n6 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LanceFighter1",
		RequiredResearch =		"LanceBeams",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		26,
		DisplayedName =			"$7136",
		Description = "<b>Description:</b> Anti-Corvette Fighter Squadron, equipped with: \nLight Plasma Lance \n\n<b>Type:</b> Fighter \nCost: 550 RUs \nBuild time: 35 s \nMaintenance cost: 7 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nLance Beam Technology \n5 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Defender1",
		RequiredResearch =		"DefenderTech",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		28,
		DisplayedName =			"Defender",
		Description = "<b>Description:</b> Advanced Fighter Squadron, equipped with: \n3 Flechette Guns \n\n<b>Type:</b> Fighter \nCost: 650 RUs \nBuild time: 50 s \nMaintenance cost: 9 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nDefender Technology \n5 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HeavyFighter1",
		RequiredResearch =		"HeavyFighterTech",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		30,
		DisplayedName =			"Heavy Fighter",
		Description = "<b>Description:</b> Heavy Fighter Squadron, equipped with: \nLight Plasma Lance \nConcussion Missile Launcher \n\n<b>Type:</b> Fighter \nCost: 750 RUs \nBuild time: 55 s \nMaintenance cost: 12 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nMissile Fighter Technology \n5 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MissileBomber1",
		RequiredResearch =		"MissileBomberTech",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		31,
		DisplayedName =			"Missile Bomber",
		Description = "<b>Description:</b> Advanced Anti-Capital Ship Fighter Squadron, equipped with: \n2 Anti-Capital Ship Plasma Bomb Launcher \n2 Anti-SubSystem Plasma Bombs Launcher (when upgraded) \n2 Fusion Missile Launcher \n\n<b>Type:</b> Fighter \nCost: 850 RUs \nBuild time: 60 s \nMaintenance cost: 12 RUs / year \nStrong vs: Frigates, Capital Ships, Subsystems (when upgraded)  \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nMissile Bomber Technology (Lieutenant Rank) \n6 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_EliteFighter1",
		RequiredResearch =		"MultiroleTech",
		RequiredShipSubSystems =	"FighterProduction",
		DisplayPriority =		32,
		DisplayedName =			"Multi-Role Fighter",
		Description = "<b>Description:</b> Multi-Role Fighter Squadron, equipped with: \nFast Flechette Cannon \n2 Flechette Guns \n2 Anti-Capital Ship Plasma Bomb Launcher \n2 Anti-SubSystem Plasma Bombs Launcher (when upgraded) \n\n<b>Type:</b> Fighter \nCost: 950 RUs \nBuild time: 65 s \nMaintenance cost: 13 RUs / year \nStrong vs: Multi-Role \n\n<b>Prerequisites:</b> \nFighter Facility \nResearch Division \nMulti-Role Technology (Commander Rank) \n5 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"vgr_shamshiriictg1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		10,
		DisplayedName =			"Swarm Corvette",
		Description = "<b>Description:</b> Anti-Fighter Corvette Squadron, equipped with: \n2 Flechette Guns \nAblative defense field (if upgraded) \nAnti-Radiation Field (if upgraded) \n\n<b>Type:</b> Corvette \nCost: 500 RUs \nBuild time: 40 s \nMaintenance cost: 10 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nCorvette Facility \n8 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MissileCorvette1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		100,
		DisplayedName =			"$7138",
		Description = "<b>Description:</b> Basic Corvette Squadron, equipped with: \nConcussion Missile Launcher \n\n<b>Type:</b> Corvette \nCost: 625 RUs \nBuild time: 45 s \nMaintenance cost: 11 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nCorvette Facility \n8 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LaserCorvette1",
		RequiredResearch =		"CorvetteLaser",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		105,
		DisplayedName =			"$7140",
		Description = "<b>Description:</b> Anti-Frigate Corvette Squadron, equipped with: \nLaser Cannon \n\n<b>Type:</b> Corvette \nCost: 650 RUs \nBuild time: 45 s \nMaintenance cost: 12 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nLaser Systems Technology \n8 crew members"   
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_PlasmaCorvette1",
		RequiredResearch =		"CorvettePlasma",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		106,
		DisplayedName =			"Plasma Corvette",
		Description = "<b>Description:</b> Anti-Frigate/Capital Ships Corvette Squadron, equipped with: \nPlasma Cannon \n\n<b>Type:</b> Corvette \nCost: 650 RUs \nBuild time: 45 s \nMaintenance cost: 12 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nPlasma Systems Technology \n8 crew members"   
	},
	{ 
		Type =					Ship, 
		ThingToBuild =			"Vgr_CommandCorvette1",
		RequiredResearch =		"CorvetteCommand",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		110,
		DisplayedName =			"$7144",
		Description = "<b>Description:</b> Utility Corvette, improves all nearby ship weapon damage (+15%) and accuracy (+15%), equipped with: \nImproved Sensors \nWeapon Command System \n\n<b>Type:</b> Corvette \nCost: 400 RUs \nBuild time: 30 s \nMaintenance cost: 8 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nCommand System Technology \n2 crew members"   
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_EMPCorvette1",
		RequiredResearch =		"CorvetteEMP",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		114,
		DisplayedName =			"EMP Corvette",
		Description = "<b>Description:</b> EMP Corvette Squadron, equipped with: \nFlechette Cannon \n2 EMP Light Cannons \n\n<b>Type:</b> Corvette \nCost: 700 RUs \nBuild time: 45 s \nMaintenance cost: 13 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nEMP Technology \n6 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MinelayerCorvette1",
		RequiredResearch =		"CorvetteGraviticAttraction",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		115,
		DisplayedName =			"$7142",
		Description = "<b>Description:</b> Utility Corvette, can deploy mines as a special action (default N), equipped with: \nKinetic Cannon \nMine Sweeper \nMine Deploying System \n\n<b>Type:</b> Corvette \nCost: 800 RUs \nBuild time: 45 s \nMaintenance cost: 6 RUs / year \nStrong vs: Capital Ships \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nMinelaying Technology \n3 crew members"   
	},	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_mortarcorvette1",
		RequiredResearch =		"mortartech",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		118,
		DisplayedName =			"Scatterer Corvette",
		Description = "<b>Description:</b> Advanced Corvette Squadron, equipped with: \n8 Concussion Missile Launchers \n\n<b>Type:</b> Corvette \nCost: 900 RUs \nBuild time: 60 s \nMaintenance cost: 14 RUs / year \nStrong vs: Fighters, Corvettes, Frigates \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nScatterer Technology (Lieutenant Rank) \n9 crew members"   
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MultiLanceCorvette1",
		RequiredResearch =		"CorvetteMultiLance",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		119,
		DisplayedName =			"MultiLance Corvette",
		Description = "<b>Description:</b> Advanced Corvette Squadron, equipped with: \n2 Laser Turrets \n\n<b>Type:</b> Corvette \nCost: 900 RUs \nBuild time: 60 s \nMaintenance cost: 13 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nMultiLance Technology (Lieutenant Rank) \n9 crew members"   
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Standvette1",
		RequiredResearch =		"stormtech",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		117,
		DisplayedName =			"Storm Corvette",
		Description = "<b>Description:</b> Anti-Corvette/Frigate Squadron, equipped with: \nFlechette Turret \n\n<b>Type:</b> Corvette \nCost: 800 RUs \nBuild time: 50 s \nMaintenance cost: 14 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nCorvette Facility \nStorm Corvette Technology \n8 crew members"   
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Striker1",
		RequiredResearch =		"Striker",
		RequiredShipSubSystems =	"CorvetteProduction",
		DisplayPriority =		120,
		DisplayedName =			"Striker Corvette",
		Description = "<b>Description:</b> Advanced Corvette Squadron, equipped with: \n3 Fast Flechette Cannons \n2 Concussion Missile Launchers \n\n<b>Type:</b> Corvette \nCost: 1100 RUs \nBuild time: 70 s \nMaintenance cost: 14 RUs / year \nStrong vs: Fighters, Corvettes, Frigates \n\n<b>Prerequisites:</b> \nCorvette Facility \nResearch Division \nStriker Technology (Commander Rank) \n9 crew members"   
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_AssaultFrigate1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		200,
		DisplayedName =			"$7146",
		Description = "<b>Description:</b> Anti-Fighter Frigate, equipped with: \n3 Flechette Turret \nConcussion Missile Launcher \n\n<b>Type:</b> Frigate \nCost: 750 RUs \nBuild time: 45 s \nMaintenance cost: 12 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nFrigate Facility \n6 crew members"    
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_AdvAssaultFrigate1",
		RequiredResearch =		"MultiCannonTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		201,
		DisplayedName =			"Advanced Assault Frigate",
		Description = "<b>Description:</b> Advanced Anti-Fighter Frigate, equipped with: \n5 Flechette Turret \nConcussion Missile Launcher \n\n<b>Type:</b> Frigate \nCost: 850 RUs \nBuild time: 50 s \nMaintenance cost: 14 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nFrigate Facility \nMulti Cannons Technology \n7 crew members"    
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HeavyMissileFrigate1",
		RequiredResearch =		"HeavyMissileFrigate",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		220,
		DisplayedName =			"$7148",
		Description = "<b>Description:</b> Basic Frigate, equipped with: \nFusion Missile Launcher \nHeavy Concussion Missile Launcher \n\n<b>Type:</b> Frigate \nCost: 850 RUs \nBuild time: 45 s \nMaintenance cost: 12 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nFrigate Facility \nResearch Division \nHeavy Missile Frigate Technology \n6 crew members"     
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_InfiltratorFrigate1",
		RequiredResearch =		"FrigateInfiltrationTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		230,
		DisplayedName =			"$7150",
		Description = "<b>Description:</b> Frigate capable of initiating boarding actions and capturing enemy ships or Mining Bases, equipped with: \nFlechette Turret \nPerforation Pods Launcher (when upgraded) \n\n<b>Type:</b> Frigate \nCost: 800 RUs \nBuil time: 50 s \nMaintenance cost: 15 RUs / year \nStrong vs: Capital Ships \n\n<b>Prerequisites:</b> \nFrigate Facility \nResearch Division \nInfiltration Pod Technology \n7 crew members"        
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_SupportFrigateArmed1",
		RequiredResearch =		"SupportFrigateArmedTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		231,
		DisplayedName =			"Support Frigate",
		Description = "<b>Description:</b> Frigate capable of repair friendly frigates and disrupt nearby enemy ships, equipped with: \n6 Electro Magnetic Pulse Emitter \n\n<b>Type:</b> Frigate \nCost: 850 RUs \nBuil time: 55 s \nMaintenance cost: 15 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nFrigate Facility \nSupport Frigate Technology \n7 crew members"               
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_CommandFrigate1",
		RequiredResearch =		"CommandFrigateTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		232,
		DisplayedName =			"Patrol Frigate",
		Description = "<b>Description:</b> Reconnaissance Frigate, mounts advanced navigation systems, can build probes, equipped with: \n1 Special slot \nConcussion Missile Launcher \nIntegrated Sensor Distorsion System \nElectro Magnetic Pulse Emitter (when upgraded) \nSensor Ping (when upgraded) \n\n<b>Type:</b> Frigate \nCost: 900 RUs \nBuil time: 55 s \nMaintenance cost: 15 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nFrigate Facility \nPatrol Frigate Technology \n8 crew members"               
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_SupportFrigate1",
		RequiredResearch =		"SupportFrigateTech",
		RequiredShipSubSystems = "FrigateProduction",		
		DisplayPriority =		9998,
		DisplayedName =			"Plasma Frigate",
		Description = "<b>Description:</b> Plasma Frigate, equipped with: \n6 Plasma Cannons \n\n<b>Type:</b> Frigate \nCost: 900 RUs \nBuil time: 55 s \nMaintenance cost: 17 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nFrigate Facility \nPlasma Frigate Technology \n8 crew members"       
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_SupportFrigate_laser1",
		RequiredResearch =		"SupportFrigate_LaserTech",
		RequiredShipSubSystems = "FrigateProduction",		
		DisplayPriority =		9999,
		DisplayedName =			"Concussion Frigate",
		Description = "<b>Description:</b> Concussion Frigate, equipped with: \n6 Concussion Cannons \n\n<b>Type:</b> Frigate \nCost: 900 RUs \nBuil time: 55 s \nMaintenance cost: 17 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nFrigate Facility \nConcussion Frigate Technology (Lieutenant Rank) \n8 crew members"       
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ArtilleryFrigate1",
		RequiredResearch =		"ArtilleryGunTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		10000,
		DisplayedName =			"Artillery Frigate",
		Description = "<b>Description:</b> Anti-Frigate/Capital Ships Frigate, equipped with: \n2 Laser Pulsers \n\n<b>Type:</b> Frigate \nCost: 900 RUs \nBuil time: 55 s \nMaintenance cost: 17 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nFrigate Facility \nResearch Division \nArtillery Frigate Technology (Lieutenant Rank) \n8 crew members"       
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_EmpFrigate1",
		RequiredResearch =		"deathtech",
		RequiredShipSubSystems = "FrigateProduction",		
		DisplayPriority =		10001,
		DisplayedName =			"Warfare Frigate",
		Description = "<b>Description:</b> Advanced Support Frigate, equipped with: \n2 Light Plasma Lance \nFusion Missile Launcher (when upgraded) \n2 Electro Magnetic Pulse Emitter \n\n<b>Type:</b> Frigate \nCost: 1100 RUs \nBuil time: 60 s \nMaintenance cost: 18 RUs / year \nStrong vs: Frigates, Capital Ships (when upgraded) \n\n<b>Prerequisites:</b> \nFrigate Facility \nWarfare Frigate Technology (Lieutenant Rank) \n8 crew members"       
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LongRangeArtilleryFrigate1",
		RequiredResearch =		"LongRangeArtilleryGunTech",
		RequiredShipSubSystems =	"FrigateProduction",
		DisplayPriority =		10002,
		DisplayedName =			"Heavy Cannon Frigate",
		Description = "<b>Description:</b> Anti-Frigate/Capital Ships Frigate, equipped with: \n2 Kinetic Cannons \nHeavy Concussion Missile Launcher \nAnti-Capital Ship Mortar Missile Launcher (when upgraded) \n\n<b>Type:</b> Frigate \nCost: 1300 RUs \nBuil time: 70 s \nMaintenance cost: 20 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nFrigate Facility \nResearch Division \nHeavy Cannon Frigate Technology (Commander Rank) \n9 crew members"       
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Destroyer1",
		RequiredResearch =		"DestroyerGuns",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		309,
		DisplayedName =			"$7152",
		Description = "<b>Description:</b> Anti-Frigate Capital Ship, equipped with: \n2 Flechette Cannons \n4 Anti-Capital Ship Fusion Missile Launcher (when upgraded) \nAnti-Capital Ship Heavy Mine (when upgraded) \n4 Hull Defense Guns \n\n<b>Type:</b> Capital Ship \nCost: 2000 RUs \nBuil time: 165 s \nMaintenance cost: 55 RUs / year \nStrong vs: Frigates, Capital Ships (when upgraded) \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nDestroyer Chassis Technology \n1 officer \n15 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_PulseDestroyer1",
		RequiredResearch =		"PulseDestroyerGuns",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		310,
		DisplayedName =			"Heavy Destroyer",
		Description = "<b>Description:</b> Anti-Frigate Capital Ship, equipped with: \n1 Double Kinetic Cannon Turret \n2 Kinetic Cannon Turrets \n4 Anti-Capital Ship Fusion Missile Launcher (when upgraded) \nAnti-Capital Ship Heavy Mine (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 2500 RUs \nBuil time: 175 s \nMaintenance cost: 75 RUs / year \nStrong vs: Frigates, Capital Ships (when upgraded) \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nHeavy Destroyer Chassis Technology \n1 officer \n15 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_AM1",
		RequiredResearch =		"AMGuns",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		311,
		DisplayedName =			"Guardian",
		Description = "<b>Description:</b> Advanced Anti-Missile Capital Ship, fires at any incoming missile/bomb or mine, it can also deploy heavy mine fields, equipped with: \n4 Fast Tracking Turrets \nMine Layer \nIntegrated Defense Field \n\n<b>Type:</b> Capital Ship \nCost: 2500 RUs \nBuil time: 165 s \nMaintenance cost: 55 RUs / year \nStrong vs: Missile, Bomb, Mine \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nGuardian Chassis Technology \n12 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Cruiser1",
		RequiredResearch =		"CruiserTech",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		312,
		DisplayedName =			"Cruiser",
		Description = "<b>Description:</b> Advanced Anti-Frigate/Capital Ship, equipped with: \n1 Double Kinetic Cannon Turret \n2 Kinetic Cannon Turrets \n12 Anti-Capital Ship Fusion Missile Launcher (when upgraded) \n1 Advanced Anti-Capital Ship Heavy Fusion Missile Launcher (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 3000 RUs \nBuil time: 210 s \nMaintenance cost: 100 RUs / year \nStrong vs: Frigates, Capital Ships (when upgraded) \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nCruiser Chassis Technology \n2 officer \n20 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_artilleryship1",
		RequiredResearch =		"ArtilleryTech",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		313,
		DisplayedName =			"Artillery Cruiser",
		Description = "<b>Description:</b> Advanced Long-Range Anti-Frigate/Capital Ship, equipped with: \n5 Anti-Capital Ship Mortar Missile Launcher \n1 Special slot \n\n<b>Type:</b> Capital Ship \nCost: 3000 RUs \nBuil time: 210 s \nMaintenance cost: 100 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nArtillery Cruiser Chassis Technology \n2 officer \n20 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LightCruiser1",
		RequiredResearch =		"IonCruiserTech",
		RequiredShipSubSystems =	"CapShipProduction",
		DisplayPriority =		314,
		DisplayedName =			"Ion Cruiser",
		Description = "<b>Description:</b> Advanced Anti-Frigate/Capital Ship, equipped with: \n2 Heavy Ion Cannon Turrets \n8 Flechette Turret \n8 Anti-Capital Ship Fusion Missile Launcher (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 3000 RUs \nBuil time: 210 s \nMaintenance cost: 100 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nCapital Facility \nResearch Division \nIon Cruiser Chassis Technology \n2 officer \n20 crew members"  
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_LightCarrier1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		299,
		DisplayedName =			"Light Carrier",
		Description = "<b>Description:</b> Capital Class Production Ship, equipped with: \n2 Production slot \n2 Module slot \n4 Special slot \n2 Resource Drop-Off points \n2 Hull Defense Guns \n8 Anti-Fighter/Corvette Fusion Missile Launcher (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 1500 RUs \nBuil time: 45 s \nMaintenance cost: 80 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b>\n1 officers \n15 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Carrier1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		300,
		DisplayedName =			"$7154",
		Description = "<b>Description:</b> Capital Class Production Ship, equipped with: \n1 Production slot \n2 Module slot \n4 Special slot \n2 Resource Drop-Off points \n4 Hull Defense Guns \n\n<b>Type:</b> Capital Ship \nCost: 2000 RUs \nBuil time: 50 s \nMaintenance cost: 100 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b>\n2 officers \n30 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_BattleCarrier1",
		RequiredResearch =		"BattlecarrierTech",
		RequiredShipSubSystems =	"",
		DisplayPriority =		319,
		DisplayedName =			"Battle Carrier",
		Description = "<b>Description:</b> Capital Class Production Ship, equipped with: \n1 Production slot \n2 Module slot \n3 Special slot \n4 Hull Defense Guns \n2 Kinetic Cannon Turrets \n4 Anti-Frigate/Capital Ships Fusion Missile Launcher (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 3000 RUs \nBuil time: 85 s \nMaintenance cost: 100 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b>\nBattle Carrier Chassis Technology (Commander Rank) \n2 officers \n30 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ShipYard1",
		RequiredResearch =		"ShipyardTech",
		RequiredShipSubSystems =	"Hyperspace | LaserCannon4",
		DisplayPriority =		320,
		DisplayedName =			"$7156",
		Description = "<b>Description:</b> Capital Class Production Ship, this ship is so massive it can only Hyperspace into battle, equipped with: \n5 Production slot \n6 Module slot \n3 Special slot \n2 Resource Drop-Off points \n12 Hull Defense Guns \n\n<b>Type:</b> Capital Ship \nCost: 4000 RUs \nBuil time: 95 s \nMaintenance cost: 150 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \nHyperspace Module (on board) \nShipyard Chassis Technology (Commander Rank) \n3 officers \n40 crew members" 
	},		
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Sinner1",
		RequiredResearch =		"SinnerTech",
		RequiredShipSubSystems = "Hyperspace", 
		DisplayPriority =		300,
		DisplayedName =			"Sinner",
		Description = "<b>Description:</b> Capital Class Breakage Ship, very resistant, can transport a lot of fighter and corvettes inside the battle, equipped with: \n1 Module slot \n2 Special slot \n4 Autogun Turrets \n\n<b>Type:</b> Capital Ship \nCost: 3000 RUs \nBuil time: 200 s \nMaintenance cost: 100 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nHyperspace Module (on board) \nSinner Chassis Technology (Commander Rank) \n2 officers \n20 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_BattleCruiser1",
		RequiredResearch =		"BattlecruiserIonWeapons",
		RequiredShipSubSystems =	"AdvCapshipProduction",
		RequiredFleetSubSystems = "",
		DisplayPriority =		330,
		DisplayedName =			"$7158",
		Description = "<b>Description:</b> Capital Ships Killer, equipped with: \n2 Module slot \n4 Special slot \n3 Heavy Laser Pulser \n5 Hull Defense Guns \n4 Pulsar Laser Guns \n8 Anti-Frigate/Capital Ships Fusion Missile Launcher (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 4000 RUs \nBuil time: 280 s \nMaintenance cost: 125 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nHeavy Capital Facility \nResearch Division \nBattlecruiser Chassis Technology (Captain Rank) \n3 officers \n30 crew members"
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_MissileBattleCruiser1",
		RequiredResearch =		"MissileBattlecruiserIonWeapons",
		RequiredShipSubSystems =	"AdvCapshipProduction",
		RequiredFleetSubSystems = "", 
		DisplayPriority =		331,
		DisplayedName =			"Missile Battlecruiser",
		Description = "<b>Description:</b> Capital Ships Killer, equipped with: \n2 Module slot \n2 Special slot \n2 Heavy Laser Pulser \n5 Hull Defense Guns \n2 Pulsar Laser Guns \n15 Anti-Frigate/Capital Ships Fusion Missile Launcher (if enabled) \n\n<b>Type:</b> Capital Ship \nCost: 5000 RUs \nBuil time: 320 s \nMaintenance cost: 125 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nHeavy Capital Facility \nResearch Division \nMissile Battlecruiser Chassis Technology (Captain Rank) \n3 officers \n30 crew members"
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_alkhalid1",
		RequiredResearch =		"BattleshipTech",
		RequiredShipSubSystems =	"AdvCapshipProduction",
		RequiredFleetSubSystems = "",
		DisplayPriority =		335,
		DisplayedName =			"Battleship",
		Description = "<b>Description:</b> Death Vessel, equipped with: \n11 Special slot \n2 Laser Turrets \n2 Ion Turrets \nAnti Capital Ships Heavy Mine (when upgraded) \n8 Anti-Corvette/Frigate Fusion Missile Launcher (when upgraded) \n8 Anti-Frigate/Capital Ships Fusion Missile Launcher (when upgraded) \nAnti-Capital Ships Perforation Bomb (when upgraded) \n\n<b>Type:</b> Capital Ship \nCost: 6000 RUs \nBuil time: 360 s \nMaintenance cost: 150 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nHeavy Capital Facility \nResearch Division \nBattleship Chassis Technology (Commodore Rank) \n3 officers \n35 crew members"
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_dreadnaught1",
		RequiredResearch =		"DreadnaughtTech",
		RequiredShipSubSystems =	"AdvCapshipProduction",
		RequiredFleetSubSystems = "",
		DisplayPriority =		340,
		DisplayedName =			"Dreadnaught",
		Description = "<b>Description:</b> Advanced Death Vessel, equipped with: \n12 Anti Capital Ships heavy ion cannons \n2 Kinetic Cannon Turrets \n4 Pulsar Laser Guns \n5 Anti-Frigate/Capital Ships Fusion Missile Launcher \n\n<b>Type:</b> Capital Ship \nCost: 8000 RUs \nBuil time: 460 s \nMaintenance cost: 175 RUs / year \nStrong vs: Capital Ships \n\n<b>Prerequisites:</b> \nHeavy Capital Facility \nResearch Division \nDreadnaught Chassis Technology (Commodore Rank) \n3 officers \n35 crew members"},
	{ 
		Type =					Ship, 
		ThingToBuild =			"Vgr_WeaponPlatform_gun1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		400,
		DisplayedName =			"$7160",
		Description = "<b>Description:</b> Anti-Fighter/Corvette Weapon Platform, equipped with: \n2 Long Range Flechette Turrets \nAnti-Missile System (when upgraded) \n\n<b>Type:</b> Platform \nCost: 400 RUs \nBuil time: 30 s \nMaintenance cost: 2 RUs / year \nStrong vs: Fighters, Corvettes \n\n<b>Prerequisites:</b> \nPlatform Control Module \n1 crew members"   
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_WeaponPlatform_lance1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		405,
		DisplayedName =			"Lance Platform",
		Description = "<b>Description:</b> Anti-Corvette/Frigate Weapon Platform, equipped with: \n2 Long Range Lance Turrets \n\n<b>Type:</b> Platform \nCost: 400 RUs \nBuil time: 30 s \nMaintenance cost: 2 RUs / year \nStrong vs: Corvettes, Frigates \n\n<b>Prerequisites:</b> \nPlatform Control Module \nResearch Division \n1 crew members"    
	},	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_WeaponPlatform_missile1",
		RequiredResearch =		"PlatformHeavyMissiles",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		410,
		DisplayedName =			"$7162",
		Description = "<b>Description:</b> Anti-Frigate/Capital Ships Weapon Platform, equipped with: \nLong Range Fusion Missile Launcher \n\n<b>Type:</b> Platform \nCost: 400 RUs \nBuil time: 30 s \nMaintenance cost: 4 RUs / year \nStrong vs: Frigates, Capital Ships \n\n<b>Prerequisites:</b> \nPlatform Control Module \nResearch Division \nPlatform Missile Technology \n2 crew members"    
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_mobile_inhibitor1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"HyperspaceInhibitor & PlatformProduction",
		DisplayPriority =		530,
		DisplayedName =			"Mobile Gravity Well Generator",
		Description = "<b>Description:</b> Hyperspace inhibitor, prevents enemy ships from entering or exiting hyperspace within a limited Radius around the ship \n\n<b>Type:</b> Platform \nCost: 2000 RUs \nBuil time: 100 s \nMaintenance cost: 10 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \nPlatform Control Module \nGravity Well Generator \n4 crew members"    
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_Cruse1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"FireControlTower",
		RequiredFleetSubSystems = "", 
		DisplayPriority =		530,
		DisplayedName =			"Short-Range Cruiser Missile (Tube 1)",
		Description = "<b>Description:</b> Missile Tube, Anti-Capital Ship short-range auto-aiming missile launcher, very fast and cheap, the Cruiser Missile automatically engages enemy Capital Ships within a short radious, the missile do more damage if the target is close to the launching ship, if there are no enemies in the area the Cruiser will self destroy \n\n<b>Type:</b> Missile \nRange: 15 Km \nCost: 1000 RUs \nBuil time: none \nMaintenance cost: none \nStrong vs: Capital Ships \n\n<b>Prerequisites:</b> \nFire Control Tower (on board)" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_HyperSpace_Platform1",
		RequiredResearch =		"HyperspaceGateTech",
		RequiredShipSubSystems =	"PlatformProduction",
		DisplayPriority =		520,
		DisplayedName =			"$7174",
		Description = "<b>Description:</b> Basic Hyperspace Generator unique to the Vaygr, when linked with a second Hyperspace Gate it allows friendly ships to jump between the two locations \n\n<b>Type:</b> Utility \nCost: 750 RUs \nBuil time: 30 s \nMaintenance cost: 5 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \nPlatform Control Module \nResearch Division \nHyperspace Gate Generator Technology \n2 crew members" 
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceCollector1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		500,
		DisplayedName =			"$7164",
		Description = "<b>Description:</b> Basic Utility Ship, can harvest Resources and extract RUs from Mining Bases, when upgraded can repair damaged ships \n\n<b>Type:</b> Utility \nCost: 600 RUs \nBuil time: 35 s \nMaintenance cost: 4 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \n2 crew members"     
	},
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"Vgr_ResourceController1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		510,
		DisplayedName =			"$7166",
		Description = "<b>Description:</b> Mobile Resource Drop-Off point, can dock 2 Resource Collectors at once, equipped with: \n4 Hull Defense Guns \n2 Resource Drop-Off points \n\n<b>Type:</b> Utility \nCost: 800 RUs \nBuil time: 50 s \nMaintenance cost: 8 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \n4 crew members" 
	},	
	{ 
		Type = 					Ship, 
		ThingToBuild = 			"vgr_resourcecontrollerdouble1",
		RequiredResearch =		"",
		RequiredShipSubSystems =	"",
		DisplayPriority =		511,
		DisplayedName =			"Advanced Mobile Refinery",
		Description = "<b>Description:</b> Advanced mobile Resource Drop-Off point, can dock 4 Resource Collectors at once, equipped with: \n4 Hull Defense Guns \n2 Flechette Cannons  \n4 Resource Drop-Off points \n\n<b>Type:</b> Utility \nCost: 1500 RUs \nBuil time: 75 s \nMaintenance cost: 12 RUs / year \nStrong vs: none \n\n<b>Prerequisites:</b> \n8 crew members" 
	},
	
	{ 
        Type = Ship, 
        ThingToBuild = "Vgr_Scaver1", 
        RequiredResearch = "", 
        RequiredShipSubSystems = "", 
        RequiredFleetSubSystems = "Research", 
        DisplayPriority = 1, 
        DisplayedName = "Scavenger", 
        Description = "<b>Description:</b> Advanced resource operations supporter, the Scavenger can increase the RU max capacity, can dock 4 Resource Collectors at once, can generate RUs by fusion, equipped with: \n3 Module slot \n7 Special slot \n4 Resource Drop-Off points \n2 Autogun Turrets \n6 Hull Defense Guns\nCan build: Utilities, Subsystems, Weapon Tubes\nCan dock and hold: Resource Collectors\n\n<b>Type:</b> Capital Ship \nCost: 2000 RUs \nBuild time: 80 s \nMaintenance cost: 100 RUs/year \nStrong vs: none \n\n<b>Prerequisites:</b> \nResearch Division \n1 officer \n12 crew members" }, 

	
	{ 
				Type = Ship, 
				ThingToBuild = "vgr_container1",
				RequiredResearch = "",
				RequiredFleetSubSystems = "hasallied",	
				DisplayPriority = 521,
				DisplayedName = "Trade Convoy",
				Description = "<b>Description:</b> RUs Trade Container, allows big Production Capital Ships to trade RUs with allied players; more RUs you have in store, more percentage (in RUs) you will gain from your trade network at any docking point; to work properly, allied players must be at a minimum distance; ideal for keep high production levels\n\n<b>Type:</b> Utility \nCost: 1250 RU \nBuild time: 65 s \nMaintenance cost: none \nStrong vs: none \n\n<b>Prerequisites:</b> \nAt least one allied player \n4 crew members" },	          			 								
	  				
}