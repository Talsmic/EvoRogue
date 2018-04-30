/// @desc draw_game_surface();

//Pull Variables
var surface_width = Resolution_PlayableWidth;
var surface_height = Resolution_PlayableHeight;
var scale = Resolution_Magnification;
var window_width = window_get_width();
var window_height = window_get_height();
var pad_w = floor( ( window_width - surface_width * scale ) * 0.5 );
var pad_h = floor( ( window_height - surface_height * scale ) * 0.5 );

//Draw BG
var bg = surface_create( 2, 2 );

surface_set_target( bg );
	draw_colouredplane(0,0,2,2,c_darkgray,1);
surface_reset_target();

draw_surface_stretched( bg, 0, 0, window_width, window_height );

surface_free( bg );

//Draw Primary Surface

draw_surface_general( application_surface, 0, 0, surface_width, surface_height, pad_w, pad_h, scale, scale, 0, c_white, c_white, c_white, c_white, 1);