/*Debugmode Required*/ if ( !DebugMode ) { return };
if ( !Draw ) { return };

var ui_width = Resolution_CompleteWidth//window_get_width() / window_get_scaling();
var ui_height = Resolution_CompleteHeight//window_get_height() / window_get_scaling();
var draw_offset = ui_width - 22;

if ( Draw_Mouse ) {
	draw_set_font(ft_EvoTooltip_6);
	draw_text_outline_coloured(ui_width-80,ui_height-30,"Mouse:",c_white,c_gray);
	draw_text_outline_coloured(ui_width-100,ui_height-20,"GUI Mouse:",c_white,c_gray);
	draw_text_outline_coloured(ui_width-100,ui_height-10,"View Mouse:",c_white,c_gray);
	draw_text_outline_coloured(ui_width-40,ui_height-30,string(mouse_x)+","+string(mouse_y),c_orange,c_black);
	draw_text_outline_coloured(ui_width-40,ui_height-20,string(global.gui_mouse_x)+","+string(global.gui_mouse_y),c_orange,c_black);
	draw_text_outline_coloured(ui_width-40,ui_height-10,string(window_view_mouse_get_x(0))+","+string(window_view_mouse_get_y(0)),c_orange,c_black);
	};
	
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
	draw_text_outline_coloured(draw_offset,10,FocusCurrent,c_shadow,c_shadow_dark);
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

ui_varlist_draw("Resolution",10,10);