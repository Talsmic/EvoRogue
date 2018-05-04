/* LEGACY CODE

if ( draw == false ) { return };
if ( offset < 0 ) { offset+=10 };

//Find Information
var ref_name = db_record_get("db_Skills",ref_skill,"name");
var ref_colour = find_elementcolour( db_record_get("db_Skills",ref_skill,"element") );
draw_set_font(ft_EvoSmallcaps_6);
var box_width = string_width(ref_name) + 56;
if ( box_width < 120 ) { box_width = 120 };

//Draw Left
if ( facing == 1 ) {
	//Box
	draw_blackbox_sharp(-10+offset,height-4,box_width,16,0,1,0,1);
	draw_sprite(spr_blackboxcaps16,0,box_width-10+offset,height-4);
	//Text
	draw_set_font(ft_EvoTooltip_6);
	draw_text_outline(40,height-14,global.party_name[user_player, user_creature]+" uses",c_white);
	draw_set_font(ft_EvoSmallcaps_6);
	draw_text_outline(40+offset,height-1,ref_name,ref_colour);
	//Icon
	draw_icon_skill(20,height,32,ref_skill,0);
	};
	
//Draw Right
if ( facing == 2 ) {
	//Box
	draw_blackbox_sharp(490-offset-box_width,height-4,box_width,16,1,1,1,1);
	draw_sprite_ext(spr_blackboxcaps16,0,490-offset-box_width,height-4,-1,1,0,c_white,1);
	//Text
	draw_set_halign(fa_right);
	draw_set_font(ft_EvoTooltip_6);
	draw_text_outline(440,height-14,global.party_name[user_player, user_creature]+" uses",c_white);
	draw_set_font(ft_EvoSmallcaps_6);
	draw_text_outline(440-offset,height-1,ref_name,ref_colour);
	draw_set_halign(fa_left);
	//Icon
	draw_icon_skill(460,height,32,ref_skill,0);
	};