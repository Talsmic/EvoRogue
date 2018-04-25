///draw_blackbox_scroller(x,y,length,direction,state);
/// @arg x			
/// @arg y
/// @arg length		
/// @arg direction
/// @arg state
/*
	[Edited 24/4/2018] (Variant of draw_tilebox_ext)
	Draws a coloured, semi-transparent UI box with rounded corners 
*/

var X = argument0; 
var Y = argument1;
var length = argument2; 
var arrowdirection = argument3;
var state = argument4;

switch ( arrowdirection ) {
	case UP:
		draw_sprite_ext(spr_blackbox,1,X,Y,1,1,0,c_black,1);
		draw_sprite_stretched_ext(spr_blackbox,2,X+4,Y,length-8,4,c_black,1);
		draw_sprite_ext(spr_blackbox,3,X+length-4,Y,1,1,0,c_black,1);
		if ( state ) {	draw_sprite(spr_scrollarrow,0,X+length*0.5,Y+2)	};
				else {	draw_sprite(spr_scrollarrow,1,X+length*0.5,Y+2)	};
		break;
	case DOWN:
		draw_sprite_ext(spr_blackbox,7,X,Y,1,1,0,c_black,1);
		draw_sprite_stretched_ext(spr_blackbox,8,X+4,Y,length-8,4,c_black,1);
		draw_sprite_ext(spr_blackbox,9,X+length-4,Y,1,1,0,c_black,1);
		if ( state ) {	draw_sprite(spr_scrollarrow,2,X+length*0.5,Y+2)	};
				else {	draw_sprite(spr_scrollarrow,3,X+length*0.5,Y-1)	};
		break;
	};