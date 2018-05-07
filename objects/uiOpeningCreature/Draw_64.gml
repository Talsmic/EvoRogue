/* LEGACY CODE

//Draw Background
draw_sprite_ext(bg_screen,0,0,0,1,1,0,c_white,0.5);
//Draw Ruleset
draw_sprite_ext(spr_battlebanner,banner,x,y,1,1,0,banner_colour,.8);
draw_set_halign(fa_center); 
draw_set_font(ft_EvoLarge_12);
draw_text_outline_coloured(x,y-35,text_ruleset,banner_colour2,banner_colour3);
draw_text_outline_coloured(x,y-18,text_title,banner_colour2,banner_colour3);
draw_text_outline_coloured(240,tp_y,"vs",banner_colour2,banner_colour3);
draw_text_color(x,y-18,text_title,c_white,c_white,c_gray,c_gray,0.25);
draw_set_font(ft_EvoSmallcaps_6);
draw_text_outline_coloured(x,y+10,text_desc,c_white,banner_colour);
draw_set_halign(fa_left); 
var stored_tooltip = 0;
var stored_tooltip_p = 1;

//=[Creature Selection]===============================================
//Draw Sprite
if ( global.player_sprite ) { draw_sprite_ext(spr_pktrainersprites,global.player_sprite,60,tp_y-10,-1,1,0,c_white,1) };
var ref_sprite = asset_get_index(db_record_get("db_Creatures",Player.Party_Species[selection],"sprite"));
draw_sprite_ext(ref_sprite,0,90,tp_y-8,1,1,0,c_white,1);
//Draw Box
draw_set_font(ft_EvoLarge_12);
player_teamsize = 0;
var i;
for ( i=1 ; i<=global.Default_PartySize ; i++ ) {
	if ( global.party_status[1, i] ) { player_teamsize++ };
	};
var boxsize = 6+player_teamsize*25;
draw_blackbox_sharp(-4+team_preview_offset,tp_y-4,boxsize,24,0,1,0,1);
draw_sprite(spr_blackboxcaps24,0,-4+team_preview_offset+boxsize,tp_y-4);
draw_text_outline(4+team_preview_offset,tp_y-36,Player.Player_Name,c_white);
//Draw Icons
var state;
for ( i=1 ; i<=global.Default_PartySize ; i++ ) {
	if ( global.party_status[1, i] == eCreatureState.nonexistant ) { continue };
	state = 0;
	if ( point_in_rectangle( mouse_x, mouse_y, team_preview_offset+i*25-25, tp_y-20, team_preview_offset+i*25-2, tp_y+17 )) {	
		state = 2;
		stored_tooltip = i;
		};
		//Defeated
	if ( global.party_status[1, i] == eCreatureState.defeated ) { state = 6 };	
	if ( selection == i ) {	state = 2	};
	draw_icon_creature(team_preview_offset+i*25-12,tp_y,20.28,Player.Party_Species[i],state);
	};
//Draw Button
var buttonshade = c_fire;
if ( point_in_rectangle( mouse_x,mouse_y,0,tp_y+21,120,tp_y+45 )) {	buttonshade = c_fire_dark	};
draw_colourbox(-4,tp_y+21,124,24,buttonshade);
draw_set_halign(fa_center); 
draw_set_font(ft_EvoSmallcaps_6);
draw_text(60,tp_y+28,"Use "+global.party_name[1,selection]);
//====================================================================

//=[Opponent]=========================================================
//Draw Box
if ( global.opponent_sprite ) { draw_sprite_ext(spr_pktrainersprites,global.opponent_sprite,420,tp_y-10,1,1,0,c_white,1) };
draw_set_font(ft_EvoLarge_12);
draw_set_halign(fa_right);
draw_text_outline(476+team_preview_offset,tp_y-36,global.opponent_name,c_white);
draw_set_halign(fa_left);
opponent_teamsize = 0;
for ( i=1 ; i<=global.Default_PartySize ; i++ ) {
	if ( global.party_status[2, i] ) { opponent_teamsize++ };
	};
boxsize = 6+opponent_teamsize*25;
draw_blackbox_sharp(484-boxsize-team_preview_offset,tp_y-4,boxsize,24,1,1,1,1);
draw_sprite_ext(spr_blackboxcaps24,0,484-team_preview_offset-boxsize,tp_y+20,-1,-1,0,c_white,1);
//Draw Icons
var state;
for ( i=1 ; i<=global.Default_PartySize ; i++ ) {
	if ( global.party_status[2, i] == eCreatureState.nonexistant ) { continue };
	if ( point_in_rectangle( mouse_x, mouse_y, 479-team_preview_offset-opponent_teamsize*25+i*25-25, tp_y-20, 479-team_preview_offset-opponent_teamsize*25+i*25-2, tp_y+17 )) {	
		stored_tooltip = i;
		stored_tooltip_p = 2;
		};
	draw_icon_creature(479-team_preview_offset-opponent_teamsize*25+i*25-12,tp_y,20.28,global.party_species[2, i],0);
	};
//====================================================================

//Draw Tooltip
if ( stored_tooltip ) { draw_tooltip_party(stored_tooltip_p,stored_tooltip,2,1,0) };