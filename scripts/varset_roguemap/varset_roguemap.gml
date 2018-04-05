///varset_roguemap();
adv_FixedEntry = false;
adv_FixedExit = false;
adv_AllowIntersection = false;


//Define Grid Size and Contents
advgen_creategrid(0,0);
//adv_TileRoomID -> adv_RoomEncounterID -> adv_Encounter 
adv_Encounter = [];			//A stored reference list of all encounters in an adventure
adv_RoomEncounterID = [];	//A stored reference list of the encounters in each room 
adv_Regions = 5;
for ( var i=0 ; i<=adv_Regions ; i++ ) 	{
	adv_RegionXmin[i] = 0;
	adv_RegionXmax[i] = 0;
	adv_RegionYmin[i] = 0;
	adv_RegionYmax[i] = 0;
	};
	