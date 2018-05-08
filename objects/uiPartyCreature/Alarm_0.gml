/// @desc Updates (Every Update Window)
alarm[0] = global.UpdateWindow;
setdepth("UI");

//Update Data
Databox_Attributes = party_update_attributes(Player,Party_Member);
Databox_Shadow = dbpull_creature_shadow(Player.Party_Species[Party_Member]);
Databox_Sprite = dbpull_creature_sprite(Player.Party_Species[Party_Member]);
Databox_Element = dbpull_creature_element(Player.Party_Species[Party_Member]);
Databox_EColour = dbpull_creature_ecolour(Player.Party_Species[Party_Member]);
Databox_Name = Player.Party_Name[Party_Member];
Databox_SpeciesName = dbpull_creature_name(Player.Party_Species[Party_Member]);
Databox_Learnset = dbpull_creature_skillset(Player.Party_Species[Party_Member]);
Listbox_ListIcon = 0;
Listbox_ListColour = 0;
for ( var i=1 ; i<=array_height_2d(Databox_Learnset)-1 ; i++ ) {
	Listbox_ListIcon[i] = Databox_Learnset[i,0];
	Listbox_ListColour[i] = db_record_get("db_Skills",Databox_Learnset[i,0],"element");
	};
//Adjust Position
GUI_X = 40;
GUI_Y = 0;
Databox_X[1] = GUI_X+32;
Databox_Y[1] = GUI_Y+148;
Databox_X[2] = GUI_X+148;
Databox_Y[2] = GUI_Y+67;
Tabset_X[1] = GUI_X+153;
Tabset_Y[1] = GUI_Y+67;
Listbox_X = GUI_X+148;
Listbox_Y = GUI_Y+109;	