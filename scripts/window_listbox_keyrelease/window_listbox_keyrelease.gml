///window_listbox_keyrelease();
/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/
		
var KeyLeft = keyboard_check_released(vk_left);
var KeyRight = keyboard_check_released(vk_right);
var KeyUp = keyboard_check_released(vk_up);
var KeyDown = keyboard_check_released(vk_down);
var KeyPgUp = keyboard_check_released(vk_pageup);
var KeyPgDown = keyboard_check_released(vk_pagedown);
var KeyEnd = keyboard_check_released(vk_end);
var KeyHome = keyboard_check_released(vk_home);
var KeyTab = keyboard_check_released(vk_tab);
var KeyIns = keyboard_check_released(vk_insert);

//Debug CommandLine
if ( KeyIns ) {
	var insertcommand = get_string("Listbox Commandline:","");
	window_listbox_command( insertcommand );
	};

//Tab
if ( KeyTab ) {		
	if ( keyboard_check(vk_shift) ) {
		Listbox_ShiftTabArray[0] += 1;
		if ( Listbox_ShiftTabArray[0] >= array_length_1d(Listbox_ShiftTabArray) ) { Listbox_ShiftTabArray[0] = 1 };
		var tabmode = Listbox_ShiftTabArray[Listbox_ShiftTabArray[0]];
		};
	else {
		Listbox_TabArray[0] += 1;
		if ( Listbox_TabArray[0] >= array_length_1d(Listbox_TabArray) ) { Listbox_TabArray[0] = 1 };
		var tabmode = Listbox_TabArray[Listbox_TabArray[0]];
		};
	window_listbox_command( tabmode );
	};
	
//Move Focus Position
if ( KeyLeft ) {	window_listbox_command("MoveFocusLeft")	};
if ( KeyRight ) {	window_listbox_command("MoveFocusRight")	};
if ( KeyUp ) {		window_listbox_command("MoveFocusUp")	};
if ( KeyDown ) {	window_listbox_command("MoveFocusDown")	};

//Scroll Window		
if ( KeyPgUp ) { window_listbox_command("ScrollUp") };
if ( KeyPgDown ) { window_listbox_command("ScrollDown") };
if ( KeyEnd ) { window_listbox_command("ScrollBottom") };
if ( KeyHome ) { window_listbox_command("ScrollTop") };