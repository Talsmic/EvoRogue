///party_addfromstorage(player,stored_creature);
/// @arg player
/// @arg stored_creature
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var stored_creature = argument1;
var party_member = party_firstemptyslot(player);

//Fail to add if no free party slot
if ( party_member <= 0 ) { return false };
//Fail to add if no creature in storage slot
if ( player.Stored_Status[stored_creature] == eCreatureState.nonexistant ) { return false };
//Fail to add if creature already in party
if ( creatureinparty(player,stored_creature) ) { return false };

player.Party_Status[party_member] = eCreatureState.existant;
player.Party_StoredID[party_member] = stored_creature;

//Update Party Info
party_updatefromstorage(player,party_member);