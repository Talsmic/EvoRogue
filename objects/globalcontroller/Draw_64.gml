if ( Draw == false ) { return };

var draw_offset = window_get_width()/window_get_scaling() - 22;
	
draw_set_halign(fa_center);

if ( Draw_FrameRate ) {
	draw_set_font(ft_EvoTooltipSquished_6);
	draw_text_outline_coloured(draw_offset,2,"FrameRate",c_white,c_gray);
	draw_set_font(ft_EvoLarge_12);
	draw_text_outline_coloured(draw_offset,10,fps,c_shadow,c_shadow_dark);
	draw_offset -= 40;
	};
	
if ( Draw_FocusLevel ) {
	draw_set_font(ft_EvoTooltipSquished_6);
	draw_text_outline_coloured(draw_offset,2,"FocusLevel",c_white,c_gray);
	draw_set_font(ft_EvoLarge_12);
	draw_text_outline_coloured(draw_offset,10,FocusLevel,c_shadow,c_shadow_dark);
	draw_offset -= 40;
	};
		
if ( Draw_Beat ) {
	draw_set_font(ft_EvoTooltipSquished_6);
	draw_text_outline_coloured(draw_offset,2,"Beat",c_white,c_gray);
	draw_set_font(ft_EvoLarge_12);
	draw_text_outline_coloured(draw_offset,10,string_format(Beat[0],1,1),c_shadow,c_shadow_dark);
	draw_offset -= 40;
	};
	
draw_set_halign(fa_left);