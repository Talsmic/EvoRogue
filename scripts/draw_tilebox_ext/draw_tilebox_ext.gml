///draw_tilebox_ext(x,y,width,height,sprite_id,colour,alpha);
/// @arg x
///	@arg y
/// @arg width		
/// @arg height
/// @arg sprite_id
///	@arg colour	
/// @arg alpha
/*
	[Edited 24/4/2018]
	Draws a ui box from a spriteset
*/

var X = argument0; 
var Y = argument1;
var width = argument2; 
var height = argument3;
var sprite_id = argument4;
var colour = argument5;
var alpha = argument6;

//Find Tile Sizes
var tw = sprite_get_width(sprite_id);
var th = sprite_get_width(sprite_id);
//Find Body Size
var bw = width-tw*2;
var bh = height-th*2;
//Enlarge Undersized Boxes to avoid graphical errors
if ( bw < 0 ) { bw=0; width=tw*2 };
if ( bh < 0 ) { bh=0; height=th*2 };

//Draw 
//Top Left Corner [Frame 1]
draw_sprite_ext				(sprite_id,	1,	X,		Y,		1,1,0,	colour,alpha);
//Top Border [Frame 2]
draw_sprite_stretched_ext	(sprite_id,	2,	X+tw,	Y,		bw,th,	colour,alpha);
//Top Right Corner [Frame 3]
draw_sprite_ext				(sprite_id,	3,	X+tw+bw,Y,		1,1,0,	colour,alpha);
//Left Border [Frame 4]
draw_sprite_stretched_ext	(sprite_id,	4,	X,		Y+th,	tw,bh,	colour,alpha);
//Body [Frame 5]
draw_sprite_stretched_ext	(sprite_id,	5,	X+tw,	Y+th,	bw,bh,	colour,alpha);
//Right Border [Frame 6]
draw_sprite_stretched_ext	(sprite_id,	6,	X+tw+bw,Y+th,	tw,bh,	colour,alpha);
//Bottom Left Corner [Frame 7]
draw_sprite_ext				(sprite_id,	7,	X,		Y+th+bh,1,1,0,	colour,alpha);
//Bottom Border [Frame 8]
draw_sprite_stretched_ext	(sprite_id,	8,	X+tw,	Y+th+bh,bw,th,	colour,alpha);
//Bottom Right Corner [Frame 9]
draw_sprite_ext				(sprite_id,	9,	X+tw+bw,Y+th+bh,1,1,0,	colour,alpha);

