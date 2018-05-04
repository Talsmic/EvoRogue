///storage_condense(player,check_slot);
/// @arg player
/// @arg check_slot
var player = argument[0];
var check_slot = storage_lastentry(player);;
var check_slot_distance_moved = 0;
switch ( argument_count ) {
	case 2: check_slot = argument[1];
	};

var storagelength = storage_lastentry(player);
//slotA = Starting from Z, The slot in the storage being checked for a creature
//slotB = Starting from an empty slotA, The slots behind slotA to be pulled forward
//slotC = The slot behind slotB
for ( var slotA=storagelength ; slotA>0 ; slotA-- ) { 
	//If there is no creature in a slot
	if ( !player.Stored_Status[slotA] ) { 
		for ( var slotB=slotA ; slotB<storagelength ; slotB++ ) {
			///Move the next creature forward once
			var slotC = slotB+1;
			if ( player.Stored_Status[slotC] ) { 
				//SlotC overwrites SlotB
				storage_transfer(player,player,slotB,slotC);
				if ( inparty(player,slotC) ) { player.Party_StoredID[inparty(player,slotC)]-- };
				player.Stored_Status[slotC] = eCreatureState.nonexistant;
				player.CondenseCounterOperations++;
				};
			};
		storagelength--;
		if ( slotA < check_slot ) check_slot_distance_moved++
		};
	};
	
player.CondenseCounterStorage++;
return check_slot_distance_moved;