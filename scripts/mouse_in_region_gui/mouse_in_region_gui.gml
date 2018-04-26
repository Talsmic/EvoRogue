///mouse_in_region_gui(region);
/// @arg region
/*
	[Edited 26/4/2018]
	Just use for simple short if statements
*/
var region = argument0;

if ( point_in_rectangle( mouse_x*window_get_truescaling(), mouse_y*window_get_truescaling(), region[1], region[2], region[3], region[4] ) ) {
	return true;
	};
return false;