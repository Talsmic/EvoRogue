//FadeScreen
draw_screenfill(c_white,0.7);

draw_set_font(ft_EvoLarge_12);
switch ( Mode ) {
	case "Skills":		
		draw_text_outline_coloured(GUI_X,GUI_Y,"Skill Database",c_shadow,c_shadow_dark);	
		break;
	case "Creatures":	
		draw_text_outline_coloured(GUI_X,GUI_Y,"Creature Database",c_shadow,c_shadow_dark);	
		break;
	};
	
//-[List Box]-------------------------------------------------------------------
ui_listbox_draw();
ui_tabset_draw(1);
ui_tabset_draw(2);
//-[Data Box]-------------------------------------------------------------------	
ui_databox_draw(1);
if ( Mode == "Creatures" ) { ui_tabset_draw(3); ui_databox_draw(2); };
//------------------------------------------------------------------------------

draw_cornercross(oGlobalController.Resolution_CompleteWidth,0,spr_cornerX,eIconState.detectGUI);
draw_set_font(ft_EvoTooltipBold_6);
draw_text_flatcolour(14,260,depth,c_nature,1);
draw_text_flatcolour(4,260,infocus(),c_nature_dark,1);