/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/
var stored_tooltip = 0; 

//=[Creature Selection]===============================================
//Draw Box
draw_set_font(ft_EvoSmallcaps_6);
var box_width = 7+party_lastentry(Player)*29;
if ( box_width < string_width(Player.Player_Name)+16 ) { box_width = string_width(Player.Player_Name)+16 };
var box_x = 0;
var box_y = oGlobalController.Resolution_CompleteHeight - 22;
var tooltip_offset_x = string_width(Player.Player_Name)+12;
var tooltip_offset_y = 30;
draw_blackbox(box_x-4,box_y,box_width,20);
draw_blackbox_sharp(box_x-4,box_y-33,string_width(Player.Player_Name)+12,33,1,0,1,1);
draw_text_outline(box_x+3,box_y-30,Player.Player_Name,c_white);

//Draw Icons
for ( var i=1 ; i<=party_lastentry(Player) ; i++ ) {
	var state = eIconState.detectGUI;
	if ( mouse_in_region_gui( define_region_icon( box_x+i*29-13,box_y,24.32 ) ) ) { stored_tooltip = i };
	if ( !Player.Party_Status[i] ) { state = eIconState.disabled };
	draw_icon_dbcreature(box_x+i*29-13,box_y,24.32,Player.Party_Species[i],state);
	};
if ( i > 3 ) { tooltip_offset_y += 17 };
//====================================================================
	
//Draw Other Buttons
draw_set_font(ft_EvoTooltipBold_6);
draw_textbutton_gui_ext(box_x+box_width,box_y+9,"Change Party","Outline",c_shadow,c_white,c_shadow_dark,2,2);
draw_textbutton_gui_ext(box_x+box_width,box_y-2,"Edit Creatures","Outline",c_air,c_white,c_air_dark,2,2);

//Draw Tooltip
if ( stored_tooltip ) { 
	/*Debug*/party_update_resources(Player,stored_tooltip);
	draw_tooltip_party(Player,stored_tooltip,box_x+tooltip_offset_x,box_y-tooltip_offset_y,1,0,0) };
	
draw_set_font(ft_EvoTooltipBold_6);
draw_text_flatcolour(14,260,depth,c_nature,1);
draw_text_flatcolour(4,260,infocus(),c_nature_dark,1);