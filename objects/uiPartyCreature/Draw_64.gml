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

//=[Primary Panel]==============================================================
ui_tabset_draw(1);
ui_databox_draw(2);
if ( Tabset_Pointer[1] == 2 ) {
	ui_listbox_draw();
	};
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

draw_set_halign(fa_left);
draw_cornercross(oGlobalController.Resolution_CompleteWidth,0,spr_cornerX,eIconState.detectGUI);

