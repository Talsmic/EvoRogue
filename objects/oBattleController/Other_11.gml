/// @desc Phase 1: Setup

/* LEGACY CODE
switch ( battle_phase_step )    {
	case 0: //Setup
		var i;
		for ( i=1 ; i<=global.gps_partysize ; i++ ) {
			if ( global.party_status[1,i] > eCreatureState.defeated ) { global.party_status[1,i] = eCreatureState.existant };
			party_startingenergy(1,i);
			if ( global.party_status[2,i] > eCreatureState.defeated ) { global.party_status[2,i] = eCreatureState.existant };
			party_startingenergy(2,i);
			};
	//...
	case 5: //Create Character Selection	
		battle_obj_banner = instance_create_depth(240,60,-10,btl_characterselect);
		break;
	case 6: //Wait for player input
		if ( opener_selection_1 == 0 ) { return };
		battle_obj_combatlog = instance_create_depth(0,0,-8,btl_combatlog);
		battle_obj_playerframe = instance_create_depth(0,0,-8,btl_playerframe);
		break;
	case 11: //Activate Player 1 creature
		player1_creature_sprite = instance_create_depth(160,160,-2,btl_creature);
		player1_creature_sprite.Player = 1;
		player1_creature_sprite.ref_creature = 0;
		player1_creature_sprite.ref_active = 1;
		switch_use(1,opener_selection_1,0);
		break;
	case 21: //Activate Player 2 creature
		player2_creature_sprite = instance_create_depth(320,160,-2,btl_creature);
		player2_creature_sprite.facing = -1;
		player2_creature_sprite.Player = 2;
		player2_creature_sprite.ref_creature = 0;
		player2_creature_sprite.ref_active = 1;
		switch_use(2,opener_selection_2,0);
		break;
	case 31: //Create Health Bars
		player1_healthbar = instance_create_depth(-44,48,-7,btl_healthbar);
		player2_healthbar = instance_create_depth(524,48,-7,btl_healthbar);
		player2_healthbar.Player = 2;
		player2_healthbar.facing = -1;
		break;
	//...	
	case 100: //Next Phase
		battle_phase = "Command";
		battle_phase_step = 0;
		return;
	};
	
battle_phase_step++