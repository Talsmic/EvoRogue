/// @desc draw_textbutton(x,y,string,colour);
/// @arg x			
/// @arg y
/// @arg string		
/// @arg colour
/*
	[Edited 19/3/2018]
	Draws a basic text button
*/
var X = argument0; 
var Y = argument1; 
var _string = argument2; 
var colour = argument3;
if ( colour = c_white ) { var colour2 = c_black } else { var colour2 = c_white };
var height = string_height( _string ) - 2;
var width = string_width( _string ) - 2;

draw_textbutton_ext(X,Y,_string,colour,colour2,0,0);