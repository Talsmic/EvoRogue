if ( focus_check(FocusLevel) == false ) { return };

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
			event_user(0);
			};
		if ( KeyRight ) {
			Listbox_Position += 1;
			event_user(0);
			};
		if ( KeyUp ) {
			Listbox_Position -= Listbox_Row_Length;
			event_user(0);
			};
		if ( KeyDown ) {
			Listbox_Position += Listbox_Row_Length;
			event_user(0);
			};
		//Scroll Window		
		if ( Listbox_Row_Length > 1 ) {
			if ( KeyPgUp ) {	Listbox_Row_Starting -= 1	};
			if ( KeyPgDown ) {	Listbox_Row_Starting += 1	};
			}
		else {
			if ( KeyPgUp ) {	Listbox_Row_Starting -= 5	};
			if ( KeyPgDown ) {	Listbox_Row_Starting += 5	};
			}
		//Boundary Snap
		if ( Listbox_Position < 1 ) { Listbox_Position = Listbox_List_Length };
		if ( Listbox_Position > Listbox_List_Length ) { Listbox_Position = 1 };		
		break;
	};