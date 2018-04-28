global.Player1 = instance_create_depth(0,0,0,playercontainer);
global.DefaultOpponent = instance_create_depth(0,0,0,playercontainer);
global.gui_mouse_x = 0;
global.gui_mouse_y = 0;

var_initialize();

window_set_colour(c_purple);
FocusLevel = 10;
FocusPrevious = 10;
depth = -1;

//Options

//Resolution
resolution_defaults();

//GUI Debug Tools
Draw = false;
Draw_FocusLevel = true;
Draw_FrameRate = true;
Draw_Beat = true;
Draw_Mouse = true;

load_settings();

//Apply Resolution Settings
ResolutionSnap_Magnification = Options_Magnification;
adapt_resolution();
display_reset(0, Options_Vsync);

Beat = beat_create(5,0.1);