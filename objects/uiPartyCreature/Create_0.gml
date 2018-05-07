/// @desc UI Variables
event_inherited();

Player = global.LocalPlayer;
Party_Member = 1;
Mode = "Status";

//Legacy
mode = 1;
skillset = [1,2,3]
//----

Databox_Attributes = [0,0,0,0,0,0];
Databox_Shadow = 0;
Databox_Sprite = 0;
Databox_Name = " ";
Databox_SpeciesName = 0;

ui_databox_create(1);
	Databox_Type[1] = "PartyCreature:Attributes"
	Databox_X[1] = GUI_X+32;
	Databox_Y[1] = GUI_Y+148;
	Databox_Attributes = [0,0,0,0,0,0];
	Databox_Shadow = 0;
	Databox_Sprite = 0;
	Databox_Name = " ";
	Databox_SpeciesName = 0;
	
ui_databox_create(2);
	Databox_Type[2] = "PartyCreature:Status"
	Databox_X[2] = GUI_X+130;
	Databox_Y[2] = GUI_Y+25;

ui_tabset_create(1,3);
	Tabset_X[1] = 4;
	Tabset_Y[1] = 0;
	Tabset_List[1,1] = "Status";
	Tabset_List[1,2] = "Skills";
	Tabset_List[1,3] = "Passives";
	Tabset_AttachToSide[1] = DOWN;
	Tabset_TabWidth[1] = 70;