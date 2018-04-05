
draw_set_font(ft_EvoSmallcaps_6);
//Reset Button
var a = get_textbutton_guiregion(window_get_truescaling()*480-string_width("Reset"),10,"Reset",-1,0);
if ( a[0] ) {	event_perform(ev_keyrelease, ord("0"))	};
//Generate Grid Button
var a = get_textbutton_guiregion(window_get_truescaling()*480-string_width("Generate Grid"),20,"Generate Grid",-1,0);
if ( a[0] ) {	event_perform(ev_keyrelease, ord("1"))	};
//Region Button
var a = get_textbutton_guiregion(window_get_truescaling()*480-string_width("Define Regions"),30,"Define Regions",-1,0);
if ( a[0] ) {	event_perform(ev_keyrelease, ord("2"))	};