//Draw Buttons
draw_set_font(ft_EvoSmallcaps_6);

draw_textbutton_gui(window_get_truescaling()*480-string_width("Reset [0]"),10,"Reset [0]",c_white,c_orange,-1,0);
draw_textbutton_gui(window_get_truescaling()*480-string_width("Clear [9]"),20,"Clear [9]",c_white,c_orange,-1,0);

draw_textbutton_gui(window_get_truescaling()*480-string_width("Generate Grid [1]"),40,"Generate Grid [1]",c_white,c_orange,-1,0);
draw_textbutton_gui(window_get_truescaling()*480-string_width("Define Regions [2]"),50,"Define Regions [2]",c_white,c_orange,-1,0);
draw_textbutton_gui(window_get_truescaling()*480-string_width("Core Rooms [3]"),60,"Core Rooms [3]",c_white,c_orange,-1,0);
