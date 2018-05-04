/// @description Phase 4: End Turn

switch ( battle_phase_step )    {
    case 0: //Death Check 1
        if ( event_death[1] and global.active_creature[1, 1] ) {
			event_forcedswitch[1] = true;
            global.party_status[1, global.active_creature[1, 1]] = eCreatureState.defeated; 
			global.active_creature[1, 1] = 0;
            victory_points[2]++;
			};
        if ( event_death[2] and global.active_creature[2, 1] ) {
			event_forcedswitch[2] = true;
            global.party_status[2, global.active_creature[2, 1]] = eCreatureState.defeated; 
			global.active_creature[2, 1] = 0;
            victory_points[1]++;
			};
		if ( victory_points[1] >= global.battle_pointstowin[1] ) {
			battle_phase = "Victory";
			battle_phase_step = 0;
			return;
			};
		if ( victory_points[2] >= global.battle_pointstowin[2] ) {
			battle_phase = "Defeat";
			battle_phase_step = 0;
			return;
			};
        break;
	case 30: //Setup
		var banner = instance_create_depth(0,120,-12,btl_phasebanner);
		banner.sub_text = "round "+string(battle_round);
		banner.main_text = "Recovery";
		banner.main_text_colour = c_nature;
		shift_selection_1 = 0;
		shift_selection_2 = 0;
		break;
	//...
	case 105: //Recovery
		var i;
		for ( i=1 ; i<=global.gps_partysize ; i++ ) {
			party_recovery(1,i);
			party_recovery(2,i);
			party_recharge(1,i);
			party_recharge(2,i);
			party_effect_depleteround(1,i);
			party_effect_depleteround(2,i);
			};
		break;
	//...
    case 110: //Death Check 2
        if ( event_death[1] and global.active_creature[1, 1] ) {
			event_forcedswitch[1] = true;
            global.party_status[1, global.active_creature[1, 1]] = eCreatureState.defeated; 
			global.active_creature[1, 1] = 0;
            victory_points[2]++;
			};
        if ( event_death[2] and global.active_creature[2, 1] ) {
			event_forcedswitch[2] = true;
            global.party_status[2, global.active_creature[2, 1]] = eCreatureState.defeated; 
			global.active_creature[2, 1] = 0;
            victory_points[1]++;
			};
        break;
	//...
	case 112: //Shift Selection
		if ( event_forcedswitch[1] or global.active_creature[1, 1] == 0 ) { 
			battle_obj_commandbar = instance_create_depth(0,220,-10,btl_commandbar_shift);
			};
		if ( event_forcedswitch[2] or global.active_creature[2, 1] == 0 ) { shift_selection_2 = ai_shiftresponse() };		
		break;
	case 113: //Response Loop
		if ( event_forcedswitch[1] and shift_selection_1==0 ) { return };
		break;
	//...
	case 114: //Activate
		if ( event_forcedswitch[1] and shift_selection_1 ) { 
			switch_use(1,shift_selection_1,0);
			};
		if ( event_forcedswitch[2] and shift_selection_2 ) { 
			switch_use(2,shift_selection_2,0);
			};
		break;
	//...	
	case 200: //Next Phase
		battle_phase = "Command";
		battle_phase_step = 0;
		return;
	};
	
battle_phase_step++
