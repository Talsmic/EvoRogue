///draw_tooltip_party(player,party_member,x,y,showhealth,showweak,showextra);
/// @arg player
/// @arg party_member
/// @arg x
/// @arg y
/// @arg show_health
/// @arg show_weak
/// @arg show_extra
var player = argument0;
var party_member = argument1;
var X = argument2;
var Y = argument3;
var tt_show_health = argument4;
var tt_show_weakness = argument5;
var tt_show_extras = argument6;

//Pull from Database
var tt_name = player.Party_Name[party_member];
var tt_element = dbpull_creature_element(player.Party_Species[party_member]);
var tt_colour = find_colour( tt_element );
var tt_colour_dark = find_colour_dark( tt_element );
var tt_colour_body = c_darkgray;

//Find dimensions
var width = 106;
var height = 16;
switch ( tt_show_health ) {
	case 2: height += 8;
	case 1: height += 8;
	};
if ( tt_show_weakness ) {
	height += 20;
	};
 
//Snap to screen boundaries
if ( X + width > oGameController.Resolution_CompleteWidth ) { X = oGameController.Resolution_CompleteWidth - width };
if ( Y + height > oGameController.Resolution_CompleteHeight ) { Y = oGameController.Resolution_CompleteHeight - height };

//Draw Header Background
draw_set_font(ft_EvoTooltip_6_Bold);
draw_text_flatcolour(X+2, Y, tt_name, tt_colour_body, 1);
draw_text_flatcolour(X+3, Y, tt_name, tt_colour_body, 1);
draw_text_flatcolour(X+4, Y, tt_name, tt_colour_body, 1);
draw_text_flatcolour(X+2, Y+1, tt_name, tt_colour_body, 1);
draw_text_flatcolour(X+4, Y+1, tt_name, tt_colour_body, 1);
//Draw Box
draw_tilebox_cornerless(X,Y+4,width,8,spr_tooltipbox,tt_colour_body,1,0,0,1,1);
draw_colouredplane(X+1,Y+12,width-2,1,$020202,1);
draw_colouredplane(X+2,Y+12,width-4,1,tt_colour_dark,0.6);
draw_tilebox_cornerless(X,Y+13,width,height-13,spr_tooltipbox,tt_colour_body,1,1,1,0,0);
//Draw Header
draw_text_flatcolour(X+3, Y+2, tt_name, c_midgray, 1);
draw_text_flatcolour(X+3, Y+1, tt_name, c_white, 1);
var offset = 0;
//Draw Health
draw_set_font(ft_EvoTooltip_6);
draw_set_halign(fa_right);
switch ( tt_show_health ) {
	case 2:
		var ref_energy = floor( player.Party_Energy[party_member] );
		var max_energy = player.Party_MaxEnergy[party_member];
		var energy_size = ref_energy / max_energy * 100
		draw_set_colour(c_water_dark);
		draw_line_width(X+width*0.5-51,Y+25,X+width*0.5+49,Y+25,5);
		draw_set_colour(c_water);
		draw_line_width(X+width*0.5-51,Y+25,X+width*0.5-51+energy_size,Y+25,5);
		draw_text_outline(X+width*0.5+48,Y+21,string(ref_energy)+"/"+string(max_energy),c_white);
		offset += 8;
	case 1:
		var ref_health = floor( player.Party_Health[party_member] );
		var max_health = player.Party_MaxHealth[party_member];
		var health_size = ref_health / max_health * 100
		draw_set_colour(c_nature_dark);
		draw_line_width(X+width*0.5-51,Y+17,X+width*0.5+49,Y+17,5);
		draw_set_colour(c_nature);
		draw_line_width(X+width*0.5-51,Y+17,X+width*0.5-51+health_size,Y+17,5);
		draw_text_outline(X+width*0.5+48,Y+13,string(ref_health)+"/"+string(max_health),c_white);
		offset += 8;
	};
draw_set_halign(fa_left);