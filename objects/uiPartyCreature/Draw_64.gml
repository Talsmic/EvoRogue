//FadeScreen
draw_screenfill(c_white,0.5);

//=[Sprite]===========================================================
var shadow = dbpull_creature_shadow(Player.Party_Species[Party_Member]);
var sprite = dbpull_creature_sprite(Player.Party_Species[Party_Member]);
var name = Player.Party_Name[Party_Member]
var s_name = db_record_get("db_Creatures",Player.Party_Species[Party_Member],"name");
//Draw Sprite
draw_sprite(spr_shadows,shadow,88,138);
draw_sprite(sprite,0,88,138);
//Draw Species
draw_set_font(ft_EvoTooltipBold_6);
draw_set_halign(fa_right);
draw_text_colour(144,138,s_name,c_black,c_black,c_black,c_black,0.75);
draw_set_halign(fa_left); 
//====================================================================
/*
//=[Stat Panel]=======================================================
var __stats = 11;
var stats;
//Find Stats
stats = party_update_attributes(Player,Party_Member);
//Draw Box and Lines
draw_blackbox(x_stats,y_stats,112,64);
draw_blackbox(x_stats+4,y_stats+8,104,6);
draw_blackbox(x_stats+4,y_stats+8+__stats,104,6);
draw_blackbox(x_stats+4,y_stats+8+__stats*2,104,6);
draw_blackbox(x_stats+4,y_stats+8+__stats*3,104,6);
draw_blackbox(x_stats+4,y_stats+8+__stats*4,104,6);
//Draw Stat Names
draw_set_font(ft_EvoTooltipBold_6);
draw_set_colour(c_white);
draw_text(x_stats+8,y_stats+4,"Power");
draw_text(x_stats+8,y_stats+4+__stats,"Fortitude");
draw_text(x_stats+8,y_stats+4+__stats*2,"Speed");
draw_text(x_stats+8,y_stats+4+__stats*3,"Recovery");
draw_text(x_stats+8,y_stats+4+__stats*4,"Potency");
//Draw Stat Values
draw_set_font(ft_EvoTooltipBold_6);
draw_set_halign(fa_right);
draw_text(x_stats+105,y_stats+4,real(stats[1]));
draw_text(x_stats+105,y_stats+4+__stats,real(stats[2]));
draw_text(x_stats+105,y_stats+4+__stats*2,real(stats[3]));
draw_text(x_stats+105,y_stats+4+__stats*3,real(stats[4]));
draw_text(x_stats+105,y_stats+4+__stats*4,real(stats[5]));
draw_set_halign(fa_left); 
//Draw Stat Star
switch (global.party_nature[Player,ref_party]) {
	default: 	var c_stat = c_white;		break;
	case 1:		var c_stat = c_power;		break;
	case 2:		var c_stat = c_fortitude;	break;
	case 3:		var c_stat = c_speed;		break;
	case 4:		var c_stat = c_recovery;	break;
	case 5:		var c_stat = c_potency;		break;
	};
draw_sprite_ext(spr_statstar,0,x_stats+8,y_stats-9,1,1,0,c_stat,1);
//====================================================================

//=[Name Plate]=======================================================
var ref_health = floor(global.party_health[Player, ref_party]);
var ref_energy = floor(global.party_energy[Player, ref_party]);
var max_health = party_checkmaxhealth(Player, ref_party);
var max_energy = global.bal_energy_base;
var typeA_c = find_elementcolour(db_record_get("db_Creatures",Player.Party_Species[ ref_party],"elementA"));
var typeB_c = find_elementcolour(db_record_get("db_Creatures",Player.Party_Species[ ref_party],"elementB"));
var health_size = ref_health / max_health * 100;
var energy_size = ref_energy / max_energy * 100;
//Draw Background Box
draw_set_halign(fa_right);
	
//Draw Background Box
draw_sprite_ext(spr_levelorb,0,x_name,y_name,-1,1,0,c_white,1);
draw_sprite_ext(spr_levelorb,1,x_name,y_name,-1,1,0,typeA_c,1);
if ( typeB_c != c_white ) { draw_sprite_ext(spr_levelorb,2,x_name,y_name,-1,1,0,typeB_c,1); };
//Draw Name
draw_set_font(ft_EvoSmallcaps_6);
draw_text_outline(x_name-7,y_name-18,name,c_white);
draw_text_outline(x_name-8,y_name-18,name,c_white);
//Draw Level
draw_set_font(ft_EvoTooltip_6);
draw_set_halign(fa_center);
draw_text_outline(x_name,y_name-4,global.party_level[Player,ref_party],typeA_c);
draw_set_halign(fa_right); 
//Draw Health
draw_sprite_part_ext(spr_healthbar,0,0,0,health_size,7,x_name-11,y_name-6,-1,1,c_white,1);
if ( health_size > 0 ) { draw_sprite_ext(spr_healthbar,1,x_name-8,y_name-6,-1,1,0,c_white,1) };
if ( point_in_rectangle( mouse_x, mouse_y, x_name-111, y_name-6, x_name-8, y_name+1 ) ) {
	draw_set_font(ft_EvoTooltip_6);
	draw_text_outline(x_name-14,y_name-7,string(ref_health)+"/"+string(max_health),c_white)
	};
//Draw Energy
draw_sprite_part_ext(spr_energybar,0,0,0,energy_size,2,x_name-11,y_name+3,-1,1,c_white,1);
draw_sprite_part_ext(spr_energybar,0,0,2,energy_size-1,2,x_name-11,y_name+5,-1,1,c_white,1);
if ( energy_size > 0 ) { draw_sprite_ext(spr_energybar,1,x_name-8,y_name+3,-1,1,0,c_white,1) };
if ( point_in_rectangle( mouse_x, mouse_y, x_name-111, y_name+2, x_name-8, y_name+6 ) ) {
	draw_set_font(ft_EvoTooltip_6);
	draw_text_outline(x_name-14,y_name+1,string(ref_energy)+"/"+string(max_energy),c_white)
	};
		
draw_set_halign(fa_left);
//====================================================================

//=[Main Box]=========================================================
draw_blackbox_sharp(x_main+282,y_main+151,14,13,0,0,0,0);
draw_set_font(ft_EvoTooltipBold_6);
draw_set_colour(c_white);	
if ( point_in_rectangle( mouse_x, mouse_y, x_main+282, y_main+151, x_main+296, y_main+164 ) ) {
	draw_set_colour(c_orange);
	};
draw_text(x_main+286,y_main+153,"X");
//-[Mode 1: Status]---------------------------------------------------
if (mode == 1) {
	//Update Skills
	party_coreskills(Player, ref_party);
	var level_check = creature_skillslist_core(global.party_species[1, ref_party]);
	draw_blackbox_sharp(x_main,y_main,300,50,0,0,1,1);
	draw_blackbox_sharp(x_main,y_main+51,300,49,1,1,1,1);
	draw_blackbox_sharp(x_main,y_main+101,300,49,1,1,1,0);
	draw_sprite_stretched_ext(spr_pixel,0,x_main+1,y_main+50,298,1,c_darkgray,0.8);
	draw_sprite_stretched_ext(spr_pixel,0,x_main+1,y_main+100,298,1,c_darkgray,0.8);
	//Draw Tabs
	draw_blackbox_sharp(x_main,y_main+150,60,14,1,1,0,0);
	draw_blackbox_sharp(x_main+62,y_main+151,60,12,1,1,0,0);
	draw_blackbox_sharp(x_main+124,y_main+151,60,12,1,1,0,0);
	draw_set_halign(fa_center); 
	draw_set_font(ft_EvoTooltipBold_6);
	draw_set_colour(c_white);
	draw_text(x_main+30,y_main+152,"Status");
	draw_set_colour(c_gray); 
	draw_text(x_main+92,y_main+152,"Skills");
	draw_text(x_main+154,y_main+152,"Traits");
	draw_set_halign(fa_left); 
	//Draw Type
	var typeA = db_record_get("db_Creatures",ref_selection,"elementA");
	var typeB = db_record_get("db_Creatures",ref_selection,"elementB");
	var typeC = db_record_get("db_Creatures",ref_selection,"family");
	var type_c = find_elementcolour(typeA);
	draw_text(x_main+4,y_main+4,"Family: ");
	draw_text_colour(x_main+54,y_main+4,typeC,c_orange,c_orange,c_orange,c_orange,1);
	draw_text(x_main+4,y_main+14,"Element: ");
	draw_text_colour(x_main+54,y_main+14,typeA,type_c,type_c,type_c,type_c,1);
	if ( typeB != "" ) {
		type_c = find_elementcolour(typeB);
		draw_text_colour(x_main+55+string_width(typeA),y_main+14,"|",c_white,c_white,c_white,c_white,0.2);
		draw_text_colour(x_main+56+string_width(typeA+"|"),y_main+14,typeB,type_c,type_c,type_c,type_c,1);
		};
	//Skills
	draw_set_font(ft_EvoTooltipBold_6);
	draw_text_outline(x_main+4,y_main+48,"Skills",c_white);
	draw_text_outline(x_main+3,y_main+48,"Skills",c_white);
	draw_text_outline(x_main+4,y_main+98,"Passives",c_white);
	draw_text_outline(x_main+3,y_main+98,"Passives",c_white);
	var state = 0;
	icon_start = x_main+25;
	draw_set_halign(fa_center);
	//Core Skills
	for ( i=1 ; i<=4 ; i++ ) {
		//Find Skill
		switch ( i ) {
			case 1:		focus_skill = global.party_skillA[1, ref_party];	break;
			case 2:		focus_skill = global.party_skillB[1, ref_party];	break;
			case 3:		focus_skill = global.party_skillC[1, ref_party];	break;
			case 4:		focus_skill = global.party_skillD[1, ref_party];	break;
			};
		if ( focus_skill ) {
			state = 1;
			//Mouseover
			if ( point_in_rectangle( mouse_x, mouse_y, icon_start-20, y_main+60, icon_start+8, y_main+95 ) ) {
				state = 2;
				stored_tooltip = focus_skill;			
				};
			if ( global.party_level[1, ref_party] < level_check[i, 2] ) { state = 6 };
			//Draw
			draw_icon_skill(icon_start-6,y_main+79,24.32,focus_skill,state);
			if ( global.party_level[1, ref_party] < level_check[i, 2] ) { 
				draw_sprite(spr_iconlock,0,icon_start-6,y_main+79); 
				draw_text_outline_coloured(icon_start-6,y_main+78,string(level_check[i, 2]),c_lightgray,c_darkgray); 
			} else {
				draw_sprite(spr_iconlock,0,icon_start-6,y_main+93);
				};
			icon_start += 30;
			};
		};
	
	//Spacer
	draw_sprite(spr_spacer_32,0,icon_start-18,y_main+79);
	
	//Optional Skills
	var req_level = 0;
	var icon_x = icon_start;
	for ( i=1 ; i<=5 ; i++ ) {
		//Find Skill
		switch ( i ) {
			case 1:		focus_skill = global.party_skill1[1, ref_party];	req_level = 0;	break;
			case 2:		focus_skill = global.party_skill2[1, ref_party];	req_level = 0;	break;
			case 3:		focus_skill = global.party_skill3[1, ref_party];	req_level = 3;	break;
			case 4:		focus_skill = global.party_skill4[1, ref_party];	req_level = 5;	break;
			case 5:		focus_skill = global.party_skill5[1, ref_party];	req_level = 7;	break;
			};
		state = 1;
		//Mouseover
		if ( point_in_rectangle( mouse_x, mouse_y, icon_x-14, y_main+60, icon_x+12, y_main+95 ) ) {
			state = 2;
			stored_tooltip = focus_skill;			
			};
		if ( global.party_level[1, ref_party] < req_level ) { state = 6 };
		//Draw
		draw_icon_skill(icon_x,y_main+79,24.32,focus_skill,state);
		if ( global.party_level[1, ref_party] < req_level ) { 
			draw_sprite(spr_iconlock,0,icon_x,y_main+79); 
			draw_text_outline_coloured(icon_x,y_main+78,string(req_level),c_lightgray,c_darkgray); 
			};
		*/

draw_cornercross(oGlobalController.Resolution_CompleteWidth,0,spr_cornerX,eIconState.detectGUI);

