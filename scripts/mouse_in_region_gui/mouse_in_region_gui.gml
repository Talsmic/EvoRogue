///mouse_in_region_gui(region);
/// @arg region
/*
	[Edited 26/4/2018]
	Just use for simple short if statements
*/

var region = argument0;

if ( point_in_rectangle( global.gui_mouse_x, global.gui_mouse_y, region[1], region[2], region[3], region[4] ) ) {
	return true;
	};
	
return false;