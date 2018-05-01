/// @desc party_updatetostorage(player,party_member);
/// @arg player
/// @arg party_member
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var party_member = argument1;
var slot = player.Party_StoredID[party_member];

//Fail to update if no slot ID
if ( slot == 0 ) { return false };
//Fail to update if no creature in slot
if ( player.Party_Status[slot] == eCreatureState.nonexistant ) { return false };

//Update Party Info
if ( player.Stored_Status[party_member] == eCreatureState.nonexistant ) { player.Stored_Status[party_member] = eCreatureState.existant };
player.Stored_Species[slot] =				player.Party_Species[party_member];
player.Stored_Name[slot] =					player.Party_Name[party_member];
player.Stored_Level[slot] =					player.Party_Level[party_member];
player.Stored_Exp[slot] =					player.Party_Exp[party_member];
player.Stored_Nature[slot] =				player.Party_Nature[party_member];
party_updateskillstring(player,party_member);
player.Stored_SkillString[slot] =			player.Party_SkillString[party_member]; 
party_updatetraitstring(player,party_member);
player.Stored_TraitString[slot] =			player.Party_TraitString[party_member]; 
