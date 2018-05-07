///party_update_fromstorage(player,party_member);
/// @arg player
/// @arg party_member
var player = argument0;
var party_member = argument1;
var stored_creature = player.Party_StoredID[party_member];

//Fail to update if no stored_creature ID
if ( stored_creature <= 0 ) { return false };
//Fail to update if no creature in stored_creature
if ( !player.Stored_Status[stored_creature] ) { player.Party_StoredID[party_member] = 0; return false };

//Update Party Info
if ( !player.Party_Status[party_member] ) { player.Party_Status[party_member] = eCreatureState.existant };

player.Party_Species[party_member] =			player.Stored_Species[stored_creature];
player.Party_Name[party_member] =				player.Stored_Name[stored_creature];
player.Party_Form[party_member] =				player.Stored_Form[stored_creature];
player.Party_Quality[party_member] =			player.Stored_Quality[stored_creature];
player.Party_Nature[party_member] =				player.Stored_Nature[stored_creature];

player.Party_Level[party_member] =				player.Stored_Level[stored_creature];
player.Party_Exp[party_member] =				player.Stored_Exp[stored_creature];
player.Party_SkillString[party_member] =		player.Stored_SkillString[stored_creature]; 
party_expandskillstring(player,party_member);
player.Party_TraitString[party_member] =		player.Stored_TraitString[stored_creature]; 
party_expandtraitstring(player,party_member);
