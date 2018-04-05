/// @desc draw_text_outline(x,y,string,colour);
/// @arg x			
/// @arg y
/// @arg string		
/// @arg colour
/*
	[Edited 11/5/2017]
	Draws text with a black 1px outline
*/
var ol_x = argument0; 
var ol_y = argument1; 
var ol_string = argument2; 
var colour = argument3;
var ol_colour = c_black;

draw_set_colour(ol_colour);
draw_text(ol_x+1,ol_y,ol_string);
draw_text(ol_x+1,ol_y+1,ol_string);
draw_text(ol_x-1,ol_y,ol_string);
draw_text(ol_x-1,ol_y+1,ol_string);
draw_text(ol_x,ol_y+1,ol_string);
draw_text(ol_x,ol_y-1,ol_string);
draw_set_colour(colour);
draw_text(ol_x,ol_y,ol_string);
