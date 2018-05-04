///party_lastentry(player);
/// @arg player
/*
	[Edited 4/5/2018]
	Returns the last used slot in party.
*/
var player = argument0;

//Check All Slots
for ( var i=player.PartySize ; i>0 ; i-- ) { 
	if ( player.Party_Status[i] ) {
		return i;
		break;
		};
	};

return 0;