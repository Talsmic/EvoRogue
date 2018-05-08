/// @desc [Commands]

//[F8] Toggle Fullscreen
if ( keyboard_check_released(vk_f8) ) {
	Options_Fullscreen = toggle(Options_Fullscreen);
	ResolutionSnapNextFrame = true;	};
//[F9] Toggle Debug Mode
if ( keyboard_check_released(vk_f9) ) {
	DebugMode = toggle(DebugMode);	};
	
/*Debugmode Required*/ if ( !DebugMode ) { return };//==================

//[F5] Database Manager
if ( keyboard_check_released(vk_f5) ) {
	show_debug_message("Database Manager Opened");
	globalcontroller_command( "opendatabase" )	};
//[F6] Player Container Manager
if ( keyboard_check_released(vk_f6) ) {
	show_debug_message("Player Manager Opened");
	globalcontroller_command( "openplayermanager" )	};
	
//[F10] Toggle Language
if ( keyboard_check_released(vk_f10) ) {
	switch ( Options_Language ) {
		case "English":
			change_language("Angry English");
			break;
		default:
			change_language("English");
			break;
		};
	};
//[F11] Toggle Debug Drawing
if ( keyboard_check_released(vk_f11) ) {
	Draw = toggle(Draw);	};
//[F12] Command Prompt
if ( keyboard_check_released(vk_f12) ) {
	var command = get_string("Global Controller Commandline:"," ");
	globalcontroller_command( command );	};