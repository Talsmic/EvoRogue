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
		var width = 164;
		var height = 25;
		//Draw Box
		draw_blackbox(Databox_X[ref],Databox_Y[ref],width,height);
		//Draw Fields
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+12,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+38,Databox_Y[ref]+12,width-40,11,c_midgray,0.3);
		//Draw Headers
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_midgray);
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+3,"ID:");
		draw_text(Databox_X[ref]+40,Databox_Y[ref]+3,"Name:");
		//Draw Data
		draw_set_font(ft_EvoTooltipBold_6);
		draw_set_colour(c_lightgray);
		var id_string = "["+string_format(db_record_get("db_Creatures",Databox_Pointer[ref],"id"),3,0)+"]";
		id_string = string_replace_all(id_string," ","0");
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+13,id_string);
		draw_text(Databox_X[ref]+42,Databox_Y[ref]+13,db_record_get("db_Creatures",Databox_Pointer[ref],"name"));
		break;	
		
	case "DB_Creatures1": //Stats
		var width = 164;
		var att_width = floor((width-4)/5);
		var height = 87;
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
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+33,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+48,Databox_Y[ref]+45,24,9,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+109,Databox_Y[ref]+45,24,9,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+65,att_width,20,c_power,0.3);
		draw_colouredplane(Databox_X[ref]+2+att_width,Databox_Y[ref]+65,att_width,20,c_fortitude,0.3);
		draw_colouredplane(Databox_X[ref]+2+att_width*2,Databox_Y[ref]+65,att_width,20,c_speed,0.3);
		draw_colouredplane(Databox_X[ref]+2+att_width*3,Databox_Y[ref]+65,att_width,20,c_recovery,0.3);
		draw_colouredplane(Databox_X[ref]+2+att_width*4,Databox_Y[ref]+65,att_width,20,c_potency,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+76,width-4,9,c_black,0.2);
		//Draw Headers
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_midgray);
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+3,"Element:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+24,"Sprite:");			
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+45,"Shadow:");	
		draw_text(Databox_X[ref]+80,Databox_Y[ref]+45,"Icon:");
		draw_set_font(ft_EvoTooltipSquished_6);
		draw_set_halign(fa_center);
		draw_text_flatcolour(Databox_X[ref]+2+att_width*0.5,Databox_Y[ref]+55,"Power",c_power,1);
		draw_text_flatcolour(Databox_X[ref]+2+att_width*1.5,Databox_Y[ref]+55,"Fortitude",c_fortitude,1);
		draw_text_flatcolour(Databox_X[ref]+2+att_width*2.5,Databox_Y[ref]+55,"Speed",c_speed,1);
		draw_text_flatcolour(Databox_X[ref]+2+att_width*3.5,Databox_Y[ref]+55,"Recovery",c_recovery,1);
		draw_text_flatcolour(Databox_X[ref]+2+att_width*4.5,Databox_Y[ref]+55,"Potency",c_potency,1);
		draw_set_halign(fa_left);
		//Draw Data
		draw_set_font(ft_EvoTooltipBold_6);
		draw_set_colour(c_lightgray);
		draw_text_flatcolour(Databox_X[ref]+6,Databox_Y[ref]+13,db_record_get("db_Creatures",Databox_Pointer[ref],"element"),find_colour(db_record_get("db_Creatures",Databox_Pointer[ref],"element")),1);
		draw_set_font(ft_EvoTooltip_6);
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+34,db_record_get("db_Creatures",Databox_Pointer[ref],"sprite"));
		draw_set_halign(fa_right);
		draw_text(Databox_X[ref]+69,Databox_Y[ref]+45,db_record_get("db_Creatures",Databox_Pointer[ref],"shadow"));
		draw_text(Databox_X[ref]+130,Databox_Y[ref]+45,db_record_get("db_Creatures",Databox_Pointer[ref],"icon"));
		draw_set_halign(fa_center);
		draw_set_colour(c_white);
		draw_set_font(ft_EvoTooltipBold_6);
		draw_text(Databox_X[ref]+2+att_width*0.5,Databox_Y[ref]+66,db_record_get("db_Creatures",Databox_Pointer[ref],"bPower"));
		draw_text(Databox_X[ref]+2+att_width*1.5,Databox_Y[ref]+66,db_record_get("db_Creatures",Databox_Pointer[ref],"bFortitude"));
		draw_text(Databox_X[ref]+2+att_width*2.5,Databox_Y[ref]+66,db_record_get("db_Creatures",Databox_Pointer[ref],"bSpeed"));
		draw_text(Databox_X[ref]+2+att_width*3.5,Databox_Y[ref]+66,db_record_get("db_Creatures",Databox_Pointer[ref],"bRecovery"));
		draw_text(Databox_X[ref]+2+att_width*4.5,Databox_Y[ref]+66,db_record_get("db_Creatures",Databox_Pointer[ref],"bPotency"));
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_lightgray);
		draw_text(Databox_X[ref]+2+att_width*0.5,Databox_Y[ref]+76,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"gPower")));
		draw_text(Databox_X[ref]+2+att_width*1.5,Databox_Y[ref]+76,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"gFortitude")));
		draw_text(Databox_X[ref]+2+att_width*2.5,Databox_Y[ref]+76,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"gSpeed")));
		draw_text(Databox_X[ref]+2+att_width*3.5,Databox_Y[ref]+76,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"gRecovery")));
		draw_text(Databox_X[ref]+2+att_width*4.5,Databox_Y[ref]+76,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"gPotency")));
		draw_set_halign(fa_left);
		//Draw Icon
		draw_icon_dbcreature(Databox_X[ref]+width-16,Databox_Y[ref]+39,24,Databox_Pointer[ref],1);
		break;
		
	case "DB_Creatures3":
		var skillset = DBcreature_skillset(Databox_Pointer[ref]);
		var skillset_core = DBcreature_skillset_core(Databox_Pointer[ref]);
		var width = 246;
		var height = 59 + ceil( ( array_height_2d(skillset) - 1 ) / 8 ) * 31;
		var tooltip = 0;
		//Draw Box
		draw_blackbox(Databox_X[ref],Databox_Y[ref],width,height);
		//Draw Fields
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+12,width-4,33,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+55,width-4,height-57,c_midgray,0.3);
		//Draw Headers
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_midgray);
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+3,"Core Skills:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+46,"Skills:");
		//Draw Core Skills
		var X = Databox_X[ref]+18; var Y = Databox_Y[ref]+28;
		for ( var i=1 ; i<array_height_2d(skillset_core) ; i++ ) {
			draw_icon_dbskill(X,Y,24,skillset_core[i,0],1);
			if ( mouse_in_region_gui( define_region_icon( X,Y,24 ) ) ) { tooltip = skillset_core[i,0] };
			X+= 30;
			};
		//Draw Skills
		X = Databox_X[ref]+18; Y += 43;
		for ( var i=1 ; i<array_height_2d(skillset) ; i++ ) {
			draw_icon_dbskill(X,Y,24,skillset[i,0],1);
			if ( mouse_in_region_gui( define_region_icon( X,Y,24 ) ) ) { tooltip = skillset[i,0] };
			X+= 30;
			if ( X > Databox_X[ref] + width ) {
				X = Databox_X[ref]+18;
				Y += 31;
				};	
			};
		//Draw Tooltip
		if ( tooltip ) { draw_tooltip_skill( tooltip, global.gui_mouse_x+2, global.gui_mouse_y+10 ) };
		break;
	};