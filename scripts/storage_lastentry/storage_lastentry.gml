///storage_lastentry(player);
/// @arg player
/*
	[Edited 4/5/2018]
	Returns the last used slot in storage.
*/
var player = argument0;

//Check All Slots
for ( var i=player.StorageSize ; i>0 ; i-- ) { 
	if ( player.Stored_Status[i] ) {
		return i;
		break;
		};
	};

return 0;