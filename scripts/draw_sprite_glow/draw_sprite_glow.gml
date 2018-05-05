///draw_sprite_glow(sprite_index,image_index,x,y,size,colour,alpha);
/// @arg sprite_index
/// @arg image_index
/// @arg x
/// @arg y
/// @arg size
/// @arg colour
/// @arg alpha
var sprite = argument0;
var image = argument1;
var X = argument2;
var Y = argument3;
var size = argument4;
var colour = argument5;
var alpha = argument6;

draw_sprite_glow_ext(sprite,image,X,Y,size,colour,alpha,1,1,0);