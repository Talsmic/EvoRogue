/// @desc party_updatetostorage(player,party_member);
/// @arg player
/// @arg party_member
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var party_member = argument1;
var stored_creature = player.Party_StoredID[party_member];

//Fail to update if no stored_creature ID
if ( stored_creature == 0 ) { return false };
//Fail to update if no creature in stored_creature
if ( player.Party_Status[stored_creature] == eCreatureState.nonexistant ) { return false };

//Update Party Info
if ( player.Stored_Status[party_member] == eCreatureState.nonexistant ) { player.Stored_Status[party_member] = eCreatureState.existant };
player.Stored_Species[stored_creature] =				player.Party_Species[party_member];
player.Stored_Name[stored_creature] =					player.Party_Name[party_member];
player.Stored_Level[stored_creature] =					player.Party_Level[party_member];
player.Stored_Exp[stored_creature] =					player.Party_Exp[party_member];
player.Stored_Nature[stored_creature] =				player.Party_Nature[party_member];
party_updateskillstring(player,party_member);
player.Stored_SkillString[stored_creature] =			player.Party_SkillString[party_member]; 
party_updatetraitstring(player,party_member);
player.Stored_TraitString[stored_creature] =			player.Party_TraitString[party_member]; 
