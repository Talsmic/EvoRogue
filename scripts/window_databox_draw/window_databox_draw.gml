///window_databox_draw(#);
/// @arg #
var ref = argument0;

//Draw Databox
switch ( Databox_Type[ref] ) {
	
	case "DB_Skills":
		var effects_string = db_record_get("db_Skills",Databox_Pointer[ref],"effects");
		effects_string = string_replace_all(effects_string,"; ","\n");
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
		draw_colouredplane(Databox_X[ref]+128,Databox_Y[ref]+54,70,11,c_midgray,0.3);
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
		draw_text(Databox_X[ref]+130,Databox_Y[ref]+45,"Icon:");
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
		draw_text(Databox_X[ref]+132,Databox_Y[ref]+55,db_record_get("db_Skills",Databox_Pointer[ref],"icon"));
		draw_text_ext(Databox_X[ref]+6,Databox_Y[ref]+76,effects_string,9,width-12);
		//Draw Icon
		draw_icon_dbskill(Databox_X[ref]+width-16,Databox_Y[ref]+59,24,Databox_Pointer[ref],1)
		//Draw Tooltip
		draw_tooltip_skill(Databox_Pointer[ref],Databox_X[ref],Databox_Y[ref]+height+3);
		break;
		
	case "DB_Creatures":
		var width = 154;
		var att_width = floor((width-4)/5);
		var height = 108;
		//Draw Sprite
		var shadow = db_record_get("db_Creatures",Databox_Pointer[ref],"shadow");
		var sprite = asset_get_index(db_record_get("db_Creatures",Databox_Pointer[ref],"sprite"));
		if ( sprite ) {
			draw_sprite(spr_shadows,shadow,Databox_X[ref]+width+32,Databox_Y[ref]+height-10);
			draw_sprite(sprite,0,Databox_X[ref]+width+32,Databox_Y[ref]+height-10);
			};
		//Draw Box
		draw_blackbox(Databox_X[ref],Databox_Y[ref],width,height);
		//Draw Fields
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+12,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+38,Databox_Y[ref]+12,width-40,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+33,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+54,att_width,20,c_power,0.3);
		draw_colouredplane(Databox_X[ref]+2+att_width,Databox_Y[ref]+54,att_width,20,c_fortitude,0.3);
		draw_colouredplane(Databox_X[ref]+2+att_width*2,Databox_Y[ref]+54,att_width,20,c_speed,0.3);
		draw_colouredplane(Databox_X[ref]+2+att_width*3,Databox_Y[ref]+54,att_width,20,c_recovery,0.3);
		draw_colouredplane(Databox_X[ref]+2+att_width*4,Databox_Y[ref]+54,att_width,20,c_potency,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+65,width-4,9,c_black,0.2);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+85,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+48,Databox_Y[ref]+97,16,9,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+98,Databox_Y[ref]+97,24,9,c_midgray,0.3);
		//Draw Headers
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_midgray);
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+3,"ID:");
		draw_text(Databox_X[ref]+40,Databox_Y[ref]+3,"Name:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+24,"Element:");
		draw_set_font(ft_EvoTooltipSquished_6);
		draw_set_halign(fa_center);
		draw_text_flatcolour(Databox_X[ref]+2+att_width*0.5,Databox_Y[ref]+45,"Power",c_power,1);
		draw_text_flatcolour(Databox_X[ref]+2+att_width*1.5,Databox_Y[ref]+45,"Fortitude",c_fortitude,1);
		draw_text_flatcolour(Databox_X[ref]+2+att_width*2.5,Databox_Y[ref]+45,"Speed",c_speed,1);
		draw_text_flatcolour(Databox_X[ref]+2+att_width*3.5,Databox_Y[ref]+45,"Recovery",c_recovery,1);
		draw_text_flatcolour(Databox_X[ref]+2+att_width*4.5,Databox_Y[ref]+45,"Potency",c_potency,1);
		draw_set_halign(fa_left);
		draw_set_font(ft_EvoTooltip_6);
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+76,"Sprite:");			
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+97,"Shadow:");	
		draw_text(Databox_X[ref]+72,Databox_Y[ref]+97,"Icon:");
		//Draw Data
		draw_set_font(ft_EvoTooltipBold_6);
		draw_set_colour(c_lightgray);
		var id_string = "["+string_format(db_record_get("db_Creatures",Databox_Pointer[ref],"id"),3,0)+"]";
		id_string = string_replace_all(id_string," ","0");
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+13,id_string);
		draw_text(Databox_X[ref]+42,Databox_Y[ref]+13,db_record_get("db_Creatures",Databox_Pointer[ref],"name"));
		draw_text_flatcolour(Databox_X[ref]+6,Databox_Y[ref]+34,db_record_get("db_Creatures",Databox_Pointer[ref],"element"),find_colour(db_record_get("db_Creatures",Databox_Pointer[ref],"element")),1);
		draw_set_halign(fa_center);
		draw_set_colour(c_white);
		draw_text(Databox_X[ref]+2+att_width*0.5,Databox_Y[ref]+55,db_record_get("db_Creatures",Databox_Pointer[ref],"bPower"));
		draw_text(Databox_X[ref]+2+att_width*1.5,Databox_Y[ref]+55,db_record_get("db_Creatures",Databox_Pointer[ref],"bFortitude"));
		draw_text(Databox_X[ref]+2+att_width*2.5,Databox_Y[ref]+55,db_record_get("db_Creatures",Databox_Pointer[ref],"bSpeed"));
		draw_text(Databox_X[ref]+2+att_width*3.5,Databox_Y[ref]+55,db_record_get("db_Creatures",Databox_Pointer[ref],"bRecovery"));
		draw_text(Databox_X[ref]+2+att_width*4.5,Databox_Y[ref]+55,db_record_get("db_Creatures",Databox_Pointer[ref],"bPotency"));
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_lightgray);
		draw_text(Databox_X[ref]+2+att_width*0.5,Databox_Y[ref]+65,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"gPower")));
		draw_text(Databox_X[ref]+2+att_width*1.5,Databox_Y[ref]+65,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"gFortitude")));
		draw_text(Databox_X[ref]+2+att_width*2.5,Databox_Y[ref]+65,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"gSpeed")));
		draw_text(Databox_X[ref]+2+att_width*3.5,Databox_Y[ref]+65,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"gRecovery")));
		draw_text(Databox_X[ref]+2+att_width*4.5,Databox_Y[ref]+65,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"gPotency")));
		draw_set_halign(fa_left);
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+86,db_record_get("db_Creatures",Databox_Pointer[ref],"sprite"));
		draw_text(Databox_X[ref]+50,Databox_Y[ref]+97,db_record_get("db_Creatures",Databox_Pointer[ref],"shadow"));
		draw_text(Databox_X[ref]+100,Databox_Y[ref]+97,db_record_get("db_Creatures",Databox_Pointer[ref],"icon"));
		//Draw Icon
		draw_icon_dbcreature(Databox_X[ref]+width-16,Databox_Y[ref]+91,24,Databox_Pointer[ref],1);
		break;
		
	};