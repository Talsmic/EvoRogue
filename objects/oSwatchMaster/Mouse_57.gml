for ( var i=0 ; i<array_length_1d(ColourArray)-1 ; i++ ) {
	for ( var j=0 ; j<6 ; j++ ) {
		if mouse_in_region( define_region(x+width*j,y+height*i,width,height) ) {
			clipboard_set_text(stringB[i,j]);
			};
		};
	};