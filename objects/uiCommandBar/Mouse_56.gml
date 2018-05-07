/* LEGACY CODE

if ( offset_speed > 0 ) { return };

var ref_party = global.active_creature[1, 1];
var skill_offset = 18;
var command = 0;
var command_slot = 0;
var viable_energy = global.party_energy[1, ref_party]-energy_cache;
var level_check = creature_skillslist_core(Player.Party_Species[ref_party]);

if ( mode == 1 ) {
	//Mode Button
	if ( point_in_rectangle( mouse_x, mouse_y, 0, y+20, 130, y+36 ) ) {
		offset_speed = -20;
		alarm[2] = 10;
		};
	//Core Skills
	var i; 
	var focus_skill; 
	var focus_recharge;
	for ( i=1 ; i<=5 ; i++ ) {
		//Find Skill
		switch ( i ) {
			case 1:		focus_skill = global.party_skillA[1, ref_party];	
						focus_recharge = 0;
						break;
			case 2:		focus_skill = global.party_skillB[1, ref_party];	
						focus_recharge = recharge[2];
						break;
			case 3:		focus_skill = global.party_skillC[1, ref_party];	
						focus_recharge = recharge[3];
						break;
			case 4:		focus_skill = global.party_skillD[1, ref_party];	
						focus_recharge = recharge[4];
						break;
			case 5:		focus_skill = global.party_skillE[1, ref_party];	
						focus_recharge = recharge[5];
						break;
			default:	focus_skill = 0; focus_recharge = 0;	break;
			};
		if ( focus_skill ) {
			if ( point_in_rectangle( mouse_x, mouse_y, skill_offset-14, y-50, skill_offset+12, y-24 ) ) {
				if ( focus_recharge > 0 ) {	return	};
				if ( viable_energy < db_record_get("db_Skills",focus_skill,"cost") ) {	return	};
				if ( Player.Party_Level[ref_party] < level_check[i, 2] ) { return };
				command = 1
				command_slot = i;
				};
			skill_offset += 30;
			};
		};

	//Optional Skills
	skill_offset = 33;
	for ( i=1 ; i<=9 ; i++ ) {
		//Find Skill
		switch ( i ) {
			case 1:		focus_skill = global.party_skill1[1, ref_party];	
						focus_recharge = recharge[11];
						break;
			case 2:		focus_skill = global.party_skill2[1, ref_party];	
						focus_recharge = recharge[12];
						break;
			case 3:		focus_skill = global.party_skill3[1, ref_party];	
						focus_recharge = recharge[13];
						break;
			case 4:		focus_skill = global.party_skill4[1, ref_party];	
						focus_recharge = recharge[14];
						break;
			case 5:		focus_skill = global.party_skill5[1, ref_party];	
						focus_recharge = recharge[15];
						break;
			case 6:		focus_skill = global.party_skill6[1, ref_party];	
						focus_recharge = recharge[16];
						break;
			case 7:		focus_skill = global.party_skill7[1, ref_party];	
						focus_recharge = recharge[17];
						break;
			case 8:		focus_skill = global.party_skill8[1, ref_party];	
						focus_recharge = recharge[18];
						break;
			case 9:		focus_skill = global.party_skill9[1, ref_party];	
						focus_recharge = recharge[19];
						break;
			default:	focus_skill = 0; focus_recharge = 0;	break;
			};
		if ( focus_skill ) {
			if ( point_in_rectangle( mouse_x, mouse_y, skill_offset-14, y-18, skill_offset+12, y+16 ) ) {
				if ( focus_recharge > 0 ) {	return	};
				if ( viable_energy < db_record_get("db_Skills",focus_skill,"cost") ) {	return	};
				command = 1;
				command_slot = i+10;
				};
			skill_offset += 30;
			};
		};
	};
	
if ( mode == 2 ) {
	//Mode Button
	if ( point_in_rectangle( mouse_x, mouse_y, 0, y+20, 130, y+36 ) ) {
		offset_speed = -20;
		alarm[2] = 10;
		};
	//Creature Buttons
	var i; 
	var skill_offset = -12;
	for ( i=1 ; i<=global.Default_PartySize ; i++ ) {
		if ( global.party_status[1, i] == eCreatureState.nonexistant ) { continue };
		skill_offset += 30;
		if ( global.party_status[1, i] == eCreatureState.active ) { continue };
		if ( global.party_status[1, i] == eCreatureState.defeated ) { continue };
		if ( point_in_rectangle( mouse_x, mouse_y, skill_offset-14, y-18, skill_offset+12, y+16 ) ) {
			command = 2;
			command_slot = i;
			};
		};
	};
//====================================================================
if ( command > 0 ) {
	btl_chain.chain_command[0] = command;
	btl_chain.chain_slot[0] = command_slot;
	btl_chain.chain_user[0] = global.active_creature[1, 1];
	with ( btl_chain ) { event_user(1) } ;
	};	