///window_listbox_command(command);
/// @arg command
var command = argument0;
//Sanitise command
command = string_lettersdigits( command );
command = string_lower( command );

switch ( command ) {
		
	case "movefocusup":		Listbox_Position -= Listbox_Row_Length;		window_listbox_command("ScrollSnap");	break;
	case "movefocusdown":	Listbox_Position += Listbox_Row_Length;		window_listbox_command("ScrollSnap");	break;
	case "movefocusleft":	Listbox_Position -= 1;						window_listbox_command("ScrollSnap");	break;
	case "movefocusright":	Listbox_Position += 1;						window_listbox_command("ScrollSnap");	break;
		
	case "scrollup":		Listbox_Row_Starting -= Listbox_ScrollSize; window_listbox_command("ScrollLoop");	break;
	case "scrolldown":		Listbox_Row_Starting += Listbox_ScrollSize; window_listbox_command("ScrollLoop");	break;
	case "scrollup1":		Listbox_Row_Starting -= 1; 					window_listbox_command("ScrollLoop");	break;
	case "scrolldown1":		Listbox_Row_Starting += 1; 					window_listbox_command("ScrollLoop");	break;
	case "scrolltop":		Listbox_Row_Starting = 1;															break;
	case "scrollbottom":	Listbox_Row_Starting = ceil( Listbox_List_Length / Listbox_Row_Length ) + 1 - Listbox_Column_Length	break;
			
	case "togglescrollloop":		Listbox_ScrollLoop = toggle( Listbox_ScrollLoop );		break;
	case "toggleids":				Listbox_ShowID = toggle( Listbox_ShowID );				break;
	
	case "scrollloop":
		var rowcount = ceil( Listbox_List_Length / Listbox_Row_Length ) + 1;
		if ( Listbox_ScrollLoop ) {
			if ( Listbox_Row_Starting < 1 ) { Listbox_Row_Starting = rowcount - Listbox_Column_Length };
			if ( Listbox_Row_Starting > rowcount - Listbox_Column_Length ) { Listbox_Row_Starting = 1 };		
			};
		else {
			if ( Listbox_Row_Starting > rowcount - Listbox_Column_Length ) { Listbox_Row_Starting = rowcount - Listbox_Column_Length };		
			if ( Listbox_Row_Starting < 1 ) { Listbox_Row_Starting = 1 };
			};
		break;
		
	case "scrollsnap":
		if ( Listbox_ScrollLoop ) {
			if ( Listbox_Position < 1 ) { Listbox_Position = Listbox_List_Length };
			if ( Listbox_Position > Listbox_List_Length ) { Listbox_Position = 1 };		
			};
		else {
			if ( Listbox_Position > Listbox_List_Length ) { Listbox_Position = Listbox_List_Length };		
			if ( Listbox_Position < 1 ) { Listbox_Position = 1 };
			};
		//Find Visible Range
		var range_start = Listbox_Row_Starting * Listbox_Row_Length - Listbox_Row_Length + 1;
		var range_end = range_start + Listbox_Row_Length * Listbox_Column_Length - 1;
		//Snap view to Visible Range
		if ( Listbox_Position < range_start )	{ Listbox_Row_Starting = ceil( Listbox_Position / Listbox_Row_Length ) };
		if ( Listbox_Position > range_end )		{ Listbox_Row_Starting += ceil( ( Listbox_Position - range_end ) / Listbox_Row_Length ) };
		break;
	
	case "modeicons":
		Listbox_Mode = "Icons" 
		Listbox_Row_Length = 4;
		Listbox_Column_Length = 5;
		Listbox_Row_Starting = ceil( Listbox_Position / Listbox_Row_Length );
		Listbox_ScrollSize = 1;
		window_listbox_command("scrollloop");
		ScrollBeat = beat_create(15,1);
		break;
		
	case "modewords":
		Listbox_Mode = "Words" 
		Listbox_Row_Length = 1;
		Listbox_Column_Length = 16;
		Listbox_Row_Starting = Listbox_Position;
		Listbox_ScrollSize = 5;
		window_listbox_command("scrollloop");
		ScrollBeat = beat_create(5,1);
		break;
		
	case "parentmodeskills":
		Mode = "Skills"
		Listbox_IconType = "DB_Skill";
		Listbox_Position = 1;
		Listbox_ListIcon = db_pull_columnasarray("db_Skills","icon");
		Listbox_ListWords = db_pull_columnasarray("db_Skills","name");
		Listbox_ListColour = db_pull_columnasarray("db_Skills","element");
		window_listbox_command("Mode:Icons");
		break;
	
	case "parentmodecreatures":
		Mode = "Creatures"
		Listbox_IconType = "DB_Creature";
		Listbox_Position = 1;
		Listbox_ListIcon = db_pull_columnasarray("db_Creatures","icon");
		Listbox_ListWords = db_pull_columnasarray("db_Creatures","name");
		Listbox_ListColour = db_pull_columnasarray("db_Creatures","element");
		window_listbox_command("Mode:Words");
		break;
	};