//Update from Parent
FocusLevel = Parent.FocusLevel;
SubMode = Parent.SubMode;
SubPlayerID = Parent.Databox_Pointer[1];
depth = Parent.depth - 1;
	
/*
//Update List
Listbox_ListIcon = 0;
Listbox_ListWords = 0;
Listbox_ListColour = 0;
switch ( Mode ) {
	case "Storage":
		with ( PlayerID ) {
			for ( var i=1 ; i<=StorageSize ; i++ ) {
				if ( Stored_Status[i] == eCreatureState.nonexistant ) { i=StorageSize };
				else {
					other.Listbox_ListIcon[i] = Stored_Species[i];
					other.Listbox_ListWords[i] = Stored_Name[i];
					other.Listbox_ListColour[i] = c_white;
					};
				};
			};
		break;
	case "Party":
		with ( PlayerID ) {
			for ( var i=1 ; i<=PartySize ; i++ ) {
				if ( Party_Status[i] == eCreatureState.nonexistant ) { i=PartySize };
				else {
					other.Listbox_ListIcon[i] = Party_Species[i];
					other.Listbox_ListWords[i] = Party_Name[i];
					other.Listbox_ListColour[i] = c_white;
					};
				};
			};
		break;
	};*/


//Manage Focus
focus_set(FocusLevel);
setdepth();
//Manage Beats
ScrollBeat = beat_scrollstep(ScrollBeat);

//Hold Key Events
window_listbox_hold();