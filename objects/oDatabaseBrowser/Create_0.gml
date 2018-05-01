FocusLevel = 5;

Mode = "Creatures"
X = 20;
Y = 20;

ScrollBeat = beat_create(15,1);

window_listbox_create();
	window_listbox_command("ParentMode:Skills");
	window_listbox_command("Mode:Icons");
	
	Listbox_ShowID = true;	
	Listbox_X = X;
	Listbox_Y = Y+25;
	
	Listbox_WordWidth = 120;
	Listbox_TabEnabled = true;
	Listbox_TabArray[1] = "Mode:Icons";
	Listbox_TabArray[2] = "Mode:Words";
	Listbox_ShiftTabEnabled = true;
	Listbox_ShiftTabArray[1] = "ParentMode:Skills";
	Listbox_ShiftTabArray[2] = "ParentMode:Creatures";

window_databox_create(1);
	Databox_Type[1] = "DB_Skill"
	Databox_X[1] = X+130;
	Databox_Y[1] = Y+25;
	
window_databox_create(2);
	Databox_Type[2] = "DB_Creature1"
	Databox_X[2] = X+130;
	Databox_Y[2] = Y+64;
	
window_tabset_create(1,2);
	Tabset_X[1] = 4;
	Tabset_Y[1] = 0;
	Tabset_List[1,1] = "Skills";
	Tabset_List[1,2] = "Creatures";
	Tabset_AttachToSide[1] = DOWN;
	Tabset_TabWidth[1] = 70;
	Tabset_TabHeight[1] = 11;
	
window_tabset_create(2,2);
	Tabset_X[2] = X;
	Tabset_Y[2] = Y+30;
	Tabset_List[2,1] = "Icons";
	Tabset_List[2,2] = "Words";
	Tabset_AttachToSide[2] = LEFT;
	Tabset_ListDirection[2] = DOWN;
	Tabset_Rotation[2] = LEFT;
	Tabset_TabWidth[2] = 50;
	Tabset_FontHeight[2] = 25;
	
window_tabset_create(3,3);
	Tabset_X[3] = X+135;
	Tabset_Y[3] = Y+50;
	Tabset_List[3,1] = "Stats";
	Tabset_List[3,2] = "Passive";
	Tabset_List[3,3] = "Skills";
	Tabset_TabWidth[3] = 50;
	Tabset_AttachToSide[3] = DOWN;
	
