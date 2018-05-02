/// @desc party_firstemptyslot(player);
/// @arg player
/*
	[Edited 1/5/2018]
	Returns the first available slot in party.
	Returns -1 and an error if no slot exists
*/
var player = argument0;
var party_slot = -1;

//Check All Slots
for ( var i=1 ; i<=player.PartySize ; i++ ) {
	if ( player.Party_Status[i] == eCreatureState.nonexistant ) {
		party_slot = i;
		break;
		};
	};

if ( !party_slot ) { show_message("Error: No Free Party Slot") };
return party_slot;