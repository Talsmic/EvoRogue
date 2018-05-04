offset += offset_speed;

draw_set_alpha(offset*0.005);
draw_blackbox_sharp(offset-60,y-16,120,16,1,1,1,1);
draw_sprite_ext(spr_blackboxcaps16,0,offset+60,y-16,1,1,0,c_white,offset*0.005);
draw_sprite_ext(spr_blackboxcaps16,0,offset-60,y,-1,-1,0,c_white,offset*0.005);
draw_set_font(ft_EvoSmallcaps_6);
draw_text_outline(offset-56,y-15,sub_text,sub_text_colour);

draw_blackbox_sharp(480-offset-60,y,120,16,1,1,1,1);
draw_sprite_ext(spr_blackboxcaps16,0,480-offset+60,y,1,1,0,c_white,offset*0.005);
draw_sprite_ext(spr_blackboxcaps16,0,480-offset-60,y+16,-1,-1,0,c_white,offset*0.005);
draw_set_font(ft_EvoLarge_12);
draw_set_halign(fa_center);
draw_text_outline(484-offset,y-4,main_text,main_text_colour);
draw_set_halign(fa_left);
draw_set_alpha(1);