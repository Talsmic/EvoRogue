//Manage Focus
focus_set();

//Manage Beats
ScrollBeat = beat_scrollstep(ScrollBeat);

Databox_Pointer[1] = Listbox_ListIcon[Listbox_Position];
switch ( SubMode ) {
	case "Storage":		Databox_Type[2] = "StorageCreature"		break;
	case "Party":		Databox_Type[2] = "PartyCreature"		break;
	};

//Hold Key Events
ui_listbox_hold();