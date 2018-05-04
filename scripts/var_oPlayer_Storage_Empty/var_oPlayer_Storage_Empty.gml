///var_oPlayer_Storage_Empty(stored_creature,player);
/// @arg stored_creature
/// @arg player
var stored_creature = party_firstemptyslot(id);
var player = id;
var level = 0;
switch ( argument_count ) {
	case 2:		player = argument[1];
	case 1:		stored_creature = argument[0];
	};

//IDs
player.Stored_Status[stored_creature] = eCreatureState.nonexistant;
//No need to store a party reference, use inparty(player,stored_creature);

//Core Information
player.Stored_Species[stored_creature] = 0;
player.Stored_Name[stored_creature] = "nil";
player.Stored_Form[stored_creature] = 0;					//Currently unused, leave at 0
player.Stored_Quality[stored_creature] = 0;				//MUST BE 0 FOR PLAYER CREATURES (Used for changing NPC statblocks)
player.Stored_Nature[stored_creature] = 0;					//[0 to 5]

player.Stored_Level[stored_creature] = level;
player.Stored_Exp[stored_creature] = expforlevel(level);

//Skills and Traits
player.Stored_SkillString[stored_creature] = 0;			//[SkillString] (eg "0|1|4|67")
player.Stored_TraitString[stored_creature] = 0;			//[SkillString] (eg "0|1|4|67")
//Skills and traits don't need to be stored indivually for stored creatures, 
//the strings are all thats needed to save space