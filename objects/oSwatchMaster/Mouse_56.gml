for ( var i=0 ; i<array_length_1d(ColourArray)-1 ; i++ ) {
	for ( var j=0 ; j<6 ; j++ ) {
		if mouse_in_region( define_region(x+width*j,y+height*i,width,height) ) {
			clipboard_set_text(stringA[i,j]);
			break;
			};
		};
	};
	
for ( var j=0 ; j<6 ; j++ ) {
	if mouse_in_region( define_region(x+width*j,0,width,500) ) {
		var tempstring = stringA[0,j]
		for ( var i=1 ; i<array_height_2d(stringA)-2 ; i++ ) {
			tempstring += "\n"
			tempstring += stringA[i,j]
			};
		clipboard_set_text(tempstring);
		break;
		};
	};