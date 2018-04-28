FocusLevel = 5;

Mode = "Creatures"
X = 20;
Y = 20;

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
	
ScrollBeat = beat_create(15,1);