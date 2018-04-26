///window_databox_draw(#);
/// @arg #
var ref = argument0;

//Draw Databox
switch ( Databox_Type[ref] ) {
	case "DB_Skill":
		var effects_string = db_record_get("db_Skills",Databox_Pointer[ref],"effects");
		effects_string = string_replace_all(effects_string," ","\n");
		var width = 200;
		var effects_height = string_height_ext(effects_string,9,width-12);
		var height = 79 + effects_height;
		//Draw Box
		draw_blackbox(Databox_X[ref],Databox_Y[ref],width,height);
		//Draw Fields
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+12,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+38,Databox_Y[ref]+12,width-40,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+33,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+93,Databox_Y[ref]+33,35,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+163,Databox_Y[ref]+33,35,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+54,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+133,Databox_Y[ref]+54,40,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+75,width-4,2+effects_height,c_midgray,0.3);
		//Draw Headers
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_midgray);
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+3,"ID:");
		draw_text(Databox_X[ref]+40,Databox_Y[ref]+3,"Name:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+24,"Element:");
		draw_set_font(ft_EvoTooltipSquished_6);
		draw_text(Databox_X[ref]+95,Databox_Y[ref]+24,"Energy:");
		draw_text(Databox_X[ref]+130,Databox_Y[ref]+24,"Recharge:");
		draw_text(Databox_X[ref]+165,Databox_Y[ref]+24,"Priority:");
		draw_set_font(ft_EvoTooltip_6);
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+45,"Timeline:");		
		draw_text(Databox_X[ref]+135,Databox_Y[ref]+45,"Icon:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+66,"Effects:");
		//Draw Data
		draw_set_font(ft_EvoTooltipBold_6);
		draw_set_colour(c_lightgray);
		var id_string = "["+string_format(db_record_get("db_Skills",Databox_Pointer[ref],"id"),3,0)+"]";
		id_string = string_replace_all(id_string," ","0");
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+13,id_string);
		draw_text(Databox_X[ref]+42,Databox_Y[ref]+13,db_record_get("db_Skills",Databox_Pointer[ref],"name"));
		draw_text_flatcolour(Databox_X[ref]+6,Databox_Y[ref]+34,db_record_get("db_Skills",Databox_Pointer[ref],"element"),find_colour(db_record_get("db_Skills",Databox_Pointer[ref],"element")),1);
		draw_text_flatcolour(Databox_X[ref]+97,Databox_Y[ref]+34,db_record_get("db_Skills",Databox_Pointer[ref],"cost"),c_water,1);
		draw_text_flatcolour(Databox_X[ref]+132,Databox_Y[ref]+34,db_record_get("db_Skills",Databox_Pointer[ref],"recharge"),c_fire,1);
		draw_text(Databox_X[ref]+167,Databox_Y[ref]+34,db_record_get("db_Skills",Databox_Pointer[ref],"priority"));
		draw_set_font(ft_EvoTooltip_6);
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+55,db_record_get("db_Skills",Databox_Pointer[ref],"timeline"));
		draw_text(Databox_X[ref]+137,Databox_Y[ref]+55,db_record_get("db_Skills",Databox_Pointer[ref],"icon"));
		draw_text_ext(Databox_X[ref]+6,Databox_Y[ref]+76,effects_string,9,width-12);
		//Draw Icon
		draw_icon_dbskill(Databox_X[ref]+width-16,Databox_Y[ref]+59,24,Databox_Pointer[ref],1)
		//Draw Tooltip
		draw_tooltip_skill(Databox_Pointer[ref],Databox_X[ref],Databox_Y[ref]+height+3);
		break;
	};