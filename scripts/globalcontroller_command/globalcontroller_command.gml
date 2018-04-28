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
		
	};