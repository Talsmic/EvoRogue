///party_update_tostorage(player,party_member);
/// @arg player
/// @arg party_member
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var party_member = argument1;
var stored_creature = player.Party_StoredID[party_member];

//Create new StorageID if no ID exists
if ( stored_creature == 0 ) { 
	stored_creature = storage_add(player,player.Party_Species[party_member],player.Party_Level[party_member]);
	};
//Fail to update if no creature
if ( !player.Party_Status[party_member] ) { return false };

//Update Party Info
player.Stored_Status[stored_creature] =			eCreatureState.existant;

player.Stored_Species[stored_creature] =		player.Party_Species[party_member];
player.Stored_Name[stored_creature] =			player.Party_Name[party_member];
player.Stored_Form[stored_creature] =			player.Party_Form[party_member];
player.Stored_Quality[stored_creature] =		player.Party_Quality[party_member] = 0;
player.Stored_Genome[stored_creature] =			player.Party_Genome[party_member];

player.Stored_Level[stored_creature] =			player.Party_Level[party_member];
player.Stored_Exp[stored_creature] =			player.Party_Exp[party_member];
party_updateskillstring(player,party_member);
player.Stored_SkillString[stored_creature] =	player.Party_SkillString[party_member]; 
party_updatetraitstring(player,party_member);
player.Stored_TraitString[stored_creature] =	player.Party_TraitString[party_member]; 

player.Party_StoredID[party_member] = stored_creature;