/// @desc Updates (Every Update Window)
alarm[0] = global.UpdateWindow;
setdepth("UI");

Databox_Attributes = party_update_attributes(Player,Party_Member);
Databox_Shadow = dbpull_creature_shadow(Player.Party_Species[Party_Member]);
Databox_Sprite = dbpull_creature_sprite(Player.Party_Species[Party_Member]);
Databox_Name = Player.Party_Name[Party_Member];
Databox_SpeciesName = db_record_get("db_Creatures",Player.Party_Species[Party_Member],"name");