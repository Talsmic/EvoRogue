/// @desc Reset Focus, Global Beats, MouseGUI

//Update Mouse GUI Position
global.gui_mouse_x = floor( window_mouse_get_x() / Resolution_Magnification ) + Resolution_GUIxOffset;
global.gui_mouse_y = floor( window_mouse_get_y() / Resolution_Magnification ) + Resolution_GUIyOffset;

//Reset Focus
focus_clear();

//Global Beats
Beat = beat_step(Beat);