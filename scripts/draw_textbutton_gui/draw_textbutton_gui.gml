/// @desc draw_textbutton_gui(x,y,string,colour,roll_colour,height_padding,width_padding);
/// @arg x			
/// @arg y
/// @arg string		
/// @arg colour
/// @arg roll_colour
/// @arg height_padding
/// @arg width_padding
/*
	[Edited 24/3/2018]
	Draws a text button with a user defined region on the gui layer
*/
var _x = argument0; 
var _y = argument1; 
var _string = argument2; 
var colour = argument3;
var colour2 = argument4;
var height = string_height( _string ) - 2;
var width = string_width( _string ) - 2;
var height_padding = argument5; 
var width_padding = argument6; 

var region;
region[1] = _x-width_padding;			//[1] X1 [Integer]
region[2] = _y-height_padding;			//[2] Y1 [Integer]
region[3] = _x+width+width_padding*2;	//[3] X2 [Integer]
region[4] = _y+height+height_padding*2;	//[4] Y2 [Integer]

//Draw Shadow
draw_text_color( _x+1,_y+1,_string,c_black,c_black,c_black,c_black,0.8 );
//Draw Text
draw_text_color( _x,_y,_string,colour,colour,colour,colour,1 );
//Draw Hover
if ( point_in_rectangle( mouse_x*window_get_truescaling(), mouse_y*window_get_truescaling(), region[1], region[2], region[3], region[4] ) ) {
	draw_text_color( _x,_y,_string,colour2,colour2,colour2,colour2,1 );
	};