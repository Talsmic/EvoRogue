
draw_set_halign(fa_center);

//Draw Saved Colours
draw_set_font(ft_EvoTooltip_6);
for ( var i=0 ; i<array_length_1d(ColourArray)-1 ; i++ ) {
	draw_colouredplane(x,y+height*i,width*6,height,find_colour(ColourArray[i]),1);
	draw_colouredplane(x+width*2,y+height*i,width,height,find_colour_dark(ColourArray[i]),1);
	draw_colouredplane(x+width*5,y+height*i,width,height,find_colour_light(ColourArray[i]),1);
	draw_text_flatcolour(x-35,y+height*(i-1)+2,HexArray[i],c_black,0.5);
	};

//Dark Stick
draw_colouredplane(x+width,y,width,height*20,c_black,DarkValue);
//Light Stick
draw_colouredplane(x+width*4,y,width,height*20,c_white,0.2);

draw_set_font(ft_EvoTooltip_6_Bold);
for ( var i=0 ; i<array_length_1d(ColourArray)-1 ; i++ ) {
	for ( var j=0 ; j<6 ; j++ ) {
		pix_colour = draw_getpixel((x+5+width*j)*oGlobalController.Resolution_Magnification,(y+5+height*i)*oGlobalController.Resolution_Magnification);
		red = dec_to_hex(colour_get_red(pix_colour));
		blue = dec_to_hex(colour_get_blue(pix_colour));
		green = dec_to_hex(colour_get_green(pix_colour));
		draw_colouredplane(x-5,y+height*i+j*3,5,3,pix_colour,1);
		stringA[i,j] = "$"+blue+green+red;
		stringB[i,j] = "#"+red+green+blue;
		draw_text_flatcolour(x+width*(j+0.5),y+height*i+1,stringA[i,j],c_black,0.5);
		draw_text_flatcolour(x+width*(j+0.5),y+height*i+10,stringB[i,j],c_black,0.5);
		};
	};

draw_set_halign(fa_left);

