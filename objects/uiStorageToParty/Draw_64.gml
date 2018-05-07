/* LEGACY CODE

party_condense(1);
global.focus_layer[4] = 1;

if ( ref_target < 1 ) {	ref_target = 1 };
if ( global.storage_status[ref_target] == 0 ) {	ref_target = 1 };

//Whiteout
draw_sprite_ext(bg_screen,0,0,0,1,1,0,c_white,0.75);

//=[Party]============================================================
//Draw Box
draw_blackbox_sharp(x_main,y_main,300,21,0,0,1,1);
//Draw Icons
var state;
var panel = instance_nearest(x,y,ui_creatureinfopanel);
var i; var j;
for ( i=1 ; i<=global.Default_PartySize ; i++ ) {
	state = 0;
	if ( point_in_rectangle( mouse_x, mouse_y, floor(x_main+i*29+136.5-global.Default_PartySize*14.5)-14, y_main-17, floor(x_main+i*29+136.5-global.Default_PartySize*14.5)+14, y_main+17 )) {	state = 2	};
	if ( ref_target == global.party_reference[Player, i] ) {	state = 2	};
	draw_icon_creature(floor(x_main+i*29+136.5-global.Default_PartySize*14.5),y_main,24.32,Player.Party_Species[ i],state);
	};
//====================================================================

//=[Target]===========================================================
draw_colouredplane(x_main+1,y_main+21,298,1,c_darkgray,0.8);
draw_blackbox_sharp(x_main,y_main+22,300,40,1,1,1,1);
draw_icon_creature(x_main+22,y_main+42,32,global.storage_species[ref_target],0);
var name = global.storage_name[ref_target];
var s_name = db_record_get("db_Creatures",global.storage_species[ref_target],"name");
var typeA = db_record_get("db_Creatures",global.storage_species[ref_target],"elementA");
var typeB = db_record_get("db_Creatures",global.storage_species[ref_target],"elementB");
var typeC = db_record_get("db_Creatures",global.storage_species[ref_target],"family");
//Draw Name
draw_set_font(ft_EvoLarge_12);
draw_text_outline(x_main+45,y_main+24,name,c_white);
draw_text_outline(x_main+44,y_main+24,name,c_white);
//Draw Species
draw_set_font(ft_EvoTooltipBold_6);
draw_text_colour(x_main+44,y_main+42,s_name,c_white,c_white,c_white,c_white,0.5);
//Draw Type
var type_c = find_colour(typeA);
draw_text_colour(x_main+44,y_main+51,typeA,type_c,type_c,type_c,type_c,1);
if ( typeB != "" ) {
	type_c = find_colour(typeB);
	draw_text_colour(x_main+45+string_width(typeA),y_main+51,"|",c_white,c_white,c_white,c_white,0.2);
	draw_text_colour(x_main+46+string_width(typeA+"|"),y_main+51,typeB,type_c,type_c,type_c,type_c,1);
	};
//Draw Stat Star
switch (global.storage_nature[ref_target]) {
	default: 	var c_stat = c_white;		break;
	case 1:		var c_stat = c_power;		break;
	case 2:		var c_stat = c_fortitude;	break;
	case 3:		var c_stat = c_speed;		break;
	case 4:		var c_stat = c_recovery;	break;
	case 5:		var c_stat = c_potency;		break;
	};
draw_sprite_ext(spr_naturestar,1,x_main+36,y_main+55,1,1,0,c_stat,1);
//====================================================================

//=[Storage]==========================================================
var offset = storage_page*30;
draw_colouredplane(x_main+1,y_main+62,298,1,c_darkgray,0.8);
draw_blackbox_sharp(x_main,y_main+63,300,97,1,1,0,0);
//Tabs
draw_set_halign(fa_center); 
draw_set_font(ft_EvoTooltipBold_6);
for ( i=0 ; i<5 ; i++) {
	if ( storage_page == i ) {
		draw_set_colour(c_white);
		draw_blackbox_sharp(x_main+8+41*i,y_main+160,40,14,1,1,0,0);
		} else {
		draw_set_colour(c_lightgray);
		draw_blackbox_sharp(x_main+8+41*i,y_main+161,40,12,1,1,0,0);
		};
	if ( point_in_rectangle( mouse_x, mouse_y, x_main+8+41*i, y_main+160, x_main+48+41*i, y_main+174 ) ) {
		draw_set_colour(c_orange);
		};
	if ( global.storage_status[30*i+1] == 0 ) {
		draw_set_colour(c_darkgray);
		};
	draw_text(x_main+28+41*i,y_main+162,"Box "+string(i+1));
	};
draw_set_halign(fa_left);
//Close
draw_blackbox_sharp(x_main+282,y_main+161,14,13,0,0,0,0);
draw_set_colour(c_white);	
if ( point_in_rectangle( mouse_x, mouse_y, x_main+282, y_main+161, x_main+296, y_main+174 ) ) {
	draw_set_colour(c_orange);
	};
draw_text(x_main+286,y_main+163,"X");	
//Icons 
var _x = x_main+19; var _y = y_main+80;
var icon_space = 29;
for ( i=1 ; i<31 ; i++) {
	if ( global.storage_status[offset+i] == 0 ) {
		_x+= icon_space;
		if ( _x > x_main + 300) {
			_x = x_main+19;
			_y += icon_space+1;
			};		
		continue;
		};
	state = 0;
	//Mouseover
	if ( point_in_rectangle( mouse_x, mouse_y, _x-14, _y-14, _x+14, _y+14 ) ) {
		state = 2;
		};
	if ( ref_target == i+offset ) {
		state = 2;
		};
	//Draw	  
	draw_icon_creature(_x,_y,24,global.storage_species[i+offset],state);
	for ( j=1 ; j<=global.Default_PartySize ; j++ ) {
		if ( global.party_reference[Player, j] = i+offset ) {
			draw_sprite_ext(spr_icon_frame_24x24halo,state,_x,_y,1,1,0,c_green,0.5);
			};
		};	
	_x+= icon_space;
	if ( _x > x_main + 300) {
		_x = x_main+19;
		_y += icon_space+1;
		};		
	};
//====================================================================