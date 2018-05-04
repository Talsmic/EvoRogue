/*Focus Level*/if (find_focus() > 3) { return 0 };
var stored_tt = 0;

party_condense(1);
//=[Creature Selection]===============================================
//Draw Box
var boxsize = 9+global.gps_partysize*29;
draw_blackbox(x-4,y-4,boxsize,24);
draw_set_font(ft_EvoSmallcaps_6);
draw_blackbox_sharp(x-4,y-34,string_width(global.player_name)+12,30,1,0,1,1);
draw_text_outline(x+4,y-30,global.player_name,c_white);
//Draw Icons
var state;
var panel = instance_nearest(x,y,ui_creatureinfopanel);
var i;
for ( i=1 ; i<=global.gps_partysize ; i++ ) {
	state = 0;
	if ( point_in_rectangle( mouse_x, mouse_y, x+i*29-27, y-17, x+i*29, y+17 )) {	
		state = 2;
		stored_tt = i;
		};
	if ( panel != noone and panel.ref_party == i) {	state = 2	};
	draw_icon_creature(x+i*29-12,y,24.32,global.party_species[ref_player, i],state);
	};
//Draw Buttons
draw_blackbox(372,y-4,80,24);
draw_blackbox(372,y-4,80,24);
draw_blackbox(454,y-4,24,24);
draw_blackbox(454,y-4,24,24);
draw_set_halign(fa_center); 
draw_set_font(ft_EvoTooltipBold_6);
draw_set_colour(c_white);
draw_text(412,y-2,"Change\nCreatures");
if ( point_in_rectangle( mouse_x, mouse_y, 372, y-4, 452, y+20 )) {
	draw_set_colour(c_orange);
	draw_text(412,y-2,"Change\nCreatures");
	};
draw_set_halign(fa_left); 
if ( stored_tt ) { draw_tooltip_party(1,stored_tt,1,1,0) };
	
//====================================================================