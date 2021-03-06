///ui_varlist_draw(mode,x,y);
/// @arg mode
/// @arg x
/// @arg y
var mode = argument0;
var X = argument1;
var Y = argument2;
		
draw_set_font(ft_EvoSmallcaps_6);
//Find Correct Data
switch ( mode ) {
	
	case "Resolution": #region
		draw_text_flatcolour(X+4,Y,"Resolution Variables",c_orange,1);
		var list_string = [	"Options_Fullscreen", 
							"Options_ResolutionSnap", 
							"Options_Magnification", 
							"Options_LockedMagnification", 
							"Options_Vsync", 
							" ", 
							"Resolution_Magnification", 
							"Resolution_Ideal", 
							"Resolution_Min", 
							"Resolution_Max", 
							"Resolution_Complete", 
							"Resolution_Playable", 
							"Resolution_Pad", 
							"Resolution_GUIOffset", 
							"Resolution_GUIsnap", 
							"Resolution_View" 
							];
		var list_value = [	Options_Fullscreen,
							Options_ResolutionSnap,
							Options_Magnification,
							Options_LockedMagnification,
							Options_Vsync,
							" ",
							oGameController.Resolution_Magnification, 
							string(oGameController.Resolution_IdealWidth)+", "+string(oGameController.Resolution_IdealHeight), 
							string(oGameController.Resolution_MinWidth)+", "+string(oGameController.Resolution_MinHeight), 
							string(oGameController.Resolution_MaxWidth)+", "+string(oGameController.Resolution_MaxHeight), 
							string(oGameController.Resolution_CompleteWidth)+", "+string(oGameController.Resolution_CompleteHeight), 
							string(oGameController.Resolution_PlayableWidth)+", "+string(oGameController.Resolution_PlayableHeight), 
							string(oGameController.Resolution_PadWidth)+", "+string(oGameController.Resolution_PadHeight), 
							string(oGameController.Resolution_GUIxOffset)+", "+string(oGameController.Resolution_GUIyOffset),
							oGameController.Resolution_GUIsnap, 
							string(oGameController.Resolution_ViewWidth)+", "+string(oGameController.Resolution_ViewHeight) 
							];
		var col_width = [120,50];
		break; #endregion
		
	case "ApplicationSurface": #region
		draw_text_flatcolour(X+4,Y,"AppSurface",c_orange,1);
		var a = application_get_position();
		var list_string = [  "X", "Y", "Width", "Height"  ];
		var list_value = [  a[0],a[1],a[2]-a[0],a[3]-a[1]  ];
		var col_width = [60,20];
		break; #endregion
		
	default:
		draw_text_flatcolour(X,Y,"Unassigned Variables",c_orange,1);
		var list_string = ["var1","var2","var3"];
		var list_value = [1,"22g",333];
		var col_width = [50,50];
		
	};
	
//Draw Box
draw_blackbox(X,Y+10,8+col_width[0]+col_width[1],4+array_length_1d(list_string)*11);
for ( var i=1 ; i<array_length_1d(list_string) ; i+=2 ) {
	draw_colouredplane(X+2,Y+i*11+1,4+col_width[0]+col_width[1],11,c_midgray,0.3);
	};	
//Draw Headers
draw_set_font(ft_EvoTooltip_6);
draw_set_colour(c_lightgray);
for ( var i=0 ; i<array_length_1d(list_string) ; i++ ) {
	draw_text(X+4,Y+i*11+13,list_string[i]);
	};	
//Draw Values
draw_set_font(ft_EvoTooltip_6_Bold);
draw_set_colour(c_orange);
draw_set_halign(fa_right);
for ( var i=0 ; i<array_length_1d(list_value) ; i++ ) {
	draw_text(X+col_width[0]+col_width[1]+2,Y+i*11+13,list_value[i]);
	};	
draw_set_halign(fa_left);