/// @desc UI Variables
event_inherited();
alarm[0] = 1; //Turn On Periodic Updates

FocusLevel = 8;
GUI_X = 40;
GUI_Y = 0;
Player = global.LocalPlayer;
Party_Member = 1;

Databox_Attributes = [0,0,0,0,0,0];
Databox_Shadow = 0;
Databox_Sprite = 0;
Databox_Name = " ";
Databox_SpeciesName = 0;
Databox_EColour = c_white;

ui_databox_create(1);
	Databox_Type[1] = "PartyCreature:Attributes"
	Databox_X[1] = GUI_X+32;
	Databox_Y[1] = GUI_Y+148;
	Databox_Attributes = [0,0,0,0,0,0];
	Databox_Shadow = 0;
	Databox_Sprite = 0;
	Databox_Name = " ";
	Databox_SpeciesName = 0;
	Databox_Element = 1;
	
ui_databox_create(2);
	Databox_Type[2] = "PartyCreature:Status"
	Databox_X[2] = GUI_X+148;
	Databox_Y[2] = GUI_Y+67;

ui_tabset_create(1,3);
	Tabset_X[1] = GUI_X+153;
	Tabset_Y[1] = GUI_Y+67;
	Tabset_List[1,1] = term("Status");
	Tabset_List[1,2] = term("Skills");
	Tabset_List[1,3] = term("Passives");
	Tabset_TabWidth[1] = 60;
	Tabset_TabSpace[1] = 2;
	Tabset_TabHeight[1] = 13;
	Tabset_FontHeight[1] = 7;
	
ui_listbox_create();
	ui_listbox_command("Mode:Icons");
	Listbox_X = GUI_X+148;
	Listbox_Y = GUI_Y+109;	
	Listbox_Row_Length = 7;
	Listbox_Column_Length = 3;
	Listbox_IconType = "DB_Skill";