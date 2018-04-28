///globalcontroller_command(command);
/// @arg command
var command = argument0;
//Sanitise command
command = string_lettersdigits( command );
command = string_lower( command );

switch ( command ) {
	
	case "draw":				Draw = toggle(Draw);	break;
	case "drawfocus":			Draw = true; Draw_FocusLevel = toggle(Draw_FocusLevel);	break;
	case "drawframerate":		Draw = true; Draw_FrameRate = toggle(Draw_FrameRate);	break;
	case "drawbeat":			Draw = true; Draw_Beat = toggle(Draw_Beat);				break;
	case "drawmouse":			Draw = true; Draw_Mouse = toggle(Draw_Mouse);			break;
	
	case "opendatabase":
		if ( !instance_exists(debug_databasebrowser) ) {
			DatabaseBrowser = instance_create_depth(0,0,5,debug_databasebrowser)	};
		break;
	case "opendatabaseskills": case "opendatabaseskill":
		if ( !instance_exists(debug_databasebrowser) ) {
			DatabaseBrowser = instance_create_depth(0,0,5,debug_databasebrowser)	};
		with ( DatabaseBrowser ) { window_listbox_command("parentmodeskills") };
		break;
	case "opendatabasecreatures": case "opendatabasecreature":
		if ( !instance_exists(debug_databasebrowser) ) {
			DatabaseBrowser = instance_create_depth(0,0,5,debug_databasebrowser)	};
		with ( DatabaseBrowser ) { window_listbox_command("parentmodecreatures") };
		break;
		
	};