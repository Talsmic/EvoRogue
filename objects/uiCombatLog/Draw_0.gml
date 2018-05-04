/* LEGACY CODE

//Draw Box
draw_blackbox(logbox_x,logbox_y,logbox_width,logbox_height);

//Draw Text
var i;
var drawn_height;
var start_line = current_line;
var end_line = 0;
var draw_x = logbox_x+4;
var draw_y = logbox_y+logbox_height-2;
var check_height = 0;
draw_set_font(ft_EvoTooltipCondensed_6);
for ( i=start_line ; i>end_line ; i-- ) {
	parse_text(cl_string[i],c_gray);
	check_height = parsed_text_height(logbox_width-8,8)-6;
	draw_y -= check_height;
	if ( draw_y < logbox_y ) { break };
	draw_parsed_text(draw_x,draw_y,logbox_width-8,8);
	};