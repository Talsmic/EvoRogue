/// @description Old Version

/* LEGACY CODE

//Draw Boxes
var _y = -15;
draw_blackbox_sharp(0,_y,80,15,1,1,1,1);
draw_sprite(spr_blackboxcaps16,0,80,_y-1);
draw_blackbox_sharp(400,_y,80,15,1,1,1,1);
draw_sprite(spr_blackboxcaps16,2,368,_y-1);
var icons_drawn = 0;
for ( i=1 ; i<=global.Default_PartySize ; i++ ) {
	if ( global.party_status[1,i] > 1 ) {	icons_drawn++	};
	};
if ( icons_drawn < global.battle_creaturecap[1] ) { icons_drawn = global.battle_creaturecap[1] };
if ( icons_drawn ) { draw_blackbox_sharp(0,_y+15,32,icons_drawn*29+2,1,1,1,0) };
//draw_sprite_ext(spr_blackboxcaps32,0,0,_y+16+icons_drawn*29,1,-1,270,c_white,1);
icons_drawn = 0;
for ( i=1 ; i<=global.Default_PartySize ; i++ ) {
	if ( global.party_status[2,i] > 1 ) {	icons_drawn++	};
	};
if ( icons_drawn < global.battle_creaturecap[2] ) { icons_drawn = global.battle_creaturecap[2] };
if ( icons_drawn ) { draw_blackbox_sharp(448,_y+16,32,icons_drawn*29+2,1,1,0,1) };
//draw_sprite_ext(spr_blackboxcaps32,0,480,_y+16+icons_drawn*29,1,1,270,c_white,1);

//Draw Names
draw_set_font(ft_EvoSmallcaps_6);
draw_set_color(c_white);
draw_text(4,_y+3,Player.Player_Name);
draw_set_halign(fa_right);
draw_text(476,_y+3,global.opponent_name);
draw_set_halign(fa_left);

var i;
var state;
var stored_tooltip = 0;
var stored_tooltip_p = 1;
//Draw P1 Icons
icons_drawn = 0;
for ( i=1 ; i<=global.Default_PartySize ; i++ ) {
	if ( global.party_status[1,i] > 1 ) {
		state = 0;
		if ( global.party_status[1,i] == eCreatureState.defeated ) { state = 6 };
		if ( global.party_status[1,i] == eCreatureState.active ) { 
			draw_sprite_ext(spr_pointerarrow,0,32,_y+30+icons_drawn*29,1,-1,270,c_white,1);
			};		
		if ( point_in_rectangle( mouse_x, mouse_y, 2, _y+15+icons_drawn*29, 30, _y+43+icons_drawn*29 )) { stored_tooltip = i; stored_tooltip_p = 1 };
		draw_icon_creature(16,_y+29+icons_drawn*29,24,global.party_species[1,i],state);
		icons_drawn++;
		};
	};
for ( i=icons_drawn ; i<global.battle_creaturecap[1] ; i++ ) {
	draw_sprite_part_ext(spr_icon_creature_32,21,4,6,24,24,4,_y+18+icons_drawn*29,1,1,c_white,1);
    draw_sprite_ext(spr_icon_frame_24x24,0,16,_y+29+icons_drawn*29,1,1,0,c_lightgray,1);
	icons_drawn++;
	};
//Draw P2 Icons
icons_drawn = 0;
for ( i=1 ; i<=global.Default_PartySize ; i++ ) {
	if ( global.party_status[2,i] > 1 ) {
		state = 0;
		if ( global.party_status[2,i] == eCreatureState.defeated ) { state = 6 };
		if ( global.party_status[2,i] == eCreatureState.active ) { 
			draw_sprite_ext(spr_pointerarrow,0,448,_y+30+icons_drawn*29,1,1,270,c_white,1);
			};		
		if ( point_in_rectangle( mouse_x, mouse_y, 450, _y+15+icons_drawn*29, 478, _y+43+icons_drawn*29 )) { stored_tooltip = i; stored_tooltip_p = 2 };
		draw_icon_creature(464,_y+29+icons_drawn*29,24,global.party_species[2,i],state);
		icons_drawn++
		};
	};
for ( i=icons_drawn ; i<global.battle_creaturecap[2] ; i++ ) {
	draw_sprite_part_ext(spr_icon_creature_32,21,4,6,24,24,452,_y+18+icons_drawn*29,1,1,c_white,1);
    draw_sprite_ext(spr_icon_frame_24x24,0,464,_y+29+icons_drawn*29,1,1,0,c_lightgray,1);
	icons_drawn++;
	};
	
//Draw Tooltip
if ( stored_tooltip ) { draw_tooltip_party(stored_tooltip_p,stored_tooltip,2,1,0) };