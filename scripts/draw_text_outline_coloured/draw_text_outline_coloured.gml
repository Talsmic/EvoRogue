/// @desc draw_text_outline_coloured(x,y,string,colour,ol_colour);
/// @arg x			
/// @arg y
/// @arg string		
/// @arg colour
/// @arg ol_colour
/*
	[Edited 11/5/2017] (variant of: draw_text_outline)
	Draws text with a [coloured] 1px outline
*/
var ol_x = argument0; 
var ol_y = argument1; 
var ol_string = argument2; 
var colour = argument3;
var ol_colour = argument4;

draw_set_colour(ol_colour);
draw_text(ol_x+1,ol_y-1,ol_string);
draw_text(ol_x+1,ol_y,ol_string);
draw_text(ol_x+1,ol_y+1,ol_string);
draw_text(ol_x-1,ol_y-1,ol_string);
draw_text(ol_x-1,ol_y,ol_string);
draw_text(ol_x-1,ol_y+1,ol_string);
draw_text(ol_x,ol_y+1,ol_string);
draw_text(ol_x,ol_y-1,ol_string);
draw_set_colour(colour);
draw_text(ol_x,ol_y,ol_string);
