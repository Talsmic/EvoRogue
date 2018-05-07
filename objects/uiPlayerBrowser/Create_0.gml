/// @desc UI Variables / Create Listbox
alarm[0] = 1; //Turn On Periodic Updates

FocusLevel = 5.2; 
GUI_X = 20;
GUI_Y = 20;

StorageList = instance_create_depth(0,0,0,uiStorageList);
	StorageList.Parent = id;

SubMode = "Storage"


ui_listbox_create();
	ui_listbox_command("ParentMode:Players");
	Listbox_X = GUI_X;
	Listbox_Y = GUI_Y+25;	
	Listbox_WordWidth = 120;
	
ui_databox_create(1);
	Databox_Type[1] = "PlayerContainer"
	Databox_X[1] = GUI_X+130;
	Databox_Y[1] = GUI_Y+25;
	
ui_databox_create(2);
	Databox_Type[2] = "StorageCreature"
	Databox_X[2] = GUI_X+300;
	Databox_Y[2] = GUI_Y+25;
	
ui_tabset_create(1,2);
	Tabset_X[1] = GUI_X+141;
	Tabset_Y[1] = GUI_Y+80;
	Tabset_List[1,1] = "Storage";
	Tabset_List[1,2] = "Party";
	Tabset_AttachToSide[1] = LEFT;
	Tabset_ListDirection[1] = DOWN;
	Tabset_Rotation[1] = LEFT;
	Tabset_TabWidth[1] = 70;
	Tabset_FontHeight[1] = 35;