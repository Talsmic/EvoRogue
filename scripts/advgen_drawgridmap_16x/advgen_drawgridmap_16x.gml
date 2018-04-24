/// @desc advgen_drawgridmap_16x(x,y);
/// @arg x
/// @arg y
var X = argument0;
var Y = argument1;

//Draw Grid
for ( var i=1 ; i<=adv_GridXSize ; i++ ) {
	for ( var j=1 ; j<=adv_GridYSize ; j++ ) {
			draw_sprite(spr_maptiles16x,0,X+16*i,Y+16*j);
		};
	};

//Draw Regions
for ( var i=0 ; i<=adv_Regions ; i++ ) 	{
	for ( var j=adv_RegionXmin[i] ; j<=adv_RegionXmax[i] ; j++ ) {
		for ( var k=adv_RegionYmin[i] ; k<=adv_RegionYmax[i] ; k++ ) {
			draw_sprite_ext(spr_maptiles16x,1,X+16*j,Y+16*k,1,1,0,find_colour(string(i)),0.2);
			};
		};
	};
	
//Draw Rooms
for ( var i=1 ; i<=adv_GridXSize ; i++ ) {
	for ( var j=1 ; j<=adv_GridYSize ; j++ ) {
		//Draw FloorBox
		if ( adv_TileFloor[i,j] ) {
			draw_sprite(spr_maptiles16x,3,X+16*i,Y+16*j);
			};
		//Draw Chamber
		if ( adv_TileRoomID[i,j] ) {
			draw_sprite(spr_maptiles16x,2,X+16*i,Y+16*j);
			//DB draw_set_colour(c_black);
			//DB draw_set_font(ft_EvoTooltipCondensed_6);
			//DB draw_text(X+16*i,Y+16*j,adv_TileRoomID[i,j]);
			};
		//Draw Paths
		if ( adv_TileConnectsUp[i,j] ) {
			draw_sprite(spr_maptiles16x,4,X+16*i,Y+16*j);
			};
		if ( adv_TileConnectsRight[i,j] ) {
			draw_sprite(spr_maptiles16x,5,X+16*i,Y+16*j);
			};
		if ( adv_TileConnectsDown[i,j] ) {
			draw_sprite(spr_maptiles16x,6,X+16*i,Y+16*j);
			};
		if ( adv_TileConnectsLeft[i,j] ) {
			draw_sprite(spr_maptiles16x,7,X+16*i,Y+16*j);
			};
		};
	};