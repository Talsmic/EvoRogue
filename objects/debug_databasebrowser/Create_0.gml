FocusLevel = 5;

Mode = "Skills"
X = 20;
Y = 20;

Listbox_Mode = "Icons";
Listbox_IconType = "Skill";
Listbox_ShowID = true;

Listbox_ListIcon = db_pull_columnasarray("db_Skills","id");
Listbox_ListWords = db_pull_columnasarray("db_Skills","name");
Listbox_ListColour = db_pull_columnasarray("db_Skills","element");

Listbox_X = X;
Listbox_Y = Y+25;

Listbox_Position = 1;
Listbox_Row_Starting = 1;
Listbox_Row_Count = 1;
Listbox_Row_Length = 4;
Listbox_Column_Length = 5;
Listbox_WordWidth = 120;
