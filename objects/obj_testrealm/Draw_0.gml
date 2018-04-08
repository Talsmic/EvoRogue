draw_set_font(ft_EvoSmallcaps_6);

draw_textbutton(20,40,"Test",c_green);

draw_textbutton(20,20,"Test",c_purple);

draw_set_font(ft_EvoLarge_12);

for ( var i=1 ; i<10 ; i++ ) {
	draw_text_outline_thick(20,40+i*25,"this is a test",c_red,c_black,i);
	
	draw_text_outline_thick(220,40+i*25,"1 2 3 4 5 6 7 8 9 0",c_red,c_black,i);
	};