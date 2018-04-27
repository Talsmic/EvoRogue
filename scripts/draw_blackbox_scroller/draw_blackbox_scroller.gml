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
var draw_colour = c_midgray;

//State Detection
if ( state == eIconState.detect ) {
	if ( infocus() ) {
		if ( mouse_in_region( define_region( X-1,Y-2,length,6 ) ) ) {
			if ( mouse_check_button(mb_left) ) {
				state = eIconState.pressed
				}
			else { state = eIconState.mouseover };
			}
		else { state = eIconState.enabled };
		}
	else { state = eIconState.disabled };
	};

//State Adjustments
var iconoffset = 0;
var spriteoffset = 0;
switch ( state ) {
	case eIconState.disabled:
		draw_colour = c_darkgray;
		spriteoffset = 1;
		break;
	case eIconState.pressed:
		draw_colour = c_shadow;
		break;
	case eIconState.mouseover:
		draw_colour = c_shadow_dark;
		iconoffset = globalcontroller.Beat[0]*2 -1;
		break;
	};

switch ( arrowdirection ) {
	case UP:
		draw_sprite_ext(spr_whitebox,1,X,Y,1,1,0,draw_colour,1);
		draw_sprite_stretched_ext(spr_whitebox,2,X+4,Y,length-8,4,draw_colour,1);
		draw_sprite_ext(spr_whitebox,3,X+length-4,Y,1,1,0,draw_colour,1);
		draw_sprite(spr_scrollarrow,0+spriteoffset,X+length*0.5,Y+2-iconoffset)	
		break;
	case DOWN:
		draw_sprite_ext(spr_whitebox,7,X,Y,1,1,0,draw_colour,1);
		draw_sprite_stretched_ext(spr_whitebox,8,X+4,Y,length-8,4,draw_colour,1);
		draw_sprite_ext(spr_whitebox,9,X+length-4,Y,1,1,0,draw_colour,1);
		draw_sprite(spr_scrollarrow,2+spriteoffset,X+length*0.5,Y+2+iconoffset)	
		break;
	};