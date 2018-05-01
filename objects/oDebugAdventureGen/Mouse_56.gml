draw_set_font(ft_EvoSmallcaps_6);

//Reset Button
if ( mouse_in_region_gui ( define_region_textbutton( Resolution_CompleteWidth-string_width("Reset [0]"),10,"Reset [0]",-1,0 ) ) ) {
	event_perform(ev_keyrelease, ord("0"))	};
//Clear Button
if ( mouse_in_region_gui ( define_region_textbutton( Resolution_CompleteWidth-string_width("Clear [9]"),20,"Clear [9]",-1,0 ) ) ) {
	event_perform(ev_keyrelease, ord("9"))	};

//Generate Grid Button
if ( mouse_in_region_gui ( define_region_textbutton( Resolution_CompleteWidth-string_width("Generate Grid [1]"),40,"Generate Grid [1]",-1,0 ) ) ) {
	event_perform(ev_keyrelease, ord("1"))	};
//Region Button
if ( mouse_in_region_gui ( define_region_textbutton( Resolution_CompleteWidth-string_width("Define Regions [2]"),50,"Define Regions [2]",-1,0 ) ) ) {
	event_perform(ev_keyrelease, ord("2"))	};
//Core Rooms Button
if ( mouse_in_region_gui ( define_region_textbutton( Resolution_CompleteWidth-string_width("Core Rooms [3]"),60,"Core Rooms [3]",-1,0 ) ) ) {
	event_perform(ev_keyrelease, ord("3"))	};
	