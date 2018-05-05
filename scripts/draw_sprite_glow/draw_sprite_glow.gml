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

//Create Surface
GlowSurface = surface_create( sprite_get_width(sprite)+size, sprite_get_height(sprite)+size );
surface_set_target(GlowSurface);
draw_clear_alpha( c_white, 0 );
//Turn on Fog
gpu_set_fog(true, c_white, 0, 0);

//Draw to Surface
draw_sprite_general(sprite,image,0,0,sprite_get_width(sprite),sprite_get_height(sprite),size,size,1,1,0,c_white,c_white,c_white,c_white,1);

//Turn of Fog and Reset Target
gpu_set_fog(false, c_white, 0, 0);
surface_reset_target();
//Draw Surface
draw_surface_ext(GlowSurface,X,Y,1,1,0,colour,alpha);
if ( surface_exists(GlowSurface) ) { surface_free(GlowSurface) };