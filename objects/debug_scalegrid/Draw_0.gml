draw_set_font(ft_EvoTooltip_6);
draw_set_colour(c_shadow);

for ( var i=1 ; i<=gridwidth_A ; i++ ) {
	for ( var j=1 ; j<=gridheight_A ; j++ ) {
		draw_sprite_ext(spr_maptiles32x,0,x-32+32*i,y-32+32*j,1,1,0,c_shadow,1);
		draw_text(x-32+32*i,y-32+32*j,string(i)+","+string(j))
		};
	};