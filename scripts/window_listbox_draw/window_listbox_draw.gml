///window_listbox_draw();
		
//Find Correct List Length
switch ( Listbox_Mode ) {
	case "Icons": default:
		Listbox_List_Length = array_length_1d(Listbox_ListIcon)-1;
		break;
	case "Words": default:
		Listbox_List_Length = array_length_1d(Listbox_ListWords)-1;
		break;
	};
//Update Listbox pointer locations
Listbox_Row_Count = ceil( Listbox_List_Length / Listbox_Row_Length );
if ( Listbox_Row_Starting > Listbox_Row_Count - Listbox_Column_Length + 1 ) { 
	Listbox_Row_Starting = 1 };
if ( Listbox_Row_Starting < 1 ) { 
	Listbox_Row_Starting = Listbox_Row_Count - Listbox_Column_Length + 1 };

//Define visual range
var range_start = Listbox_Row_Starting * Listbox_Row_Length - Listbox_Row_Length + 1;
var range_end = range_start + Listbox_Row_Length * Listbox_Column_Length - 1;
if ( range_end > Listbox_List_Length ) { range_end = Listbox_List_Length };

//Draw Listbox
switch ( Listbox_Mode ) {
	case "Icons":
		//Draw Box
		draw_blackbox(Listbox_X,Listbox_Y,Listbox_Row_Length*30+6,Listbox_Column_Length*31+10);
		draw_blackbox_scroller(Listbox_X,Listbox_Y,Listbox_Row_Length*30+6,UP,1);
		draw_blackbox_scroller(Listbox_X,Listbox_Y+Listbox_Column_Length*31+6,Listbox_Row_Length*30+6,DOWN,1);
		var _x = Listbox_X+18; var _y = Listbox_Y+20; 
		draw_set_font(ft_EvoTooltipBold_6);
		draw_set_halign(fa_right);
		//Draw List
		if ( Listbox_IconType = "Skill" ) {
			for ( var i=range_start ; i<=range_end ; i++ ) {
				if ( array_length_1d(Listbox_ListColour) < i ) { Listbox_ListColour[i] = c_white };		//Replace missing colours	
				draw_icon_skill(_x,_y,24,Listbox_ListIcon[i],Listbox_ListColour[i],eIconState.detect);
				if ( Listbox_ShowID ) { draw_text_outline_coloured(_x+12,_y+6,Listbox_ListIcon[i],c_lightgray,c_darkgray) };	
				if ( i == Listbox_Position ) { draw_sprite_ext(spr_icon_halo_24x24,1,_x,_y,1,1,0,c_orange,0.5) };		
				_x += 30;
				if ( _x > Listbox_X+Listbox_Row_Length*30 ) { _x = Listbox_X+18; _y += 31 };
				};
			};
		if ( Listbox_IconType = "DB_Skill" ) {
			for ( var i=range_start ; i<=range_end ; i++ ) {
				draw_icon_dbskill(_x,_y,24,Listbox_ListIcon[i],eIconState.detect);
				if ( Listbox_ShowID ) { draw_text_outline_coloured(_x+12,_y+6,Listbox_ListIcon[i],c_lightgray,c_darkgray) };	
				if ( i == Listbox_Position ) { draw_sprite_ext(spr_icon_halo_24x24,1,_x,_y,1,1,0,c_orange,0.5) };		
				_x += 30;
				if ( _x > Listbox_X+Listbox_Row_Length*30 ) { _x = Listbox_X+18; _y += 31 };
				};
			};
		draw_set_halign(fa_left);
		break;
	//Word List
	case "Words":
		//Draw Box
		draw_blackbox(Listbox_X,Listbox_Y,Listbox_Row_Length*Listbox_WordWidth+6,Listbox_Column_Length*10+10);
		draw_blackbox_scroller(Listbox_X,Listbox_Y,Listbox_Row_Length*Listbox_WordWidth+6,UP,1);
		draw_blackbox_scroller(Listbox_X,Listbox_Y+Listbox_Column_Length*10+6,Listbox_Row_Length*Listbox_WordWidth+6,DOWN,1);
		var _x = Listbox_X+4; var _y = Listbox_Y+6; 
		draw_set_font(ft_EvoTooltipBold_6);
		//Draw List
		for ( var i=range_start ; i<=range_end ; i++ ) {
			if ( array_length_1d(Listbox_ListColour) < i ) { Listbox_ListColour[i] = c_white };		//Replace missing colours	
			var drawstring = Listbox_ListWords[i];
			if ( Listbox_ShowID ) { 	
				if ( i == Listbox_Position ) { draw_rectangle_color(_x-4,_y,_x+Listbox_WordWidth+1,_y+8,c_darkgray,c_darkgray,c_darkgray,c_darkgray,false) };
				if ( string_width(drawstring) > Listbox_WordWidth - 30 ) { drawstring = string_delete(drawstring,14,100)+"...";}; //Clip Extra long words
				draw_text_flatcolour(_x,_y,"["+string(i)+"]:",c_lightgray,1);
				draw_text_flatcolour(_x+30,_y,drawstring,find_colour(Listbox_ListColour[i]),1);
				};	
			else { 
				if ( i == Listbox_Position ) { draw_rectangle_color(_x-4,_y,_x+Listbox_WordWidth+1,_y+8,c_darkgray,c_darkgray,c_darkgray,c_darkgray,false) };
				if ( string_width(drawstring) > Listbox_WordWidth ) { drawstring = string_delete(drawstring,18,100)+"...";}; //Clip Extra long words
				draw_text_flatcolour(_x,_y,drawstring,find_colour(Listbox_ListColour[i]),1);
				};				
			_x += Listbox_WordWidth;
			if ( _x > Listbox_X+Listbox_Row_Length*Listbox_WordWidth ) { _x = Listbox_X+4; _y += 10 };
			};
		break;
	};