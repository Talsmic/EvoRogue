///advgen_creategrid(XSize,YSize);
/// @arg XSize			
/// @arg YSize

adv_GridXSize = argument0;
adv_GridYSize = argument1;

for ( var i=0 ; i<=adv_GridXSize+1 ; i++ ) {
	for ( var j=0 ; j<=adv_GridYSize+1 ; j++ ) {
		adv_TileRoomID[i,j] = 0; 
		adv_TileFloor[i,j] = enum_TileFloors.none;
		adv_TileConnectsUp[i,j]	= false;
		adv_TileConnectsDown[i,j] = false;
		adv_TileConnectsLeft[i,j] = false;
		adv_TileConnectsRight[i,j] = false;
		};
	};