//FadeScreen
draw_screenfill(c_white,0.7);

//=[Adjust to Screen]===========================================================
var x_stats = GUI_X+32;
var y_stats = GUI_Y+148;
var x_name = GUI_X+136;
var y_name = GUI_Y+64;
var x_main = GUI_X+148;
var y_main = GUI_Y+48;
//==============================================================================

//=[Side: Attributes Panel]=====================================================
ui_databox_draw(1);
//==============================================================================

//=[Name Plate]=======================================================
var ref_health = floor(Player.Party_Health[Party_Member]);
var ref_energy = floor(Player.Party_Energy[Party_Member]);
var max_health = Player.Party_MaxHealth[Party_Member];
var max_energy = Player.Party_MaxEnergy[Party_Member];
var typeA_c = find_colour(dbpull_creature_element(Player.Party_Species[Party_Member]));
var health_size = ref_health / max_health * 100;
var energy_size = ref_energy / max_energy * 100;
//Draw Background Box
draw_set_halign(fa_right);
	
//Draw Background Box
draw_sprite_ext(spr_levelorb,0,x_name,y_name,-1,1,0,c_white,1);
draw_sprite_ext(spr_levelorb,1,x_name,y_name,-1,1,0,typeA_c,1);
//Draw Name
draw_set_font(ft_EvoSmallcaps_6);
draw_text_outline(x_name-7,y_name-18,Databox_Name,c_white);
draw_text_outline(x_name-8,y_name-18,Databox_Name,c_white);
//Draw Level
draw_set_font(ft_EvoTooltip_6);
draw_set_halign(fa_center);
draw_text_outline(x_name,y_name-4,Player.Party_Level[Party_Member],typeA_c);
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
	var level_check = dbpull_creature_skillset(Player.Party_Species[Party_Member]);
	draw_blackbox_sharp(x_main,y_main,300,50,0,0,1,1);
	draw_blackbox_sharp(x_main,y_main+51,300,49,1,1,1,1);
	draw_blackbox_sharp(x_main,y_main+101,300,49,1,1,1,0);
	draw_colouredplane(x_main+1,y_main+50,298,1,c_darkgray,0.8);
	draw_colouredplane(x_main+1,y_main+100,298,1,c_darkgray,0.8);
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
	var type = dbpull_creature_element(Player.Party_Species[Party_Member]);
	var type_c = find_colour(type);
	draw_text(x_main+4,y_main+14,"Element: ");
	draw_text_colour(x_main+54,y_main+14,type,type_c,type_c,type_c,type_c,1);
	//Skills
	draw_set_font(ft_EvoTooltipBold_6);
	draw_text_outline(x_main+4,y_main+48,"Skills",c_white);
	draw_text_outline(x_main+3,y_main+48,"Skills",c_white);
	draw_text_outline(x_main+4,y_main+98,"Passives",c_white);
	draw_text_outline(x_main+3,y_main+98,"Passives",c_white);
	var state = 0;
	var icon_start = x_main+25;
	draw_set_halign(fa_center);
	//Core Skills
	/*
	for ( var i=1 ; i<=4 ; i++ ) {
		//Find Skill
		var focus_skill = i;
		if ( focus_skill ) {
			state = 1;
			//Mouseover
			if ( point_in_rectangle( mouse_x, mouse_y, icon_start-20, y_main+60, icon_start+8, y_main+95 ) ) {
				state = 2;
				stored_tooltip = focus_skill;			
				};
			if ( Player.Party_Level[Party_Member] < level_check[i, 2] ) { state = 6 };
			//Draw
			draw_icon_dbskill(icon_start-6,y_main+79,24.32,focus_skill,state);
			if ( Player.Party_Level[Party_Member] < level_check[i, 2] ) { 
				draw_sprite(spr_iconlock,0,icon_start-6,y_main+79); 
				draw_text_outline_coloured(icon_start-6,y_main+78,string(level_check[i, 2]),c_lightgray,c_darkgray); 
			} else {
				draw_sprite(spr_iconlock,0,icon_start-6,y_main+93);
				};
			icon_start += 30;
			};
		};*/
	
	//Spacer
	draw_sprite(spr_spacer_32,0,icon_start-18,y_main+79);
	
	//Optional Skills
	var req_level = 0;
	var icon_x = icon_start;
	for ( i=1 ; i<=5 ; i++ ) {
		//Find Skill
		var focus_skill = i;
		state = 1;
		//Mouseover
		if ( point_in_rectangle( mouse_x, mouse_y, icon_x-14, y_main+60, icon_x+12, y_main+95 ) ) {
			state = 2;
			stored_tooltip = focus_skill;			
			};
		if ( Player.Party_Level[Party_Member] < req_level ) { state = 6 };
		//Draw
		draw_icon_dbskill(icon_x,y_main+79,24.32,focus_skill,state);
		if ( Player.Party_Level[Party_Member] < req_level ) { 
			draw_sprite(spr_iconlock,0,icon_x,y_main+79); 
			draw_text_outline_coloured(icon_x,y_main+78,string(req_level),c_lightgray,c_darkgray); 
			};
		};
	};
	
draw_set_halign(fa_left);
draw_cornercross(oGlobalController.Resolution_CompleteWidth,0,spr_cornerX,eIconState.detectGUI);

