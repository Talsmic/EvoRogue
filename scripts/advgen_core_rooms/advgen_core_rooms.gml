///advgen_core_rooms();

//Create Start (always ID1)
advgen_room_createinregion(1,1,true);
//Create Exit (always ID2)
advgen_room_createinregion(adv_Regions,2,true);
//Create Encounter Rooms
for ( var i=2 ; i<adv_Regions ; i++ ) 	{
	advgen_room_createinregion(i,i+1,true);
	};
//Draw Floor Inbetween Rooms
advgen_floorbetweenpoints(X1,Y1,X2,Y2,PathStyle,FloorType);