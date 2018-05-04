///partysize(player);
/// @arg player
/*
	[Edited 4/5/2018]
	Returns the amount of used slots in party.
*/
var player = argument0;
var party_size = 0;

//Check All Slots
for ( var slotA=player.PartySize ; slotA>0 ; slotA-- ) { 
	if ( !player.Party_Status[slotA] ) {
		party_size++;
		};
	};
	
return party_size;