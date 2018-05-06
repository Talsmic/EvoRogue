//Update from Parent
FocusLevel = Parent.FocusLevel;
SubMode = Parent.SubMode;
SubPlayerID = Parent.Databox_Pointer[1];
depth = Parent.depth - 1;
	
//Manage Focus
focus_set(FocusLevel);
setdepth();

//Manage Beats
ScrollBeat = beat_scrollstep(ScrollBeat);

//Hold Key Events
ui_listbox_hold();