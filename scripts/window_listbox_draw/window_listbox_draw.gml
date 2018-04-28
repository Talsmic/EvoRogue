///window_listbox_draw();
		
//Find Correct Dimensions
switch ( Listbox_Mode ) {
	case "Icons":
		Listbox_List_Length = array_length_1d(Listbox_ListIcon)-1;
		var box_width = Listbox_Row_Length*30+6;
		var box_height = Listbox_Column_Length*31+10;
		break;
	case "Words":
		Listbox_List_Length = array_length_1d(Listbox_ListWords)-1;
		var box_width = Listbox_Row_Length*Listbox_WordWidth+6;
		var box_height = Listbox_Column_Length*10+10;
		break;
	default:
		Listbox_List_Length = 0;
		var box_width = 50;
		var box_height = 50;
	};

//Define visual range
var range_start = Listbox_Row_Starting * Listbox_Row_Length - Listbox_Row_Length + 1;
var range_end = range_start + Listbox_Row_Length * Listbox_Column_Length - 1;
if ( range_end > Listbox_List_Length ) { range_end = Listbox_List_Length };

//Draw Box
draw_blackbox(Listbox_X,Listbox_Y,box_width,box_height);
//Draw Scrollbars
if ( Listbox_List_Length > Listbox_Row_Length * Listbox_Column_Length ) {	
	if ( Listbox_Row_Starting == 1 and !Listbox_ScrollLoop ) {	
		draw_blackbox_scroller(Listbox_X,Listbox_Y,box_width,UP,eIconState.disabled)	};
	else {		
		draw_blackbox_scroller(Listbox_X,Listbox_Y,box_width,UP,eIconState.detect)	};
	if ( Listbox_Row_Starting > ceil( Listbox_List_Length / Listbox_Row_Length ) - Listbox_Column_Length and !Listbox_ScrollLoop ) {	
		draw_blackbox_scroller(Listbox_X,Listbox_Y+box_height-4,box_width,DOWN,eIconState.disabled)	};
	else {	
		draw_blackbox_scroller(Listbox_X,Listbox_Y+box_height-4,box_width,DOWN,eIconState.detect)	};	
	};
	
//Draw List
switch ( Listbox_Mode ) {
	
	case "Icons":
		var _x = Listbox_X+18; var _y = Listbox_Y+20; 
		draw_set_font(ft_EvoTooltipBold_6);
		draw_set_halign(fa_right);
		for ( var i=range_start ; i<=range_end ; i++ ) {
			//Replace missing colours
			if ( array_length_1d(Listbox_ListColour) < i ) { Listbox_ListColour[i] = c_white };			
			//Draw Icon
			if ( Listbox_IconType = "Skill" ) {
				draw_icon_skill(_x,_y,24,Listbox_ListIcon[i],Listbox_ListColour[i],eIconState.detect) };
			if ( Listbox_IconType = "DB_Skill" ) {
				draw_icon_dbskill(_x,_y,24,Listbox_ListIcon[i],eIconState.detect) };
			if ( Listbox_IconType = "Creature" ) {
				draw_icon_creature(_x,_y,24,Listbox_ListIcon[i],Listbox_ListColour[i],eIconState.detect) };
			if ( Listbox_IconType = "DB_Creature" ) {
				draw_icon_creature(_x,_y,24,Listbox_ListIcon[i],Listbox_ListColour[i],eIconState.detect) };
				//draw_icon_dbskill(_x,_y,24,Listbox_ListIcon[i],eIconState.detect) };
			//Draw Focus
			if ( i == Listbox_Position ) { draw_sprite_ext(spr_icon_halo_24x24,1,_x,_y,1,1,0,c_orange,0.5) };		
			//Draw ID
			if ( Listbox_ShowID ) { draw_text_outline_coloured(_x+12,_y+6,i,c_lightgray,c_darkgray) };	
			//Progress Locations
			_x += 30;
			if ( _x > Listbox_X+Listbox_Row_Length*30 ) { _x = Listbox_X+18; _y += 31 };
			};
		draw_set_halign(fa_left);
		break;
		
	case "Words":
		var _x = Listbox_X+4; var _y = Listbox_Y+6; 
		draw_set_font(ft_EvoTooltipBold_6);
		for ( var i=range_start ; i<=range_end ; i++ ) {
			//Replace missing colours
			if ( array_length_1d(Listbox_ListColour) < i ) { Listbox_ListColour[i] = c_white };		
			//Draw Focus
			if ( i == Listbox_Position ) {	
				draw_colouredplane(_x-4,_y-1,Listbox_WordWidth+6,11,c_midgray,0.3);
				draw_colouredplane(_x-4,_y,Listbox_WordWidth+6,9,c_darkgray,1); 
				};
			//Clip strings and Draw List
			var drawstring = Listbox_ListWords[i];
			if ( Listbox_ShowID ) { 	
				if ( string_width(drawstring) > Listbox_WordWidth - 30 ) { drawstring = string_delete(drawstring,14,100)+"...";}; //Clip Extra long words
				draw_text_flatcolour(_x,_y,"["+string(i)+"]:",c_lightgray,1);
				draw_text_flatcolour(_x+30,_y,drawstring,find_colour(Listbox_ListColour[i]),1);
				};	
			else { 
				if ( string_width(drawstring) > Listbox_WordWidth ) { drawstring = string_delete(drawstring,18,100)+"...";}; //Clip Extra long words
				draw_text_flatcolour(_x,_y,drawstring,find_colour(Listbox_ListColour[i]),1);
				};		
			//Progress Locations		
			_x += Listbox_WordWidth;
			if ( _x > Listbox_X+Listbox_Row_Length*Listbox_WordWidth ) { _x = Listbox_X+4; _y += 10 };
			};
		break;
	};