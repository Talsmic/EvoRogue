///advgen_core_rooms();

//Create Start (always ID1)
advgen_room_createinregion(1,1,true);
//Create Encounter Rooms
for ( var i=2 ; i<adv_Regions ; i++ ) 	{
	advgen_room_createinregion(i,i,true);
	};
//Create Exit
advgen_room_createinregion(adv_Regions,adv_Regions,true);
//Draw Floor Inbetween Rooms
for ( var i=1 ; i<adv_Regions ; i++ ) 	{
	advgen_floorbetweenpoints(advgen_room_findx(i),advgen_room_findy(i),advgen_room_findx(i+1),advgen_room_findy(i+1),enum_Paths.israndom,enum_TileFloors.normal);
	};