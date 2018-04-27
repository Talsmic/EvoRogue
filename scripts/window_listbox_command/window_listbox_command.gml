///window_listbox_command(command);
/// @arg command

switch ( argument0 ) {
		
	case "MoveFocusUp":		Listbox_Position -= Listbox_Row_Length;		window_listbox_command("ScrollSnap");	break;
	case "MoveFocusDown":	Listbox_Position += Listbox_Row_Length;		window_listbox_command("ScrollSnap");	break;
	case "MoveFocusLeft":	Listbox_Position -= 1;						window_listbox_command("ScrollSnap");	break;
	case "MoveFocusRight":	Listbox_Position += 1;						window_listbox_command("ScrollSnap");	break;
		
	case "ScrollUp":		Listbox_Row_Starting -= Listbox_ScrollSize; window_listbox_command("ScrollLoop");	break;
	case "ScrollDown":		Listbox_Row_Starting += Listbox_ScrollSize; window_listbox_command("ScrollLoop");	break;
	case "ScrollUp1":		Listbox_Row_Starting -= 1; 					window_listbox_command("ScrollLoop");	break;
	case "ScrollDown1":		Listbox_Row_Starting += 1; 					window_listbox_command("ScrollLoop");	break;
	case "ScrollTop":		Listbox_Row_Starting = 1;															break;
	case "ScrollBottom":	Listbox_Row_Starting = ceil( Listbox_List_Length / Listbox_Row_Length ) + 1 - Listbox_Column_Length	break;
			
	case "ToggleScrollLoop":		Listbox_ScrollLoop = toggle( Listbox_ScrollLoop );		break;
	case "ToggleIDs":				Listbox_ShowID = toggle( Listbox_ShowID );				break;
	
	case "ScrollLoop":
		var rowcount = ceil( Listbox_List_Length / Listbox_Row_Length ) + 1;
		if ( Listbox_ScrollLoop ) {
			if ( Listbox_Row_Starting < 1 ) { Listbox_Row_Starting = rowcount - Listbox_Column_Length };
			if ( Listbox_Row_Starting > rowcount - Listbox_Column_Length ) { Listbox_Row_Starting = 1 };		
			};
		else {
			if ( Listbox_Row_Starting < 1 ) { Listbox_Row_Starting = 1 };
			if ( Listbox_Row_Starting > rowcount - Listbox_Column_Length ) { Listbox_Row_Starting = rowcount - Listbox_Column_Length };		
			};
		break;
		
	case "ScrollSnap":
		if ( Listbox_ScrollLoop ) {
			if ( Listbox_Position < 1 ) { Listbox_Position = Listbox_List_Length };
			if ( Listbox_Position > Listbox_List_Length ) { Listbox_Position = 1 };		
			};
		else {
			if ( Listbox_Position < 1 ) { Listbox_Position = 1 };
			if ( Listbox_Position > Listbox_List_Length ) { Listbox_Position = Listbox_List_Length };		
			};
		//Find Visible Range
		var range_start = Listbox_Row_Starting * Listbox_Row_Length - Listbox_Row_Length + 1;
		var range_end = range_start + Listbox_Row_Length * Listbox_Column_Length - 1;
		//Snap view to Visible Range
		if ( Listbox_Position < range_start )	{ Listbox_Row_Starting = ceil( Listbox_Position / Listbox_Row_Length ) };
		if ( Listbox_Position > range_end )		{ Listbox_Row_Starting += ceil( ( Listbox_Position - range_end ) / Listbox_Row_Length ) };
		break;
	
	case "Mode:Icons":
		Listbox_Mode = "Icons" 
		Listbox_Row_Length = 4;
		Listbox_Column_Length = 5;
		Listbox_Row_Starting = ceil( Listbox_Position / Listbox_Row_Length );
		Listbox_ScrollSize = 1;
		ScrollBeat = beat_create(15,1);
		break;
		
	case "Mode:Words":
		Listbox_Mode = "Words" 
		Listbox_Row_Length = 1;
		Listbox_Column_Length = 16;
		Listbox_Row_Starting = Listbox_Position;
		Listbox_ScrollSize = 5;
		ScrollBeat = beat_create(5,1);
		break;
		
	case "ParentMode:Skills":
		Mode = "Skills"
		Listbox_IconType = "DB_Skill";
		Listbox_Position = 1;
		Listbox_ListIcon = db_pull_columnasarray("db_Skills","id");
		Listbox_ListWords = db_pull_columnasarray("db_Skills","name");
		Listbox_ListColour = db_pull_columnasarray("db_Skills","element");
		window_listbox_command("Mode:Icons");
		break;
	
	case "ParentMode:Creatures":
		Mode = "Creatures"
		Listbox_IconType = "DB_Creature";
		Listbox_Position = 1;
		Listbox_ListIcon = db_pull_columnasarray("db_Skills","id");
		Listbox_ListWords = db_pull_columnasarray("db_Skills","name");
		Listbox_ListColour = db_pull_columnasarray("db_Skills","element");
		window_listbox_command("Mode:Words");
		break;
	};