///adapt_resolution();
var breakpoints_width = [0,Resolution_IdealWidth,Resolution_IdealWidth*2,Resolution_IdealWidth*3,Resolution_IdealWidth*4,Resolution_IdealWidth*5];
var breakpoints_height = [0,Resolution_IdealHeight,Resolution_IdealHeight*2,Resolution_IdealHeight*3,Resolution_IdealHeight*4,Resolution_IdealHeight*5];

//Fullscreen
if ( window_get_fullscreen() != Options_Fullscreen ) {
	ResolutionSnapNextFrame = true;
	window_set_fullscreen(Options_Fullscreen);
	};

//Resolution Snap
if ( ResolutionSnapNextFrame == true ) {
	window_set_size( ResolutionSnap_Magnification*Resolution_IdealWidth, ResolutionSnap_Magnification*Resolution_IdealHeight );
	ResolutionSnapNextFrame = false;
	};

//Detect Real Magnification Level
var real_magnification = 1;
for ( var i=1 ; i<5 ; i++ ) {
	if ( window_get_width() >= breakpoints_width[i] and window_get_height() >= breakpoints_height[i] ) {
		real_magnification = i;
		};
	};

//Enforce Minimums
if ( window_get_width() < Resolution_MinWidth ) { window_set_size( Resolution_MinWidth, window_get_height() )  };
if ( window_get_height() < Resolution_MinHeight ) { window_set_size( window_get_width(), Resolution_MinHeight )  };
window_set_min_width(Resolution_MinWidth);
window_set_min_height(Resolution_MinHeight);

//Adapt Cursor
switch ( real_magnification ) {
	case 1: default:	cursor_sprite = spr_cursor;	break;
	case 2:				cursor_sprite = spr_cursor_x2;	break;
	case 3:				cursor_sprite = spr_cursor_x3;	break;
	case 4:				cursor_sprite = spr_cursor_x4;	break;
	};

//Adapt GUI Layer
if ( Resolution_GUIsnap ) {
	var a = application_get_position();
	Resolution_GUIxOffset = a[0];
	Resolution_GUIyOffset = a[1];
	};
display_set_gui_maximise(real_magnification,real_magnification,Resolution_GUIxOffset,Resolution_GUIyOffset);