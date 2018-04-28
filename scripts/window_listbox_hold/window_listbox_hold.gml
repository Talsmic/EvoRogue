///window_listbox_hold()
/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/

var KeyLeft = keyboard_check(vk_left);
var KeyRight = keyboard_check(vk_right);
var KeyUp = keyboard_check(vk_up);
var KeyDown = keyboard_check(vk_down);
var KeyPgUp = keyboard_check(vk_pageup);
var KeyPgDown = keyboard_check(vk_pagedown);
var MouseLeft = mouse_check_button(mb_left);

switch ( Mode ) {
	case "Skills":
		if ( !ScrollBeat[0] ) { break };
		//Move Focus Position
		if ( KeyLeft ) {	window_listbox_command("MoveFocusLeft")	};
		if ( KeyRight ) {	window_listbox_command("MoveFocusRight")	};
		if ( KeyUp ) {		window_listbox_command("MoveFocusUp")	};
		if ( KeyDown ) {	window_listbox_command("MoveFocusDown")	};
		//Scroll Window		
		if ( KeyPgUp ) { window_listbox_command("ScrollUp1") };
		if ( KeyPgDown ) { window_listbox_command("ScrollDown1") };
		break;
	};

switch ( Listbox_Mode ) {
	case "Icons":
		if ( !ScrollBeat[0] ) { break };
		//Scroll Bars		
		if ( MouseLeft and mouse_in_region_gui( define_region( Listbox_X-1,Listbox_Y-2,Listbox_Row_Length*30+6,6 ) ) ) {
			window_listbox_command("ScrollUp1")	};
		if ( MouseLeft and mouse_in_region_gui( define_region( Listbox_X-1,Listbox_Y+Listbox_Column_Length*31+4,Listbox_Row_Length*30+6,6 ) ) ) {
			window_listbox_command("ScrollDown1")	};
		break;
	case "Words":
		if ( !ScrollBeat[0] ) { break };
		//Scroll Bars		
		if ( MouseLeft and mouse_in_region_gui( define_region( Listbox_X-1,Listbox_Y-2,Listbox_Row_Length*Listbox_WordWidth+6,6 ) ) ) {
			window_listbox_command("ScrollUp1")	};
		if ( MouseLeft and mouse_in_region_gui( define_region( Listbox_X-1,Listbox_Y+Listbox_Column_Length*10+4,Listbox_Row_Length*Listbox_WordWidth+6,6 ) ) ) {
			window_listbox_command("ScrollDown1")	};
		break;
	};