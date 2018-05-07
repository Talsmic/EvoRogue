/* LEGACY CODE

draw_set_alpha( alpha );

//Update from active
if ( ref_active ) {
	if (global.active_creature[Player, ref_active] <= 0) { return };
	ref_creature = global.active_creature[Player, ref_active];
	};

//Find Information
var ref_name = global.party_name[Player, ref_creature];
var ref_health = floor(global.party_health[Player, ref_creature]);
var ref_energy = floor(global.party_energy[Player, ref_creature]);
var max_health = party_checkmaxhealth(Player, ref_creature);
var max_energy = global.bal_energy_base;
var typeA = find_colour(db_record_get("db_Creatures",Player.Party_Species[ ref_creature],"elementA"));
var typeB = find_colour(db_record_get("db_Creatures",Player.Party_Species[ ref_creature],"elementB"));
if ( ref_health > stored_health ) { stored_health++ };
if ( ref_health < stored_health ) { stored_health-- };
if ( ref_energy > stored_energy ) { stored_energy++ };
if ( ref_energy < stored_energy ) { stored_energy-- };
var health_size = 0;
if ( stored_health != 0 ) { health_size = stored_health / max_health * 100 };
var energy_size = 0;
if ( stored_energy != 0 ) { energy_size = stored_energy / max_energy * 80 };
var energy_cache_size = 0;
if ( energy_cache != 0 ) { energy_cache_size = energy_cache / max_energy * 80 };
if ( energy_cache_size > energy_size ) { energy_cache_size = energy_size };

//Draw
if ( facing ) {
	//Draw Background Box
	draw_sprite_ext(spr_levelorb,0,x,y,1,1,0,c_white,alpha);
	draw_sprite_ext(spr_levelorb,1,x,y,1,1,0,typeA,alpha);
	if ( typeB != c_white ) { draw_sprite_ext(spr_levelorb,2,x,y,1,1,0,typeB,alpha); };
	//Draw Level
	draw_set_font(ft_EvoTooltip_6);
	draw_set_halign(fa_center);
	draw_text_outline(x+1,y-4,Player.Party_Level[ref_creature],typeA);
	draw_set_halign(fa_left); 
	//Draw Health
	draw_sprite_part(spr_healthbar,0,0,0,health_size,7,x+11,y-6);
	if ( health_size > 0 ) { draw_sprite(spr_healthbar,1,x+8,y-6) };
	if ( point_in_rectangle( mouse_x, mouse_y, x+8, y-6, x+111, y+1 ) ) {
		draw_set_font(ft_EvoTooltip_6);
		draw_text_outline(x+14,y-7,string(ref_health)+"/"+string(max_health),c_white)
		};
	//Draw Energy
	draw_sprite_part(spr_energybar,0,0,0,energy_size,2,x+11,y+3);
	draw_sprite_part(spr_energybar,0,0,2,energy_size-1,1,x+11,y+5);
	draw_sprite_part(spr_energybar,0,0,3,energy_size-2,1,x+11,y+6);
	if ( energy_size > 0 ) { draw_sprite(spr_energybar,1,x+8,y+3) };
	//Draw Cached Energy
	if ( energy_cache_size ) {
		draw_sprite_part_ext(spr_energybar,2,0,0,energy_cache_size,2,x+11+energy_size-energy_cache_size,y+3,1,1,c_shadow,1);
		draw_sprite_part_ext(spr_energybar,2,0,2,energy_cache_size-1,1,x+11+energy_size-energy_cache_size,y+5,1,1,c_shadow,1);
		draw_sprite_part_ext(spr_energybar,2,0,3,energy_cache_size-2,1,x+11+energy_size-energy_cache_size,y+6,1,1,c_shadow,1);
		draw_sprite_ext(spr_energybar,3,x+8+energy_size-energy_cache_size,y+3,1,1,1,c_shadow,1)
		};
	if ( point_in_rectangle( mouse_x, mouse_y, x+8, y+2, x+111, y+6 ) ) {
		draw_set_font(ft_EvoTooltip_6);
		if ( energy_cache_size ) {
			draw_text_outline(x+14,y+1,string(ref_energy)+"["+string(energy_cache)+"]/"+string(max_energy),c_white);
		} else {
			draw_text_outline(x+14,y+1,string(ref_energy)+"/"+string(max_energy),c_white);
			};
		};
	var boost_offset = 0;
} else {
	draw_set_halign(fa_right);
	
	//Draw Background Box
	draw_sprite_ext(spr_levelorb,0,x,y,-1,1,0,c_white,alpha);
	draw_sprite_ext(spr_levelorb,1,x,y,-1,1,0,typeA,alpha);
	if ( typeB != c_white ) { draw_sprite_ext(spr_levelorb,2,x,y,-1,1,0,typeB,alpha); };
	//Draw Level
	draw_set_font(ft_EvoTooltip_6);
	draw_set_halign(fa_center);
	draw_text_outline(x,y-4,Player.Party_Level[ref_creature],typeA);
	draw_set_halign(fa_right); 
	//Draw Health
	draw_sprite_part_ext(spr_healthbar,0,0,0,health_size,7,x-11,y-6,-1,1,c_white,alpha);
	if ( health_size > 0 ) { draw_sprite_ext(spr_healthbar,1,x-8,y-6,-1,1,0,c_white,alpha) };
	if ( point_in_rectangle( mouse_x, mouse_y, x-111, y-6, x-8, y+1 ) ) {
		draw_set_font(ft_EvoTooltip_6);
		draw_text_outline(x-14,y-7,string(ref_health)+"/"+string(max_health),c_white)
		};
	//Draw Energy
	draw_sprite_part_ext(spr_energybar,0,0,0,energy_size,2,x-11,y+3,-1,1,c_white,alpha);
	draw_sprite_part_ext(spr_energybar,0,0,2,energy_size-1,1,x-11,y+5,-1,1,c_white,alpha);
	draw_sprite_part_ext(spr_energybar,0,0,3,energy_size-2,1,x-11,y+6,-1,1,c_white,alpha);
	if ( energy_size > 0 ) { draw_sprite_ext(spr_energybar,1,x-8,y+3,-1,1,0,c_white,alpha) };
	if ( point_in_rectangle( mouse_x, mouse_y, x-111, y+2, x-8, y+6 ) ) {
		draw_set_font(ft_EvoTooltip_6);
		draw_text_outline(x-14,y+1,string(ref_energy)+"/"+string(max_energy),c_white)
		};
		
	draw_set_halign(fa_left);
	var boost_offset = 1;
	};
	
//Draw Boost Arrow
if ( ref_active ) {
	//Boost
	var boost_count = 0;
	boost_count[0] = 0;
	var boost_draw = 1;
	if ( global.active_boost_power[Player] > 0 ) { boost_count[boost_draw]=c_power; boost_draw++ };
	if ( global.active_boost_potency[Player] > 0 ) { boost_count[boost_draw]=c_potency; boost_draw++ };
	if ( global.active_boost_fortitude[Player] > 0 ) { boost_count[boost_draw]=c_fortitude; boost_draw++ };
	if ( global.active_boost_recovery[Player] > 0 ) { boost_count[boost_draw]=c_recovery; boost_draw++ };
	if ( global.active_boost_speed[Player] > 0 ) { boost_count[boost_draw]=c_speed; boost_draw++ };
	switch ( array_length_1d(boost_count) ) {
		case 6:
			draw_sprite_part_ext(spr_boostarrow,0,0,0,3,15,x-7-boost_offset,y-22,1,1,boost_count[1],1);
			draw_sprite_part_ext(spr_boostarrow,0,3,0,3,15,x-7-boost_offset+3,y-22,1,1,boost_count[2],1);
			draw_sprite_part_ext(spr_boostarrow,0,6,0,3,15,x-7-boost_offset+6,y-22,1,1,boost_count[3],1);
			draw_sprite_part_ext(spr_boostarrow,0,9,0,3,15,x-7-boost_offset+9,y-22,1,1,boost_count[4],1);
			draw_sprite_part_ext(spr_boostarrow,0,12,0,3,15,x-7-boost_offset+12,y-22,1,1,boost_count[5],1);
			break;
		case 5:
			draw_sprite_part_ext(spr_boostarrow,0,0,0,4,15,x-7-boost_offset,y-22,1,1,boost_count[1],1);
			draw_sprite_part_ext(spr_boostarrow,0,4,0,4,15,x-7-boost_offset+4,y-22,1,1,boost_count[2],1);
			draw_sprite_part_ext(spr_boostarrow,0,7,0,1,15,x-7-boost_offset+7,y-22,1,1,boost_count[3],.5);
			draw_sprite_part_ext(spr_boostarrow,0,8,0,3,15,x-7-boost_offset+8,y-22,1,1,boost_count[3],1);
			draw_sprite_part_ext(spr_boostarrow,0,11,0,4,15,x-7-boost_offset+11,y-22,1,1,boost_count[4],1);
			break;
		case 4:
			draw_sprite_part_ext(spr_boostarrow,0,0,0,5,15,x-7-boost_offset,y-22,1,1,boost_count[1],1);
			draw_sprite_part_ext(spr_boostarrow,0,5,0,5,15,x-7-boost_offset+5,y-22,1,1,boost_count[2],1);
			draw_sprite_part_ext(spr_boostarrow,0,10,0,5,15,x-7-boost_offset+10,y-22,1,1,boost_count[3],1);
			break;
		case 3:
			draw_sprite_part_ext(spr_boostarrow,0,0,0,8,15,x-7-boost_offset,y-22,1,1,boost_count[1],1);
			draw_sprite_part_ext(spr_boostarrow,0,7,0,1,15,x-7-boost_offset+7,y-22,1,1,boost_count[2],.5);
			draw_sprite_part_ext(spr_boostarrow,0,8,0,7,15,x-7-boost_offset+8,y-22,1,1,boost_count[2],1);
			break;
		case 2:
			draw_sprite_part_ext(spr_boostarrow,0,0,0,15,15,x-7-boost_offset,y-22,1,1,boost_count[1],1);
			break;
		};
	//Reduce
	boost_count = 0;
	boost_count[0] = 0;
	boost_draw = 1;
	if ( global.active_boost_power[Player] < 0 ) { boost_count[boost_draw]=c_power; boost_draw++ };
	if ( global.active_boost_potency[Player] < 0 ) { boost_count[boost_draw]=c_potency; boost_draw++ };
	if ( global.active_boost_fortitude[Player] < 0 ) { boost_count[boost_draw]=c_fortitude; boost_draw++ };
	if ( global.active_boost_recovery[Player] < 0 ) { boost_count[boost_draw]=c_recovery; boost_draw++ };
	if ( global.active_boost_speed[Player] < 0 ) { boost_count[boost_draw]=c_speed; boost_draw++ };
	switch ( array_length_1d(boost_count) ) {
		case 6:
			draw_sprite_part_ext(spr_boostarrow,1,0,0,3,15,x-7-boost_offset,y+8,1,1,boost_count[1],1);
			draw_sprite_part_ext(spr_boostarrow,1,3,0,3,15,x-7-boost_offset+3,y+8,1,1,boost_count[2],1);
			draw_sprite_part_ext(spr_boostarrow,1,6,0,3,15,x-7-boost_offset+6,y+8,1,1,boost_count[3],1);
			draw_sprite_part_ext(spr_boostarrow,1,9,0,3,15,x-7-boost_offset+9,y+8,1,1,boost_count[4],1);
			draw_sprite_part_ext(spr_boostarrow,1,12,0,3,15,x-7-boost_offset+12,y+8,1,1,boost_count[5],1);
			break;
		case 5:
			draw_sprite_part_ext(spr_boostarrow,1,0,0,4,15,x-7-boost_offset,y+8,1,1,boost_count[1],1);
			draw_sprite_part_ext(spr_boostarrow,1,4,0,4,15,x-7-boost_offset+4,y+8,1,1,boost_count[2],1);
			draw_sprite_part_ext(spr_boostarrow,1,7,0,1,15,x-7-boost_offset+7,y+8,1,1,boost_count[3],.5);
			draw_sprite_part_ext(spr_boostarrow,1,8,0,3,15,x-7-boost_offset+8,y+8,1,1,boost_count[3],1);
			draw_sprite_part_ext(spr_boostarrow,1,11,0,4,15,x-7-boost_offset+11,y+8,1,1,boost_count[4],1);
			break;
		case 4:
			draw_sprite_part_ext(spr_boostarrow,1,0,0,5,15,x-7-boost_offset,y+8,1,1,boost_count[1],1);
			draw_sprite_part_ext(spr_boostarrow,1,5,0,5,15,x-7-boost_offset+5,y+8,1,1,boost_count[2],1);
			draw_sprite_part_ext(spr_boostarrow,1,10,0,5,15,x-7-boost_offset+10,y+8,1,1,boost_count[3],1);
			break;
		case 3:
			draw_sprite_part_ext(spr_boostarrow,1,0,0,8,15,x-7-boost_offset,y+8,1,1,boost_count[1],1);
			draw_sprite_part_ext(spr_boostarrow,1,7,0,1,15,x-7-boost_offset+7,y+8,1,1,boost_count[2],.5);
			draw_sprite_part_ext(spr_boostarrow,1,8,0,7,15,x-7-boost_offset+8,y+8,1,1,boost_count[2],1);
			break;
		case 2:
			draw_sprite_part_ext(spr_boostarrow,1,0,0,15,15,x-7-boost_offset,y+8,1,1,boost_count[1],1);
			break;
		};
	};
	
//Draw Name
if ( facing ) {
	draw_set_font(ft_EvoSmallcaps_6);
	draw_text_outline(x+9,y-18,ref_name,c_white);
	draw_text_outline(x+8,y-18,ref_name,c_white);
} else {
	draw_set_halign(fa_right);
	draw_set_font(ft_EvoSmallcaps_6);
	draw_text_outline(x-7,y-18,ref_name,c_white);
	draw_text_outline(x-8,y-18,ref_name,c_white);
	draw_set_halign(fa_left);
	};
	
//Draw Effects
var i; 
var effect; 
var effect_duration;
var effect_element;
var effect_potency;
if ( facing ) {
	var effect_x = 16; 
	var effect_y = 18;
	var effect_draw_direction = 1;
} else {
	var effect_x = -16; 
	var effect_y = 18;
	var effect_draw_direction = -1;
};
//Draw Stance
if ( global.party_stance[Player, ref_creature] ) {
	draw_icon_effect(x+effect_x,y+effect_y,16,global.party_stance[Player, ref_creature],global.party_stance_duration[Player, ref_creature],0)
	effect_x += 21*effect_draw_direction;
	};
//Draw Buffs
for ( i=1 ; i<=5 ; i++ ) {
	switch ( i ) {
		case 1: 
			effect = global.party_buff1[Player, ref_creature]; 
			effect_duration = global.party_buff1_duration[Player, ref_creature];
			effect_element = global.party_buff1_element[Player, ref_creature];
			effect_potency = global.party_buff1_potency[Player, ref_creature];
			break;
		case 2: 
			effect = global.party_buff2[Player, ref_creature]; 
			effect_duration = global.party_buff2_duration[Player, ref_creature];
			effect_element = global.party_buff2_element[Player, ref_creature];
			effect_potency = global.party_buff2_potency[Player, ref_creature];
			break;
		case 3: 
			effect = global.party_buff3[Player, ref_creature]; 
			effect_duration = global.party_buff3_duration[Player, ref_creature];
			effect_element = global.party_buff3_element[Player, ref_creature];
			effect_potency = global.party_buff3_potency[Player, ref_creature];
			break;
		case 4: 
			effect = global.party_buff4[Player, ref_creature]; 
			effect_duration = global.party_buff4_duration[Player, ref_creature];
			effect_element = global.party_buff4_element[Player, ref_creature];
			effect_potency = global.party_buff4_potency[Player, ref_creature];
			break;
		case 5: 
			effect = global.party_buff5[Player, ref_creature]; 
			effect_duration = global.party_buff5_duration[Player, ref_creature];
			effect_element = global.party_buff5_element[Player, ref_creature];
			effect_potency = global.party_buff5_potency[Player, ref_creature];
			break;
		};
	if ( effect ) {
		draw_icon_effect(x+effect_x,y+effect_y,16,effect,effect_duration,effect_element);
		effect_x += 21*effect_draw_direction;
		};
	if ( effect_x > 120 ) {	effect_x = 16; effect_y += 21 };
	if ( effect_x < -120 ) { effect_x = -16; effect_y += 21 };
	};
//Draw Debuffs
for ( i=1 ; i<=5 ; i++ ) {
	switch ( i ) {
		case 1: 
			effect = global.party_debuff1[Player, ref_creature]; 
			effect_duration = global.party_debuff1_duration[Player, ref_creature];
			effect_element = global.party_debuff1_element[Player, ref_creature];
			effect_potency = global.party_debuff1_potency[Player, ref_creature];
			break;
		case 2: 
			effect = global.party_debuff2[Player, ref_creature]; 
			effect_duration = global.party_debuff2_duration[Player, ref_creature];
			effect_element = global.party_debuff2_element[Player, ref_creature];
			effect_potency = global.party_debuff2_potency[Player, ref_creature];
			break;
		case 3: 
			effect = global.party_debuff3[Player, ref_creature]; 
			effect_duration = global.party_debuff3_duration[Player, ref_creature];
			effect_element = global.party_debuff3_element[Player, ref_creature];
			effect_potency = global.party_debuff3_potency[Player, ref_creature];
			break;
		case 4: 
			effect = global.party_debuff4[Player, ref_creature]; 
			effect_duration = global.party_debuff4_duration[Player, ref_creature];
			effect_element = global.party_debuff4_element[Player, ref_creature];
			effect_potency = global.party_debuff4_potency[Player, ref_creature];
			break;
		case 5: 
			effect = global.party_debuff5[Player, ref_creature]; 
			effect_duration = global.party_debuff5_duration[Player, ref_creature];
			effect_element = global.party_debuff5_element[Player, ref_creature];
			effect_potency = global.party_debuff5_potency[Player, ref_creature];
			break;
		};
	if ( effect ) {
		draw_icon_effect(x+effect_x,y+effect_y,16,effect,effect_duration,effect_element);
		effect_x += 21*effect_draw_direction;
		};
	if ( effect_x > 120 ) {	effect_x = 16; effect_y += 21 };
	if ( effect_x < -120 ) { effect_x = -16; effect_y += 21 };
	};
	
draw_set_alpha( 1 );