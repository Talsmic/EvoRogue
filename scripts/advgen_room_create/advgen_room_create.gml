///advgen_room_create(Xmin,Xmax,Ymin,Ymax,RoomID,ForcePlace);
/// @arg Xmin
/// @arg Xmax
/// @arg Ymin
/// @arg Ymax
/// @arg RoomID
/// @arg ForcePlace

var Xmin = argument0;
var Xmax = argument1;
var Ymin = argument2;
var Ymax = argument3;
var RoomID = argument4;
var ForcePlace = argument5;

//Attempt to place room at a random ID (will make up to 3 attempts)
repeat 3 {
	var X = irandom_range( Xmin, Xmax );
	var Y = irandom_range( Ymin, Ymax );
	if ( adv_TileRoomID[X,Y] == 0 ) {
		adv_TileRoomID[X,Y] = RoomID;
		adv_TileFloor[X,Y] = eTileFloors.normal;
		return true;
		};
	};

//If ForcePlace isn't required, fail to place room
if ( ForcePlace == false ) {
	return false;
	};
	
//Force Place a spot in the region, starting from the top left
for ( var X=Xmin ; X<=Xmax ; X++ ) {
	for ( var Y=Ymin ; Y<=Ymax ; Y++ ) {
		if ( adv_TileRoomID[X,Y] == 0 ) {
			adv_TileRoomID[X,Y] = RoomID;
			adv_TileFloor[X,Y] = eTileFloors.normal;
			return true;
			};
		
		};
	};
	
//If you reach this point, the region is full and the room fails to place
return false;