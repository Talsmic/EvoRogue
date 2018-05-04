///party_condense(player,check_slot);
/// @arg player
/// @arg check_slot
var player = argument[0];
var check_slot = party_lastentry(player);;
var check_slot_distance_moved = 0;
switch ( argument_count ) {
	case 2: check_slot = argument[1];
	};

var partylength = party_lastentry(player);
//slotA = Starting from Z, The slot in the party being checked for a creature
//slotB = Starting from an empty slotA, The slots behind slotA to be pulled forward
//slotC = The slot behind slotB
for ( var slotA=partylength ; slotA>0 ; slotA-- ) { 
	//If there is no creature in a slot
	if ( !player.Party_Status[slotA] ) { 
		for ( var slotB=slotA ; slotB<partylength ; slotB++ ) {
			///Move the next creature forward once
			var slotC = slotB+1;
			if ( player.Party_Status[slotC] ) { 
				//SlotC overwrites SlotB
				party_transfer(player,player,slotB,slotC);
				
				player.Party_Status[slotC] = eCreatureState.nonexistant;
				player.CondenseCounterOperations++;
				};
			};
		partylength--;
		if ( slotA < check_slot ) check_slot_distance_moved++
		};
	};
	
player.CondenseCounterParty++;
return check_slot_distance_moved;