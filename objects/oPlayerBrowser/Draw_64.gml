//FadeScreen
draw_screenfill(c_white,0.6);

draw_set_font(ft_EvoLarge_12);
draw_text_outline_coloured(X,Y,"Player Containers",c_shadow,c_shadow_dark);	
	
//-[List Box]-------------------------------------------------------------------
window_listbox_draw();
//-[Data Box]-------------------------------------------------------------------
window_databox_draw(1);	
window_databox_draw(2);	
window_tabset_draw(1);	
//------------------------------------------------------------------------------

draw_cornercross(oGlobalController.Resolution_CompleteWidth,0,spr_cornerX,eIconState.detectGUI);
draw_set_font(ft_EvoTooltipBold_6);
draw_text_flatcolour(14,260,depth,c_nature,1);
draw_text_flatcolour(4,260,infocus(),c_nature_dark,1);