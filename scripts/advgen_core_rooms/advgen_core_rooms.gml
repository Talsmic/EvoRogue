///advgen_core_rooms();

for ( var i=1 ; i<=adv_Regions ; i++ ) 	{
	var _x = irandom_range( adv_RegionXmin[i], adv_RegionXmax[i] );
	var _y = irandom_range( adv_RegionYmin[i], adv_RegionYmax[i] );
	adv_TileRoomID[_x,_y] = i;
	adv_TileFloor[_x,_y] = enum_TileFloors.normal;
	};