//Manage Focus
focus_set(FocusLevel);
setdepth("Debug");

//Manage Beats
ScrollBeat = beat_scrollstep(ScrollBeat);

switch ( Mode ) {
	case "Skills":
		Databox_Pointer[1] = Listbox_Position;
		Databox_Type[1] = "DB_Skills";
		Tabset_Pointer[1] = 1;
		if ( Listbox_Mode == "Icons" ) { Tabset_Pointer[2] = 1 };
			else { Tabset_Pointer[2] = 2 };
		break;
	case "Creatures":
		Databox_Pointer[1] = Listbox_Position;
		Databox_Pointer[2] = Listbox_Position;
		Databox_Type[1] = "DB_Creatures";
		Databox_Type[2] = "DB_Creatures"+string(Tabset_Pointer[3]);
		Tabset_Pointer[1] = 2;
		if ( Listbox_Mode == "Icons" ) { Tabset_Pointer[2] = 1 };
			else { Tabset_Pointer[2] = 2 };
		break;
	};
	
//Hold Key Events
ui_listbox_hold();