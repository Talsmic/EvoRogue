global.Player1 = instance_create_depth(0,0,0,playercontainer);
global.DefaultOpponent = instance_create_depth(0,0,0,playercontainer);

var_initialize();

window_set_colour(c_purple);
FocusLevel = 10;
FocusPrevious = 10;
depth = -1;

//Options
Options_Fullscreen = false;
Options_ResolutionSnap = false; //Should the game snap resolution every frame?

ResolutionSnapNextFrame = true; //Should the resolution snap at the next frame?
ResolutionSnap_Magnification = 3;
ResolutionSnap_Center = false;

//GUI Debug Tools
Draw = false;
Draw_FocusLevel = true;
Draw_FrameRate = true;
Draw_Beat = true;

load_settings();

Beat = beat_create(5,0.1);