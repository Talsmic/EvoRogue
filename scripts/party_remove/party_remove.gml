///party_remove(player,party_member)
/// @arg player
/// @arg party_member
var player = argument0;
var party_member = argument1;
/*
	[Edited 4/5/2018]
	Removes the targeted creature from the player's party
	Saves it to storage, but only if it has a StorageID
*/


//Update to storage (if storage ID exists, if it doesn't the create is freed)
if ( player.Party_StoredID[party_member] ) { party_update_tostorage(player,party_member) };

//Reset Party slot to defaults
var_oPlayer_Party_Empty(party_member,player);