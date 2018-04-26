///window_listbox_keyrelease();
/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/
		
var KeyLeft = keyboard_check_released(vk_left);
var KeyRight = keyboard_check_released(vk_right);
var KeyUp = keyboard_check_released(vk_up);
var KeyDown = keyboard_check_released(vk_down);
var KeyPgUp = keyboard_check_released(vk_pageup);
var KeyPgDown = keyboard_check_released(vk_pagedown);
var KeyTab = keyboard_check_released(vk_tab);

switch ( Mode ) {
	case "Skills":
		//Change List Type
		if ( KeyTab ) {
			if ( Listbox_Mode == "Icons" ) { 
				Listbox_Mode = "Words" 
				Listbox_Row_Length = 1;
				Listbox_Column_Length = 16;
				Listbox_Row_Starting = Listbox_Position;
				} 
			else { 
				Listbox_Mode = "Icons" 
				Listbox_Row_Length = 4;
				Listbox_Column_Length = 5;
				Listbox_Row_Starting = ceil( Listbox_Position / Listbox_Row_Length );
				};
			};
		//Move Focus Position
		if ( KeyLeft ) {
			Listbox_Position -= 1;
			window_listbox_scrollsnap();
			};
		if ( KeyRight ) {
			Listbox_Position += 1;
			window_listbox_scrollsnap();
			};
		if ( KeyUp ) {
			Listbox_Position -= Listbox_Row_Length;
			window_listbox_scrollsnap();
			};
		if ( KeyDown ) {
			Listbox_Position += Listbox_Row_Length;
			window_listbox_scrollsnap();
			};
		//Scroll Window		
		if ( Listbox_Row_Length > 1 ) {
			if ( KeyPgUp ) {	Listbox_Row_Starting -= 1; window_listbox_scrollloop();	};
			if ( KeyPgDown ) {	Listbox_Row_Starting += 1; window_listbox_scrollloop();	};
			}
		else {
			if ( KeyPgUp ) {	Listbox_Row_Starting -= 5; window_listbox_scrollloop();	};
			if ( KeyPgDown ) {	Listbox_Row_Starting += 5; window_listbox_scrollloop();	};
			};
		break;
	};