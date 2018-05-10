///draw_tooltip_skill(skill,x,y);
/// @arg skill
/// @arg x
/// @arg y
var skill = argument0;
var X = argument1; //global.gui_mouse_x+2;
var Y = argument2; //global.gui_mouse_y+10;

//Pull from Database
var tt_header = pullstring("db_Strings_Skills","name",skill);
var tt_colour = find_colour( db_record_get("db_Skills",skill,"element") );
var tt_colour_dark = find_colour_dark( db_record_get("db_Skills",skill,"element") );
var tt_colour_body = c_darkgray;
var tt_body = pullstring("db_Strings_Skills","tooltip",skill);
var tt_cost = real( db_record_get("db_Skills",skill,"cost") );
var tt_recharge = real( db_record_get("db_Skills",skill,"recharge") );

//Parse and find dimensions
draw_set_font( ft_EvoTooltip_6_Condensed );
parse_text( tt_body,c_lightgray );
var width = parsed_text_width(160);
var height = parsed_text_height(160,9);
//Adjust Width
draw_set_font(ft_EvoTooltip_6_Bold);
if ( width < string_width(tt_header)+6 ) { width = string_width(tt_header)+6 };
if ( tt_cost > 0 and width < 80 ) { width = 80 };
if ( tt_recharge > 0 and width < 134 ) { width = 134 };
width += 0;
//Adjust Height
if ( tt_cost > 0 or tt_recharge > 0 ) { height += 12 };
height += 7;
//Snap to screen boundaries
if ( X + width > oGlobalController.Resolution_CompleteWidth ) { X = oGlobalController.Resolution_CompleteWidth - width };
if ( Y + height > oGlobalController.Resolution_CompleteHeight ) { Y = oGlobalController.Resolution_CompleteHeight - height };

//Draw Header Background
draw_set_font(ft_EvoTooltip_6_Bold);
draw_text_flatcolour(X+2, Y, tt_header, tt_colour_body, 1);
draw_text_flatcolour(X+3, Y, tt_header, tt_colour_body, 1);
draw_text_flatcolour(X+4, Y, tt_header, tt_colour_body, 1);
draw_text_flatcolour(X+2, Y+1, tt_header, tt_colour_body, 1);
draw_text_flatcolour(X+4, Y+1, tt_header, tt_colour_body, 1);
//Draw Box
draw_tilebox_cornerless(X,Y+4,width,8,spr_tooltipbox,tt_colour_body,1,0,0,1,1);
draw_colouredplane(X+1,Y+12,width-2,1,$020202,1);
draw_colouredplane(X+2,Y+12,width-4,1,tt_colour_dark,0.6);
if ( tt_cost > 0 or tt_recharge > 0 ) { 
	draw_tilebox_cornerless(X,Y+13,width,10,spr_tooltipbox,tt_colour_body,1,1,1,1,1);
	draw_colouredplane(X+1,Y+23,width-2,1,$020202,1);
	draw_colouredplane(X+2,Y+23,width-4,1,tt_colour_dark,0.6);
	draw_tilebox_cornerless(X,Y+24,width,height-25,spr_tooltipbox,tt_colour_body,1,1,1,0,0);
	} 
else {
	draw_tilebox_cornerless(X,Y+13,width,height-13,spr_tooltipbox,tt_colour_body,1,1,1,0,0);
	};
//Draw Header
draw_text_flatcolour(X+3, Y+2, tt_header, tt_colour_dark, 1);
draw_text_flatcolour(X+3, Y+1, tt_header, tt_colour, 1);
//Draw Costs
draw_set_font(ft_EvoTooltip_6_Condensed);
var offset = 0;
if ( tt_cost > 0 ) {
    draw_text_flatcolour(X+3, Y+13,string(string(tt_cost)+" "+term("EnergyCost")),c_fortitude,1);
	offset = 11;
    };
if ( tt_recharge > 0 ) {
    draw_set_halign(fa_right);
    draw_text_flatcolour(X+width-3, Y+13, string(string(tt_recharge)+" "+term("Recharge")),c_power,1);
    draw_set_halign(fa_left);
    offset = 11;
	};
//Draw Body
draw_set_font(ft_EvoTooltip_6_Condensed);
draw_parsed_text(X+3,Y+13+offset,160,9);
