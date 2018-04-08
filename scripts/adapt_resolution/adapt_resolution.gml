///adapt_resolution();
var minimum_width = 480;
var minimum_height = 270;
var ideal_width = 480;
var ideal_height = 270;
var breakpoints_width = [0,ideal_width,ideal_width*2,ideal_width*3,ideal_width*4,ideal_width*5];
var breakpoints_height = [0,ideal_height,ideal_height*2,ideal_height*3,ideal_height*4,ideal_height*5];

//Fullscreen
window_set_fullscreen(option_fullscreen);

//Resolution Snap
if ( resolutionsnap == true ) {
	window_set_size( resolutionsnap_magnification*ideal_width, resolutionsnap_magnification*ideal_height );
	resolutionsnap = false;
	};

//Detect Real Magnification Level
var real_magnification = 1;
for ( i=1 ; i<5 ; i++ ) {
	if ( window_get_width() >= breakpoints_width[i] and window_get_height() >= breakpoints_height[i] ) {
		real_magnification = i;
		};
	};

//Enforce Minimums
if ( window_get_width() < minimum_width ) { window_set_size( minimum_width, window_get_height() )  };
if ( window_get_height() < minimum_height ) { window_set_size( window_get_width(), minimum_height )  };
window_set_min_width(minimum_width);
window_set_min_height(minimum_height);

//Adapt Cursor
switch ( real_magnification ) {
	case 1: default:	cursor_sprite = spr_cursor;	break;
	case 2:				cursor_sprite = spr_cursor_x2;	break;
	case 3:				cursor_sprite = spr_cursor_x3;	break;
	case 4:				cursor_sprite = spr_cursor_x4;	break;
	};

//Adapt GUI Layer
var a = application_get_position();
display_set_gui_maximise(real_magnification,real_magnification,a[0],a[1]);