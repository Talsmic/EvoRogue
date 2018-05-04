/// @desc Phase 3: Combat

/* LEGACY CODE
if ( event_endround or global.active_creature[1, 1] == 0 or global.active_creature[2, 1] == 0 ) { battle_phase = "End"; battle_phase_step = 0; return; };

switch ( battle_phase_step )    {
	case 0: //Setup
		var banner = instance_create_depth(0,120,-12,btl_phasebanner);
		banner.sub_text = "round "+string(battle_round);
		battle_turn = 1;
		var i;
		for ( i=1 ; i<=global.bal_chainsize ; i++ ) { //Fill ungiven commands with basic attacks
			if ( chain_command[1,i] == 0 ) {	chain_command[1,i] = 1; chain_slot[1,i] = 1	};
			if ( chain_command[2,i] == 0 ) {	chain_command[2,i] = 1; chain_slot[2,i] = 1	};
			turn_resolved[1,i] = false; 
			turn_resolved[2,i] = false;
			};
		break;
	//...
	case 103: //Priority 
		var speedcheck = battle_speedcheck(1,global.active_creature[1,1],2,global.active_creature[2,1]);
		if ( speedcheck == 2 ) {	priority = 2	};
		if ( speedcheck == 1 ) {	priority = 1	};
		if ( speedcheck == 0 ) {
			if ( tiebreaker == 1 ) {
				priority = 1;
				tiebreaker = 2;
			} else {
				priority = 2;
				tiebreaker = 1;
				};
			};
		break;
	case 104: //Turn Resolution
		if ( priority == 1 ) {
			if ( turn_resolved[1,battle_turn] == false ) {
				battle_activateturn(1,battle_turn);
				turn_resolved[1,battle_turn] = true;
				return;
				};
			if ( turn_resolved[2,battle_turn] == false ) {
				battle_activateturn(2,battle_turn);
				turn_resolved[2,battle_turn] = true;
				return;
				};			
		} else {
			if ( turn_resolved[2,battle_turn] == false ) {
				battle_activateturn(2,battle_turn);
				turn_resolved[2,battle_turn] = true;
				return;
				};
			if ( turn_resolved[1,battle_turn] == false ) {
				battle_activateturn(1,battle_turn);
				turn_resolved[1,battle_turn] = true;
				return;
				};			
			};
		break;
	case 105: //Turn End
		var i;
		for ( i=1 ; i<=global.gps_partysize ; i++ ) {
			party_effect_depleteturn(1,i);
			party_effect_depleteturn(2,i);
			};
		break;
	case 106: //Next Turn
        if ( battle_turn < global.bal_chainsize) { 
			battle_turn++
			battle_phase_step = 103; 
			return 
			};
		break;
	//...	
	case 120: //Next Phase
		battle_phase = "End";
		battle_phase_step = 0;
		return;
	};
	
battle_phase_step++
