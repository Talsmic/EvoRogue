global.Player1 = instance_create_depth(0,0,0,playercontainer);
global.DefaultOpponent = instance_create_depth(0,0,0,playercontainer);

var_initialize();

window_set_colour(c_purple);
FocusLevel = 10;
FocusPrevious = 10;

//Options
option_fullscreen = false;
option_resolutionsnap = false; //Should the game snap resolution every frame?

resolutionsnap = true; //Should the resolution snap at the next frame?
resolutionsnap_magnification = 2;
resolutionsnap_center = false;

load_settings();