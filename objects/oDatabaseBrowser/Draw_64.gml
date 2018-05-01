//FadeScreen
draw_screenfill(c_white,0.6);

draw_set_font(ft_EvoLarge_12);
switch ( Mode ) {
	case "Skills":		
		draw_text_outline_coloured(X,Y,"Skill Database",c_shadow,c_shadow_dark);	
		break;
	case "Creatures":	
		draw_text_outline_coloured(X,Y,"Creature Database",c_shadow,c_shadow_dark);	
		break;
	};
	
//-[List Box]-------------------------------------------------------------------
window_listbox_draw();
window_tabset_draw(1);
window_tabset_draw(2);
//-[Data Box]-------------------------------------------------------------------	
window_databox_draw(1);
if ( Mode == "Creatures" ) { window_tabset_draw(3); window_databox_draw(2); };
//------------------------------------------------------------------------------

draw_cornercross(oGlobalController.Resolution_CompleteWidth,0,spr_cornerX,eIconState.detectGUI);