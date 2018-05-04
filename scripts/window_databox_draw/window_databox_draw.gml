///window_databox_draw(#);
/// @arg #
var ref = argument0;

//Draw Databox
switch ( Databox_Type[ref] ) {
	
	case "DB_Skills": #region
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
		draw_icon_dbskill(Databox_X[ref]+width-16,Databox_Y[ref]+60,24,Databox_Pointer[ref],1)
		//Draw Tooltip
		draw_tooltip_skill(Databox_Pointer[ref],Databox_X[ref],Databox_Y[ref]+height+3);
		break; #endregion
		
	case "DB_Creatures": #region
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
		break; #endregion
		
	case "DB_Creatures1": #region Creature Stats 
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
		draw_text(Databox_X[ref]+2+att_width*0.5,Databox_Y[ref]+66,db_record_get("db_Creatures",Databox_Pointer[ref],"base_power"));
		draw_text(Databox_X[ref]+2+att_width*1.5,Databox_Y[ref]+66,db_record_get("db_Creatures",Databox_Pointer[ref],"base_fortitude"));
		draw_text(Databox_X[ref]+2+att_width*2.5,Databox_Y[ref]+66,db_record_get("db_Creatures",Databox_Pointer[ref],"base_speed"));
		draw_text(Databox_X[ref]+2+att_width*3.5,Databox_Y[ref]+66,db_record_get("db_Creatures",Databox_Pointer[ref],"base_recovery"));
		draw_text(Databox_X[ref]+2+att_width*4.5,Databox_Y[ref]+66,db_record_get("db_Creatures",Databox_Pointer[ref],"base_potency"));
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_lightgray);
		draw_text(Databox_X[ref]+2+att_width*0.5,Databox_Y[ref]+76,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"power_growth")));
		draw_text(Databox_X[ref]+2+att_width*1.5,Databox_Y[ref]+76,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"fortitude_growth")));
		draw_text(Databox_X[ref]+2+att_width*2.5,Databox_Y[ref]+76,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"speed_growth")));
		draw_text(Databox_X[ref]+2+att_width*3.5,Databox_Y[ref]+76,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"recovery_growth")));
		draw_text(Databox_X[ref]+2+att_width*4.5,Databox_Y[ref]+76,"+"+string(db_record_get("db_Creatures",Databox_Pointer[ref],"potency_growth")));
		draw_set_halign(fa_left);
		//Draw Icon
		draw_icon_dbcreature(Databox_X[ref]+width-16,Databox_Y[ref]+39,24,Databox_Pointer[ref],1);
		break; #endregion
		
	case "DB_Creatures3": #region Creature Skills
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
		var X = Databox_X[ref]+18; var Y = Databox_Y[ref]+29;
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
		break; #endregion
	
	case "PlayerContainer": #region
		var width = 167;
		var height = 46;
		//Draw Box
		draw_blackbox(Databox_X[ref],Databox_Y[ref],width,height);
		//Draw Fields
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+12,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+33,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+38,Databox_Y[ref]+33,width-40,11,c_midgray,0.3);
		//Draw Headers
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_midgray);
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+3,"ID:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+24,"Tag:");
		draw_text(Databox_X[ref]+40,Databox_Y[ref]+24,"Name:");
		//Draw Data
		draw_set_font(ft_EvoTooltipBold_6);
		draw_set_colour(c_lightgray);
		var id_string = string(Databox_Pointer[ref]);
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+13,id_string);
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+34,"["+Databox_Pointer[ref].PlayerTag+"]");
		draw_text_flatcolour(Databox_X[ref]+42,Databox_Y[ref]+34,Databox_Pointer[ref].PlayerName,Databox_Pointer[ref].PlayerColour,1);
		break; #endregion
		
	case "StorageCreature": #region
		var p = Databox_Pointer[ref];
		var player = Databox_Pointer[1];
		if ( !player.Stored_Status[p] ) { return false };
		var width = 140;
		var height = 109;
		//Draw Box
		draw_blackbox(Databox_X[ref],Databox_Y[ref],width,height);
		//Draw Fields
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+12,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+38,Databox_Y[ref]+12,width-40,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+33,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+38,Databox_Y[ref]+33,width-40,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+54,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+38,Databox_Y[ref]+54,60,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+75,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+96,width-4,11,c_midgray,0.3);
		//Draw Headers
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_midgray);
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+3,"ID:");
		draw_text(Databox_X[ref]+40,Databox_Y[ref]+3,"Name:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+24,"State:");
		draw_text(Databox_X[ref]+40,Databox_Y[ref]+24,"Species:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+45,"Level:");
		draw_text(Databox_X[ref]+40,Databox_Y[ref]+45,"Exp:");
		draw_text(Databox_X[ref]+100,Databox_Y[ref]+45,"Nature:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+66,"Skills:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+87,"Traits:");
		//Draw Data
		draw_set_font(ft_EvoTooltipBold_6);
		draw_set_colour(c_lightgray);
		if ( inparty(player,p) ) {	draw_text(Databox_X[ref]+6,Databox_Y[ref]+13,string(p)+"/"+string(inparty(player,p))) };
			else	   {	draw_text(Databox_X[ref]+6,Databox_Y[ref]+13,p) };
		draw_text(Databox_X[ref]+42,Databox_Y[ref]+13,player.Stored_Name[p]);
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+34,player.Stored_Status[p]);
		draw_text(Databox_X[ref]+16,Databox_Y[ref]+34,player.Stored_Form[p]);
		draw_text(Databox_X[ref]+26,Databox_Y[ref]+34,player.Stored_Quality[p]);
		draw_text(Databox_X[ref]+42,Databox_Y[ref]+34,string(player.Stored_Species[p])+":"+string(db_record_get("db_Creatures",player.Stored_Species[p],"name")));
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+55,player.Stored_Level[p]);
		draw_text(Databox_X[ref]+42,Databox_Y[ref]+55,player.Stored_Exp[p]);
		draw_text(Databox_X[ref]+102,Databox_Y[ref]+55,player.Stored_Nature[p]);
		draw_set_font(ft_EvoTooltip_6);
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+76,player.Stored_SkillString[p]);
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+97,player.Stored_TraitString[p]);
		break; #endregion
		
	case "PartyCreature": #region
		var p = Databox_Pointer[ref];
		var player = Databox_Pointer[1];
		if ( !player.Party_Status[p] ) { return false };
		var skill_height = 11 * ceil( array_length_2d(player.Party_Skill,p) / 7 );
		var trait_height = 11 * ceil( array_length_2d(player.Party_Trait,p) / 7 );
		var width = 140;
		var height = 87+skill_height+trait_height;
		//Draw Box
		draw_blackbox(Databox_X[ref],Databox_Y[ref],width,height);
		//Draw Fields
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+12,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+38,Databox_Y[ref]+12,width-40,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+33,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+38,Databox_Y[ref]+33,width-40,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+54,width-4,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+38,Databox_Y[ref]+54,60,11,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+75,width-4,skill_height,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+21,Databox_Y[ref]+75,19,skill_height,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+59,Databox_Y[ref]+75,19,skill_height,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+97,Databox_Y[ref]+75,19,skill_height,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+2,Databox_Y[ref]+85+skill_height,width-4,trait_height,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+21,Databox_Y[ref]+85+skill_height,19,trait_height,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+59,Databox_Y[ref]+85+skill_height,19,trait_height,c_midgray,0.3);
		draw_colouredplane(Databox_X[ref]+97,Databox_Y[ref]+85+skill_height,19,trait_height,c_midgray,0.3);
		//Draw Headers
		draw_set_font(ft_EvoSmallcaps_6);		
		if ( inbattle() )	{ draw_text_flatcolour(Databox_X[ref]+4,Databox_Y[ref]-10,"In Battle",c_fire,1) };
					   else { draw_text_flatcolour(Databox_X[ref]+4,Databox_Y[ref]-10,"Not In Battle",c_nature,1) };
		draw_set_font(ft_EvoTooltip_6);
		draw_set_colour(c_midgray);
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+3,"ID:");
		draw_text(Databox_X[ref]+40,Databox_Y[ref]+3,"Name:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+24,"State:");
		draw_text(Databox_X[ref]+40,Databox_Y[ref]+24,"Species:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+45,"Level:");
		draw_text(Databox_X[ref]+40,Databox_Y[ref]+45,"Exp:");
		draw_text(Databox_X[ref]+100,Databox_Y[ref]+45,"Nature:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+66,"Skills:");
		draw_text(Databox_X[ref]+4,Databox_Y[ref]+76+skill_height,"Traits:");
		//Draw Data
		draw_set_font(ft_EvoTooltipBold_6);
		draw_set_colour(c_lightgray);
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+13,string(p)+"/"+string(player.Party_StoredID[p]));
		draw_text(Databox_X[ref]+42,Databox_Y[ref]+13,player.Party_Name[p]);
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+34,player.Party_Status[p]);
		draw_text(Databox_X[ref]+16,Databox_Y[ref]+34,player.Party_Form[p]);
		draw_text(Databox_X[ref]+26,Databox_Y[ref]+34,player.Party_Quality[p]);
		draw_text(Databox_X[ref]+42,Databox_Y[ref]+34,string(player.Party_Species[p])+":"+string(db_record_get("db_Creatures",player.Party_Species[p],"name")));
		draw_text(Databox_X[ref]+6,Databox_Y[ref]+55,player.Party_Level[p]);
		draw_text(Databox_X[ref]+42,Databox_Y[ref]+55,player.Party_Exp[p]);
		draw_text(Databox_X[ref]+102,Databox_Y[ref]+55,player.Party_Nature[p]);
		draw_set_font(ft_EvoTooltip_6);
		draw_set_halign(fa_right);
		draw_text(Databox_X[ref]+width-4,Databox_Y[ref]+66,player.Party_SkillString[p]);
		draw_text(Databox_X[ref]+width-4,Databox_Y[ref]+76+skill_height,player.Party_TraitString[p]);
		draw_set_font(ft_EvoTooltipCondensed_6);
		var _x = Databox_X[ref]+19; var _y = Databox_Y[ref]+76;
		for ( var i=0 ; i<array_length_2d(player.Party_Skill,p); i++ ) {
			draw_text(_x,_y,player.Party_Skill[p,i]);
			_x += 19;
			if ( _x > Databox_X[ref]+width ) {
				_x = Databox_X[ref]+19; _y += 11;
				};
			};
		_x = Databox_X[ref]+19; _y = Databox_Y[ref]+86+skill_height;
		for ( var i=0 ; i<array_length_2d(player.Party_Trait,p); i++ ) {
			draw_text(_x,_y,player.Party_Trait[p,i]);
			_x += 19;
			if ( _x > Databox_X[ref]+width ) {
				_x = Databox_X[ref]+19; _y += 11;
				};
			};
		draw_set_halign(fa_left);
		break; #endregion
		
	};