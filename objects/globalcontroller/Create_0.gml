global.Player1 = instance_create_depth(0,0,0,oPlayer);
global.DefaultOpponent = instance_create_depth(0,0,0,oPlayer);
global.gui_mouse_x = 0;
global.gui_mouse_y = 0;

var_initialize();

window_set_colour(c_black);
FocusLevel = 10;
FocusPrevious = 10;
depth = -1;

//Options

//Resolution
resolution_defaults();

//GUI Debug Tools
DebugMode = true//debug_mode;

Draw = false;
Draw_FocusLevel = true;
Draw_FrameRate = true;
Draw_Beat = true;
Draw_Mouse = true;
Draw_Scaling = true;

load_settings();

//Apply Resolution Settings
ResolutionSnap_Magnification = Options_Magnification;
adapt_resolution();
display_reset(0, Options_Vsync);
window_set_min_width( Resolution_MinWidth );
window_set_min_height( Resolution_MinHeight );
alarm[1] = 10;
application_surface_draw_enable(false);

Beat = beat_create(5,0.1);