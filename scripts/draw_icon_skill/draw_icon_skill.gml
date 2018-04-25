///draw_icon_skill(x,y,size,skill,state);
/// @arg x
/// @arg y
/// @arg size
/// @arg skill
/// @arg state
/*
	[Edited 24/4/2018]
	Draws the icon for the required skill at the provided location
*/
var X = argument0;
var Y = argument1;
var icon_size = argument2;
var icon_skill = argument3;
var icon_state = floor(argument4);
var icon_recharge = round(10*frac(argument4));

//Pull from Database
if ( icon_skill ) {
	var icon = db_record_get("db_Skills",icon_skill,"icon");
	var icon_colour = find_colour(db_record_get("db_Skills",icon_skill,"element"));
} else {
	var icon = 0;
	var icon_colour = c_lightgray;	
	};

//State Adjustments
var offset = 0;
switch ( icon_state ) {
	case enum_iconstate.disabled:
		icon_colour = c_darkgray;
		break;
	case enum_iconstate.enabled:
	case enum_iconstate.mouseover:
		offset = -1;
		break;
	case enum_iconstate.disabled_recharge:
		icon_colour = c_gray;
		break;
	case enum_iconstate.disabled_energy:
		icon_colour = c_gray;
		break;
	};
	
//Draw
switch ( icon_size ) {
	//32x32
	case 32:
		draw_sprite_ext(spr_icon_skill_32,icon,X,Y+offset,1,1,0,icon_colour,1);
        draw_sprite_ext(spr_icon_frame_32x32,icon_state,X,Y,1,1,0,icon_colour,1);
		if ( icon_recharge ) {
			draw_set_font(ft_EvoLarge_12);
			draw_set_halign(fa_center);
			draw_text_outline_coloured(X+1,Y-10,string(icon_recharge),c_lightgray,c_darkgray);
			draw_set_halign(fa_left);
			};
		break;
	//24x24
	case 24:
		draw_sprite_part_ext(spr_icon_skill_32,0,5,5,24,24,X-12,Y-11+offset,1,1,icon_colour,1);
		draw_sprite_part_ext(spr_icon_skill_24,icon,1,1,22,22,X-11,Y-10+offset,1,1,icon_colour,1);
        draw_sprite_ext(spr_icon_frame_24x24,icon_state,X,Y,1,1,0,icon_colour,1);
		if ( icon_recharge ) {
			draw_set_font(ft_EvoLarge_12);
			draw_set_halign(fa_center);
			draw_text_outline_coloured(X+1,Y-10,string(icon_recharge),c_lightgray,c_darkgray);
			draw_set_halign(fa_left);
			};
		break;
	//24x32
	case 24.32:
		draw_sprite_part_ext(spr_icon_skill_32,0,5,0,24,32,X-12,Y-16+offset,1,1,icon_colour,1);
		draw_sprite_part_ext(spr_icon_skill_32,icon,5,0,22,32,X-11,Y-16+offset,1,1,icon_colour,1);
        draw_sprite_ext(spr_icon_frame_24x32,icon_state,X,Y,1,1,0,icon_colour,1);
		if ( icon_recharge ) {
			draw_set_font(ft_EvoLarge_12);
			draw_set_halign(fa_center);
			draw_text_outline_coloured(X+1,Y-10,string(icon_recharge),c_lightgray,c_darkgray);
			draw_set_halign(fa_left);
			};
		break;
	};
