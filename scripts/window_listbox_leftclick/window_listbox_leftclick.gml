///window_listbox_leftclick();
/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/
		
//Find Correct List Length
switch ( Listbox_Mode ) {
	case "Icons": default:
		Listbox_List_Length = array_length_1d(Listbox_ListIcon)-1;
		break;
	case "Words": default:
		Listbox_List_Length = array_length_1d(Listbox_ListWords)-1;
		break;
	};

//Define visual range
var range_start = Listbox_Row_Starting * Listbox_Row_Length - Listbox_Row_Length + 1;
var range_end = range_start + Listbox_Row_Length * Listbox_Column_Length - 1;
if ( range_end > Listbox_List_Length ) { range_end = Listbox_List_Length };

//Check Buttons
switch ( Listbox_Mode ) {
	case "Icons":
		var _x = Listbox_X+18; var _y = Listbox_Y+20; 
		for ( var i=range_start ; i<=range_end ; i++ ) {
			if ( mouse_in_region( define_region_icon( _x,_y,24 ) ) ) {
				Listbox_Position = i;
				};
			_x += 30;
			if ( _x > Listbox_X+Listbox_Row_Length*30 ) { _x = Listbox_X+18; _y += 31 };
			};
		break;
	case "Words":
		var _x = Listbox_X+4; var _y = Listbox_Y+6; 
		//Draw List
		for ( var i=range_start ; i<=range_end ; i++ ) {
			if ( mouse_in_region( define_region( _x,_y,Listbox_WordWidth,10 ) ) ) {
				Listbox_Position = i;
				};
			_x += Listbox_WordWidth;
			if ( _x > Listbox_X+Listbox_Row_Length*Listbox_WordWidth ) { _x = Listbox_X+4; _y += 10 };
			};
		break;
	};
	
//Scroll
switch ( Listbox_Mode ) {
	case "Icons":
		//Up Scroll
		if ( mouse_in_region( define_region( Listbox_X-1,Listbox_Y-2,Listbox_Row_Length*30+6,6 ) ) ) {
			Listbox_Row_Starting -= 1;
			window_listbox_scrollloop();
			};
		//Down Scroll
		if ( mouse_in_region( define_region( Listbox_X-1,Listbox_Y+Listbox_Column_Length*31+4,Listbox_Row_Length*30+6,6 ) ) ) {
			Listbox_Row_Starting -= 1;
			window_listbox_scrollloop();	
			};
		break;
	case "Words":
		//Up Scroll
		if ( mouse_in_region( define_region( Listbox_X-1,Listbox_Y-2,Listbox_Row_Length*Listbox_WordWidth+6,6 ) ) ) {
			Listbox_Row_Starting -= 1;
			window_listbox_scrollloop();
			};
		//Down Scroll
		if ( mouse_in_region( define_region( Listbox_X-1,Listbox_Y+Listbox_Column_Length*10+4,Listbox_Row_Length*Listbox_WordWidth+6,6 ) ) ) {
			Listbox_Row_Starting -= 1;
			window_listbox_scrollloop();
			};
		break;
	};