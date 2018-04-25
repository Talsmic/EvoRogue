///draw_textbutton_gui(x,y,string,colour,roll_colour,height_padding,width_padding);
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
var X = argument0; 
var Y = argument1; 
var _string = argument2; 
var colour = argument3;
var colour2 = argument4;
var height = string_height( _string ) - 2;
var width = string_width( _string ) - 2;
var height_padding = argument5; 
var width_padding = argument6; 

var region;
region[1] = X-width_padding;			//[1] X1 [Integer]
region[2] = Y-height_padding;			//[2] Y1 [Integer]
region[3] = X+width+width_padding*2;	//[3] X2 [Integer]
region[4] = Y+height+height_padding*2;	//[4] Y2 [Integer]

//Draw Shadow
draw_text_flatcolour( X+1,Y+1,_string,c_black,0.8 );
//Draw Text
draw_text_flatcolour( X,Y,_string,colour,1 );
//Draw Hover
if ( point_in_rectangle( mouse_x*window_get_truescaling(), mouse_y*window_get_truescaling(), region[1], region[2], region[3], region[4] ) ) {
	draw_text_flatcolour( X,Y,_string,colour2,1 );
	};