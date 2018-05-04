draw_set_font(font);
draw_set_alpha(alpha);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if ( outline ) {
	draw_set_colour(colour3);
	draw_text(x-1,y,text);
	draw_text(x-1,y+1,text);
	draw_text(x,y-1,text);
	draw_text(x,y+2,text);
	draw_text(x+1,y+2,text);
	draw_text(x+1,y-1,text);
	draw_text(x+2,y,text);
	draw_text(x+2,y+1,text);
	if ( sharpoutline ) {
		draw_text(x-1,y-1,text);
		draw_text(x-1,y+2,text);
		draw_text(x+2,y-1,text);
		draw_text(x+2,y+2,text);
		};
	};

if ( dropshadow ) {
	draw_set_colour(colour2);
	draw_text(x+1,y,text);
	draw_text(x,y+1,text);
	draw_text(x+1,y+1,text);
	};

draw_set_colour(colour1);
draw_text(x,y,text);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_alpha(1);