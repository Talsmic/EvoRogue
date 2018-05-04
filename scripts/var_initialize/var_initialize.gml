///var_initialize();
/*
	[Edited 24/4/2018]
	Variables to be created when the game starts
	These variables need to be created before loading a save file, and
	this variable set should not be run after loading a save.
*/

//=[Gameplay Settings](gps)===========================================
//  Most of these are constants that can be adjusted during 
//  testing but will be finalized before release
global.gps_partysize = 10;				//Maximum party size
global.gps_storagesize = 150;			//Maximum creatures in a storage set
global.gps_currencymultiplier = 3;		//Multiplier for currency gains
global.gps_experiencemultiplier = 3;	//Multiplier for experience gains
// (bal) balance settings
global.bal_health_base = 45;			//Base Health of a lv0 Creature
global.bal_health_growth = 5.5;			//Health growth per level
global.bal_energy_base = 100;			//Default energy pool size
global.bal_energy_growth = 0;			//Default energy pool size
global.bal_startingenergy = 30;			//Energy a lv0 creature starts a battle with
global.bal_startingenergy_growth = 2;	//Starting Energy growth per level

global.bal_chainsize = 3;				//Amount of skills that can be queued in a round
global.bal_effectcap = 5;

global.bal_recovery_health = 5;			//Base health recovery per round
global.bal_recovery_energy = 20;		//Base energy recovery per round
global.bal_recovery_healthgrowth = 0;	//health recovery growth per level
global.bal_recovery_energygrowth = 0;	//energy recovery growth per level
global.bal_recovery_healthratio = 0.2;	//health recovery growth per point of Recovery
global.bal_recovery_energyratio = 0.8;	//energy recovery growth per point of Recovery
global.bal_recovery_penalty = 0.2;		//Recovery penalty applied to benched creatures
// (battle) battle settings
global.battle_engaged = false;
global.battle_pointstowin = 0;
global.battle_pointstowin[1] = 3;
global.battle_pointstowin[2] = 3;
global.battle_creaturecap = 0;
global.battle_creaturecap[1] = 3;
global.battle_creaturecap[2] = 3;
//====================================================================
