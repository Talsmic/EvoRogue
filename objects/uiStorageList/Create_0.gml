/// @desc UI Variables / Create Listbox
alarm[0] = 1; //Turn On Periodic Updates

FocusLevel = 8;
GUI_X = 0;
GUI_Y = 0;

Mode = "Storage"
PlayerID = global.Player1
DrawExtraCommands = false;

ui_listbox_create();
	ui_listbox_command("ParentMode:PlayerStorage");
	Listbox_X = GUI_X;
	Listbox_Y = GUI_Y;	
	Listbox_ShowID = true;