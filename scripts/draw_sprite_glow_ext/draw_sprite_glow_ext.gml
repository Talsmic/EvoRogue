///draw_sprite_glow_ext(sprite_index,image_index,x,y,size,colour,alpha,xscale,yscale,rotation);
/// @arg sprite_index
/// @arg image_index
/// @arg x
/// @arg y
/// @arg size
/// @arg colour
/// @arg alpha
/// @arg xscale
/// @arg yscale
/// @arg rotation
var spr = argument0;
var img = argument1;
var X = argument2;
var Y = argument3;
var size = argument4;
var colour = argument5;
var alpha = argument6;
var Xs = argument7;
var Ys = argument8;
var r = argument9;
var w = sprite_get_width(spr);
var h = sprite_get_height(spr);
var c = c_white;

//Create Surface
GlowSurface = surface_create( w+size, h+size );
surface_set_target(GlowSurface);
draw_clear_alpha( c_white, 0 );
//Turn on Fog
gpu_set_fog(true, c_white, 0, 0);

//Draw to Surface
draw_sprite_general(spr,img,0,0,w,h,size,size,Xs,Ys,r,c,c,c,c,1); //Center
for ( var i=1 ; i<=size ; i++ ) {
	draw_sprite_general(spr,img,0,0,w,h,size,size-i,Xs,Ys,r,c,c,c,c,1); //Up
	draw_sprite_general(spr,img,0,0,w,h,size,size+i,Xs,Ys,r,c,c,c,c,1); //Down
	draw_sprite_general(spr,img,0,0,w,h,size-i,size,Xs,Ys,r,c,c,c,c,1); //Left
	draw_sprite_general(spr,img,0,0,w,h,size+i,size,Xs,Ys,r,c,c,c,c,1); //Right
	};
for ( var i=1 ; i<size ; i++ ) {
	draw_sprite_general(spr,img,0,0,w,h,size-i,size-i,Xs,Ys,r,c,c,c,c,1); //LeftUp
	draw_sprite_general(spr,img,0,0,w,h,size-i,size+i,Xs,Ys,r,c,c,c,c,1); //LeftDown
	draw_sprite_general(spr,img,0,0,w,h,size+i,size-i,Xs,Ys,r,c,c,c,c,1); //RightUp
	draw_sprite_general(spr,img,0,0,w,h,size+i,size+i,Xs,Ys,r,c,c,c,c,1); //RightDown
	};

//Turn of Fog and Reset Target
gpu_set_fog(false, c_white, 0, 0);
surface_reset_target();
//Draw Surface
draw_surface_ext(GlowSurface,X-size,Y-size,1,1,0,colour,alpha);
if ( surface_exists(GlowSurface) ) { surface_free(GlowSurface) };