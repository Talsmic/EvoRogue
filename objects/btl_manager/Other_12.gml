/// @description Phase 2: Command

switch ( battle_phase_step )    {
	case 0: //Setup
		battle_round++;
		var banner = instance_create_depth(0,120,-12,btl_phasebanner);
		banner.sub_text = "round "+string(battle_round);
		banner.main_text = "Command";
		banner.main_text_colour = c_electric;
		break;
	//...	
	case 100: //Create Command Bar and Chain
		battle_obj_commandbar = instance_create_depth(0,220,-10,btl_commandbar);
		battle_obj_chain = instance_create_depth(240,88,-10,btl_chain);
		waitingforchain = true;
		break;
	case 101: //Wait for player input
		if ( waitingforchain ) { return };
		battle_obj_commandbar.offset_speed = -20;
		battle_obj_commandbar.alarm[1] = 10;
		battle_obj_chain.alpha_speed = -0.1;
		battle_obj_chain.alarm[1] = 11;
		break;
	//...
	case 130: //Next Phase
		battle_phase = "Combat";
		battle_phase_step = 0;
		event_endround = 0;
		event_forcedswitch[1] = 0;
		event_forcedswitch[2] = 0;
		event_death[1] = 0;
		event_death[2] = 0;
		return;
	};
	
battle_phase_step++