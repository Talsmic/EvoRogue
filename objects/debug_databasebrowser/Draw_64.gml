//FadeScreen
draw_screenfill(c_white,0.6);

switch ( Mode ) {
	case "Skills":
		draw_set_font(ft_EvoLarge_12);
		draw_text_outline_coloured(X,Y,"Skill Database",c_shadow,c_shadow_dark);
//-[List Box]-------------------------------------------------------------------
		window_listbox_draw();
//-[Data Box]-------------------------------------------------------------------	
		//Box
		window_databox_draw(1);
		//draw_blackbox(X,Y+20,Listbox_Row_Length*34+8,Listbox_Column_Length*34+8);
//------------------------------------------------------------------------------
		break;
	case "Creatures":
		draw_set_font(ft_EvoLarge_12);
		draw_text_outline_coloured(X,Y,"Creature Database",c_shadow,c_shadow_dark);
//-[List Box]-------------------------------------------------------------------
		window_listbox_draw();
//-[Data Box]-------------------------------------------------------------------	
		//Box
		window_databox_draw(1);
		//draw_blackbox(X,Y+20,Listbox_Row_Length*34+8,Listbox_Column_Length*34+8);
//------------------------------------------------------------------------------
		break;
	};