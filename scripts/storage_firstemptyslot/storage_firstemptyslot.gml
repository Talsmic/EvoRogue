///storage_firstemptyslot(player);
/// @arg player
/*
	[Edited 1/5/2018]
	Returns the first available slot in storage.
	Returns -1 and an error if no slot exists
*/
var player = argument0;
var storage_slot = -1;

//Check All Slots
for ( var i=1 ; i<=player.StorageSize ; i++ ) {
	if ( !player.Stored_Status[i] ) {
		storage_slot = i;
		break;
		};
	};

if ( !storage_slot ) { show_message("Error: No Free Storage Slot") };
return storage_slot;