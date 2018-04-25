///draw_tooltip_skill(skill,x,y);
/// @arg skill
/// @arg x
/// @arg y
/*
	[Edited 24/4/2018]
	Draws the tooltip for the required skill at the location
*/

var skill = argument0;
var X = argument1; //mouse_x+2;
var Y = argument2; //mouse_y+10;

//Pull from Database
var tt_header = db_record_get("db_Skills",skill,"name");
var tt_header_c = find_colour( db_record_get("db_Skills",skill,"element") );
var tt_header_d = find_colour_dark( db_record_get("db_Skills",skill,"element") );
var tt_body = db_record_get("db_Skills",skill,"tooltip");
var tt_cost = real( db_record_get("db_Skills",skill,"cost") );
var tt_recharge = real(db_record_get("db_Skills",skill,"recharge"));

//Parse and find dimensions
draw_set_font(ft_EvoTooltipCondensed_6);
parse_text(tt_body,c_lightgray);
var width = parsed_text_width(160);
var height = parsed_text_height(160,9);
//Adjust Width
draw_set_font(ft_EvoTooltipBold_6);
if ( width < string_width(tt_header)+6 ) { width = string_width(tt_header)+6 };
if ( tt_cost > 0 and width < 80 ) { width = 80 };
if ( tt_recharge > 0 and width < 134 ) { width = 134 };
width += 0;
//Adjust Height
if ( tt_cost > 0 or tt_recharge > 0 ) { height += 12 };
height += 7;
//Correct x and y
if ( X + width > 480 ) { X = 480-width };
if ( Y + height > 270 ) { Y = 270-height };

//Draw Box
draw_blackbox_sharp(X,Y+4,width,8,0,0,1,1);
draw_set_alpha(0.8);
draw_line_color(X,Y+12,X+width-2,Y+12,c_black,c_black);
draw_set_alpha(0.3);
draw_line_color(X+1,Y+12,X+width-3,Y+12,tt_header_d,tt_header_d);
draw_set_alpha(1);
if ( tt_cost > 0 or tt_recharge > 0 ) { 
	draw_blackbox_sharp(X,Y+13,width,10,1,1,1,1);
	draw_set_alpha(0.8);
	draw_line_color(X,Y+23,X+width-2,Y+23,c_black,c_black);
	draw_set_alpha(0.3);
	draw_line_color(X+1,Y+23,X+width-3,Y+23,tt_header_d,tt_header_d);
	draw_set_alpha(1);
	draw_blackbox_sharp(X,Y+24,width,height-25,1,1,0,0);
	} 
else {
	draw_blackbox_sharp(X,Y+13,width,height-13,1,1,0,0);
	};
//Draw Header
draw_set_font(ft_EvoTooltipBold_6);
draw_set_colour(c_black);
draw_text(X+2, Y, tt_header);
draw_text(X+3, Y, tt_header);
draw_text(X+4, Y, tt_header);
draw_text(X+2, Y+1, tt_header);
draw_text(X+4, Y+1, tt_header);
draw_set_colour(tt_header_d);
draw_text(X+3, Y+2, tt_header);
draw_set_colour(tt_header_c);
draw_text(X+3, Y+1, tt_header);
//Draw Costs
draw_set_font(ft_EvoTooltipCondensed_6);
var offset = 0;
if ( tt_cost > 0 ) {
    draw_set_colour(c_fortitude);
    draw_text(X+3, Y+13,string(string(tt_cost)+" Energy"));
	offset = 11;
    };
if ( tt_recharge > 0 ) {
    draw_set_colour(c_power);
    draw_set_halign(fa_right);
    draw_text(X+width-3, Y+13, string(string(tt_recharge)+" Round Recharge"));
    draw_set_halign(fa_left);
    offset = 11;
	};
//Draw Body
draw_set_font(ft_EvoTooltipCondensed_6);
draw_set_colour(c_gray);
draw_parsed_text(X+3,Y+13+offset,160,9);
