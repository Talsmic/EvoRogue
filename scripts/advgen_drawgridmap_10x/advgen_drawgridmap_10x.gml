/// @desc advgen_drawgridmap_10x(x,y);
/// @arg x
/// @arg y
var X = argument0;
var Y = argument1;

//Draw Grid
for ( var i=1 ; i<=adv_GridXSize ; i++ ) {
	for ( var j=1 ; j<=adv_GridYSize ; j++ ) {
			draw_sprite(spr_maptiles10x,0,X+10*i,Y+10*j);
		};
	};

//Draw Regions
for ( var i=0 ; i<=adv_Regions ; i++ ) 	{
	for ( var j=adv_RegionXmin[i] ; j<=adv_RegionXmax[i] ; j++ ) {
		for ( var k=adv_RegionYmin[i] ; k<=adv_RegionYmax[i] ; k++ ) {
			draw_sprite_ext(spr_maptiles10x,1,X+10*j,Y+10*k,1,1,0,find_colour(string(i)),0.2);
			};
		};
	};
	
//Draw Rooms
for ( var i=1 ; i<=adv_GridXSize ; i++ ) {
	for ( var j=1 ; j<=adv_GridYSize ; j++ ) {
		//Draw FloorBox
		if ( adv_TileFloor[i,j] ) {
			draw_sprite(spr_maptiles10x,3,X+10*i,Y+10*j);
			};
		//Draw Paths
		if ( adv_TileConnectsUp[i,j] ) {
			draw_sprite(spr_maptiles10x,4,X+10*i,Y+10*j);
			};
		if ( adv_TileConnectsRight[i,j] ) {
			draw_sprite(spr_maptiles10x,5,X+10*i,Y+10*j);
			};
		if ( adv_TileConnectsDown[i,j] ) {
			draw_sprite(spr_maptiles10x,6,X+10*i,Y+10*j);
			};
		if ( adv_TileConnectsLeft[i,j] ) {
			draw_sprite(spr_maptiles10x,7,X+10*i,Y+10*j);
			};
		//Draw Chamber
		if ( adv_TileRoomID[i,j] ) {
			draw_sprite(spr_maptiles10x,2,X+10*i,Y+10*j);
			};
		};
	};