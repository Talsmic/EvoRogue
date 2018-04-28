///draw_textbutton_gui(x,y,string,colour,roll_colour,height_padding,width_padding);
/// @arg x			
/// @arg y
/// @arg string		
/// @arg colour
/// @arg roll_colour
/// @arg height_padding
/// @arg width_padding
/*
	[Edited 28/4/2018]
	Draws a text button with a user defined region
*/
var X = argument0; 
var Y = argument1; 
var _string = argument2; 
var colour = argument3;
var colour2 = argument4;
var height = string_height( _string ) - 2;
var width = string_width( _string ) - 2;
var height_padding = argument5; 
var width_padding = argument6; 

//State Detection
if ( infocus() ) {
	if ( mouse_in_region_gui( define_region( X-width_padding,Y-height_padding,width+width_padding,height+height_padding ) ) ) {
		if ( mouse_check_button(mb_left) ) {
			var state = eIconState.pressed
			}
		else { var state = eIconState.mouseover };
		}
	else { var state = eIconState.enabled };
	}
else { var state = eIconState.disabled };

//Draw
switch ( state ) {
	
	case eIconState.disabled:
		draw_text_flatcolour( X+1,Y+1,_string,c_black,0.8 );
		draw_text_flatcolour( X,Y+1,_string,find_colour_dark(colour),0.8 );
		break;
		
	case eIconState.enabled: default:
		draw_text_flatcolour( X+1,Y+1,_string,c_black,0.8 );
		draw_text_flatcolour( X,Y,_string,colour,1 );
		break;
		
	case eIconState.pressed:
		draw_text_flatcolour( X+1,Y+1,_string,c_black,0.8 );
		draw_text_flatcolour( X,Y+1,_string,colour2,1 );
		break;
		
	case eIconState.mouseover:
		draw_text_flatcolour( X+1,Y+1,_string,c_black,0.8 );
		draw_text_flatcolour( X,Y,_string,colour2,1 );
		break;
		
	};