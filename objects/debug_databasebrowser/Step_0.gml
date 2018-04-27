//Manage Focus
focus_set(FocusLevel);
//Manage Beats
ScrollBeat = beat_scrollstep(ScrollBeat);

switch ( Mode ) {
	case "Skills":
		Databox_Pointer[1] = Listbox_ListIcon[Listbox_Position];
		Databox_Type[1] = "DB_Skills";
		break;
	case "Creatures":
		Databox_Pointer[1] = Listbox_ListIcon[Listbox_Position];
		Databox_Type[1] = "DB_Creatures";
		break;
	};
	
//Hold Key Events
window_listbox_hold();