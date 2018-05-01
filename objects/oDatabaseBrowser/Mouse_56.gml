window_listbox_leftclick();

//Close
if ( mouse_in_region_gui( define_region( oGlobalController.Resolution_CompleteWidth-24,0,24,24 ) ) ) {
	instance_destroy();
	};