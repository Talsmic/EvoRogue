//FadeScreen
draw_sprite_tiled_ext(spr_dot,0,0,0,1,1,c_white,0.6);

switch ( Mode ) {
	case "Skills":
		draw_set_font(ft_EvoLarge_12);
		draw_text_outline_coloured(X,Y,"Skill Database",c_shadow,c_shadow_dark);
//-[List Box]-------------------------------------------------------------------
		draw_window_listbox();
//-[Data Box]-------------------------------------------------------------------	
		//Box
		//draw_blackbox(X,Y+20,Listbox_Row_Length*34+8,Listbox_Column_Length*34+8);
//------------------------------------------------------------------------------
		break;
	};