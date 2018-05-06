FocusLevel = 5.2; 

Mode = "Storage"
PlayerID = global.Player1
DrawExtraCommands = false;

X = 161;
Y = 94;

ui_listbox_create();
	ui_listbox_command("ParentMode:PlayerStorage");
	Listbox_X = X;
	Listbox_Y = Y;	
	Listbox_ShowID = true;
	
	
alarm[0] = 30; //update Lists