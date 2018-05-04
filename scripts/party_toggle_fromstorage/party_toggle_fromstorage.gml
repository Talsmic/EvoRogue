///party_toggle_fromstorage(player,stored_creature);
/// @arg player
/// @arg stored_creature
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var stored_creature = argument1;
var party_member = inparty(player,stored_creature);

//Remove if creature already in party
//Otherwise add to party
if ( party_member ) { party_remove(player,party_member) };
else { party_add_fromstorage(player,stored_creature) };