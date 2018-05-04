/* LEGACY CODE

offset += offset_speed;

var state;
var stored_tt = 0;
var ref_party = global.active_creature[1, 1];
var viable_energy = global.party_energy[1, ref_party]-energy_cache;

if ( mode == 1 ) {
	//Draw Bar
	var level_check = creature_skillslist_core(global.party_species[1, ref_party]);
	var bar_size = 5;
	if (global.party_skillA[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skillB[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skillC[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skillD[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skillE[1, ref_party] > 0) {	bar_size += 30	};
	draw_blackbox_sharp(offset,y-46,bar_size,24,1,1,1,1);
	draw_sprite_ext(spr_blackboxcaps24,0,offset+bar_size,y-22,1,-1,0,c_white,1);
	bar_size = 20;
	if (global.party_skill1[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skill2[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skill3[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skill4[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skill5[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skill6[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skill7[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skill8[1, ref_party] > 0) {	bar_size += 30	};
	if (global.party_skill9[1, ref_party] > 0) {	bar_size += 30	};
	draw_blackbox_sharp(offset,y-16,bar_size,32,1,1,1,1);
	draw_sprite_ext(spr_blackboxcaps32,0,offset+bar_size,y+16,1,-1,0,c_white,1);
	
	//Draw Button
	bar_size = 112;
	var state_colour = c_white;
	if ( point_in_rectangle( mouse_x, mouse_y, 0, y+20, 130, y+36 ) ) {
		bar_size = 114;
		var state_colour = c_orange;
		};
	draw_blackbox_sharp(offset,y+20,bar_size,16,1,1,1,1);
	draw_sprite_ext(spr_blackboxcaps16,0,offset+bar_size,y+20,1,1,0,c_white,1);	
	draw_set_font(ft_EvoSmallcaps_6);
	draw_text_outline(offset+8,y+23,"Change Creature",state_colour);

	//Draw Core Skills
	var i; 
	var focus_skill; 
	var focus_recharge;
	var skill_offset = 18;
	draw_set_halign(fa_center);
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
			state = 1;
			//Mouseover
			if ( point_in_rectangle( mouse_x, mouse_y, skill_offset-14, y-50, skill_offset+12, y-24 ) ) {
				state = 2;
				stored_tt = focus_skill;			
				};
			//Not Enough Energy
			if ( viable_energy < db_record_get("db_Skills",focus_skill,"cost") ) {	state = 5	};
			//On Recharge
			if ( focus_recharge > 0 ) {	state = 4 + focus_recharge*0.1;	};
			if ( global.party_level[1, ref_party] < level_check[i, 2] ) { state = 6 };
			//Draw
			draw_icon_skill(offset+skill_offset,y-36,24,focus_skill,state);
			if ( global.party_level[1, ref_party] < level_check[i, 2] ) { 
				draw_sprite(spr_iconlock,0,offset+skill_offset,y-36); 
				draw_set_font(ft_EvoTooltipBold_6);
				draw_text_outline_coloured(offset+skill_offset,y-37,string(level_check[i, 2]),c_lightgray,c_darkgray); 
				};
			skill_offset += 30;
			};
		};

	//Draw Optional Skills
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
			state = 1;
			//Mouseover
			if ( point_in_rectangle( mouse_x, mouse_y, skill_offset-14, y-18, skill_offset+12, y+16 ) ) {
				state = 2;
				stored_tt = focus_skill;			
				};
			//Not Enough Energy
			if ( viable_energy < db_record_get("db_Skills",focus_skill,"cost") ) {	state = 5	};
			//On Recharge
			if ( focus_recharge > 0 ) {	state = 4 + focus_recharge*0.1;	};
			//Draw
			draw_icon_skill(offset+skill_offset,y,24.32,focus_skill,state);
			skill_offset += 30;
			};
		};
	
	draw_set_halign(fa_left);
	//Draw Tooltip: Skills
	if (stored_tt > 0) { draw_tooltip_skill(stored_tt) };
	};
	
if ( mode == 2 ) {
	//Draw Bar
	var bar_size = 5;
	var i;
	for ( i=1 ; i<=global.gps_partysize ; i++ ) {
		if ( global.party_status[1, i] ) {	bar_size += 30	};
		};
	draw_blackbox_sharp(offset,y-16,bar_size,32,1,1,1,1);
	draw_sprite_ext(spr_blackboxcaps32,0,offset+bar_size,y+16,1,-1,0,c_white,1);
	
	//Draw Button
	bar_size = 112;
	var state_colour = c_white;
	if ( point_in_rectangle( mouse_x, mouse_y, 0, y+20, 130, y+36 ) ) {
		bar_size = 114;
		var state_colour = c_orange;
		};
	draw_blackbox_sharp(offset,y+20,bar_size,16,1,1,1,1);
	draw_sprite_ext(spr_blackboxcaps16,0,offset+bar_size,y+20,1,1,0,c_white,1);	
	draw_set_font(ft_EvoSmallcaps_6);
	draw_text_outline(offset+8,y+23,"Skills",state_colour);

	//Draw Creatures
	var i; 
	var skill_offset = 18;
	for ( i=1 ; i<=global.gps_partysize ; i++ ) {
		if ( global.party_status[1, i] == eCreatureState.nonexistant ) { continue };
		state = 1;
		//Mouseover
		if ( point_in_rectangle( mouse_x, mouse_y, skill_offset-14, y-18, skill_offset+12, y+16 ) ) {
			state = 2;		
			stored_tt = i;
			};
		//Active
		if ( global.party_status[1, i] == eCreatureState.active ) { state = 5 };	
		//Defeated
		if ( global.party_status[1, i] == eCreatureState.defeated ) { state = 6 };	
		//Draw
		draw_icon_creature(offset+skill_offset,y,24.32,global.party_species[1, i],state);
		skill_offset += 30;
		};
	//Draw Tooltip
	if ( stored_tt ) { draw_tooltip_party(1,stored_tt,2,1,0) };
	};