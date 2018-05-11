//Draw Logo
draw_sprite(spr_logo,0,oGameController.Resolution_CompleteWidth-6,6);
//Draw Version
draw_set_font(ft_EvoSmallcaps_6);
draw_set_halign(fa_right);
draw_text_flatcolour(oGameController.Resolution_CompleteWidth-21,51,VERSION,c_black,0.4);
draw_text_flatcolour(oGameController.Resolution_CompleteWidth-22,50,VERSION,c_shadow,1);
draw_set_halign(fa_left); 

