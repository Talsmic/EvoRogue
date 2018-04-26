FocusLevel = 5;

Mode = "Skills"
X = 20;
Y = 20;

window_listbox_create();
	Listbox_Mode = "Icons";
	Listbox_IconType = "DB_Skill";
	Listbox_ShowID = true;
	Listbox_ListIcon = db_pull_columnasarray("db_Skills","id");
	Listbox_ListWords = db_pull_columnasarray("db_Skills","name");
	Listbox_ListColour = db_pull_columnasarray("db_Skills","element");
	Listbox_X = X;
	Listbox_Y = Y+25;
	Listbox_Row_Length = 4;
	Listbox_Column_Length = 5;
	Listbox_WordWidth = 120;

window_databox_create(1);
	Databox_Type[1] = "DB_Skill"
	Databox_X[1] = X+130;
	Databox_Y[1] = Y+25;