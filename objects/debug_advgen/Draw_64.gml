//Draw Buttons
draw_set_font(ft_EvoSmallcaps_6);

draw_textbutton_gui(window_get_truescaling()*480-string_width("Reset"),10,"Reset",c_white,c_orange,-1,0);
draw_textbutton_gui(window_get_truescaling()*480-string_width("Generate Grid"),20,"Generate Grid",c_white,c_orange,-1,0);
draw_textbutton_gui(window_get_truescaling()*480-string_width("Define Regions"),30,"Define Regions",c_white,c_orange,-1,0);
draw_textbutton_gui(window_get_truescaling()*480-string_width("Core Rooms"),40,"Core Rooms",c_white,c_orange,-1,0);
draw_textbutton_gui(window_get_truescaling()*480-string_width("Connect Rooms"),50,"Connect Rooms",c_white,c_orange,-1,0);
