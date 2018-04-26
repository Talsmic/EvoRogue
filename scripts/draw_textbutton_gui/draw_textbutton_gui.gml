///draw_textbutton_ext(x,y,string,colour,roll_colour,height_padding,width_padding);
/// @arg x			
/// @arg y
/// @arg string		
/// @arg colour
/// @arg roll_colour
/// @arg height_padding
/// @arg width_padding
/*
	[Edited 24/3/2018]
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

//Draw Shadow
draw_text_flatcolour( X+1,Y+1,_string,c_black,0.8 );
//Draw Text
draw_text_flatcolour( X,Y,_string,colour,1 );
/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/
//Draw Hover
if ( mouse_in_region_gui( define_region( X-width_padding,Y-height_padding,width+width_padding,height+height_padding ) ) ) {
	draw_text_flatcolour( X,Y,_string,colour2,1 );
	};