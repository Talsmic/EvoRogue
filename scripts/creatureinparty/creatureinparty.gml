///creatureinparty(player,stored_creature);
/// @arg player
/// @arg party_member
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var stored_creature = argument1;

//Check All Slots
for ( var i=1 ; i<=player.PartySize ; i++ ) {
	if ( player.Party_StoredID[i] == stored_creature ) {
		return i;
		};
	};
	
return false;

