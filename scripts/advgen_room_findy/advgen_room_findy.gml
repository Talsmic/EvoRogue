///advgen_room_findy(RoomID);
/// @arg RoomID
var RoomID = argument0; 

for ( var i=0 ; i<=adv_GridXSize+1 ; i++ ) {
	for ( var j=0 ; j<=adv_GridYSize+1 ; j++ ) {
		if ( adv_TileRoomID[i,j] == RoomID ) {
			return j;
			};		
		};
	};
