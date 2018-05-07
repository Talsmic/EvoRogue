/// @desc UI Variables / Create Listbox
alarm[0] = 1; //Turn On Periodic Updates

FocusLevel = 5.2;
FocusCanDown = false;
DepthOffset = -1;
GUI_X = 161;
GUI_Y = 95;

Mode = "Storage";
PlayerID = global.Player1;
SubMode = "Storage";
SubPlayerID = global.Player1;
DrawExtraCommands = false;

ui_listbox_create();
	ui_listbox_command("ParentMode:PlayerStorage");
	Listbox_X = GUI_X;
	Listbox_Y = GUI_Y;	
	Listbox_ShowID = true;