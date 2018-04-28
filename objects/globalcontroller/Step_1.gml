/// @desc Reset Focus and Resolution

//Update Mouse GUI Position
global.gui_mouse_x = floor(window_mouse_get_x()/window_get_scaling()) + Resolution_GUIxOffset;
global.gui_mouse_y = floor(window_mouse_get_y()/window_get_scaling()) + Resolution_GUIyOffset;

//Reset Focus
focus_clear();

//Correct Resolution
if ( Options_ResolutionSnap ) { ResolutionSnapNextFrame = true };
adapt_resolution();

//Global Beats
Beat = beat_step(Beat);