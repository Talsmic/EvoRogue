alpha += alpha_speed;
draw_set_alpha(alpha);

var x_offset = global.bal_chainsize*19;
var stored_tt = 0;
var empty_slots = 0;
var i; var j;
for ( i=1 ; i<=global.bal_chainsize ; i++ ) { 
	if ( chain_command[i] == 0 ) { empty_slots++ };
	};

//Draw Box
draw_blackbox_sharp(x-3-x_offset,y-12,6+global.bal_chainsize*38,24,1,1,1,1);
draw_sprite_ext(spr_blackboxcaps24,0,x-3-x_offset,y+12,-1,-1,0,c_white,alpha);
draw_sprite_ext(spr_blackboxcaps24,0,x+3+x_offset,y+12,1,-1,0,c_white,alpha);
draw_set_halign(fa_center);
draw_set_font(ft_EvoSmallcaps_6);
draw_text_outline(x,y-42,"Your Commands",c_white);
if ( empty_slots ) { 
	draw_text_outline(x,y-32,"[add "+string(empty_slots)+" more]",c_lightgray); 
} else { draw_text_outline(x,y-32,"[press fight!]",c_lightgray) };

//Draw Icons
active_energy = 0;
for ( i=1 ; i<=global.bal_chainsize ; i++ ) {
	var skill = 0;
	switch ( chain_slot[i] ) {
		case 1:		skill = global.party_skillA[1,chain_user[i]]; break;
		case 2:		skill = global.party_skillB[1,chain_user[i]]; break;
		case 3:		skill = global.party_skillC[1,chain_user[i]]; break;
		case 4:		skill = global.party_skillD[1,chain_user[i]]; break;
		case 5:		skill = global.party_skillE[1,chain_user[i]]; break;
		case 11:	skill = global.party_skill1[1,chain_user[i]]; break;
		case 12:	skill = global.party_skill2[1,chain_user[i]]; break;
		case 13:	skill = global.party_skill3[1,chain_user[i]]; break;
		case 14:	skill = global.party_skill4[1,chain_user[i]]; break;
		case 15:	skill = global.party_skill5[1,chain_user[i]]; break;
		case 16:	skill = global.party_skill6[1,chain_user[i]]; break;
		case 17:	skill = global.party_skill7[1,chain_user[i]]; break;
		case 18:	skill = global.party_skill8[1,chain_user[i]]; break;
		case 19:	skill = global.party_skill9[1,chain_user[i]]; break;		
		};
	switch ( chain_command[i] ) {
		case 0: default: //No Command
			draw_icon_skill(x-x_offset+38*i-19,y,32,0,0);
			chain_recharge[i] = 0;
			break;
		case 1: //Use Skill
			draw_icon_skill(x-x_offset+38*i-19,y,32,skill,1);
			if ( point_in_rectangle( mouse_x, mouse_y, x-x_offset+38*i-36, y-17, x-x_offset+38*i-2, y+17 ) ) {
				stored_tt = skill;
				};
			chain_recharge[i] = db_record_get("db_Skills",skill,"recharge");
			break;
		case 2: //Change Creature
			draw_icon_creature(x-x_offset+38*i-19,y,32,global.party_species[1,chain_slot[i]],1);
			chain_recharge[i] = 0;
			for ( j=i+1 ; j<=global.bal_chainsize ; j++ ) {
				chain_command[j] = 1;
				chain_slot[j] = 1;
				chain_user[j] = chain_slot[i];
				chain_recharge[j] = 0;				
				};
			break;			
		};
	};
	
//Draw Button
var button_colour = c_shadow;
var button_textcolour = c_gray;
if ( point_in_rectangle( mouse_x, mouse_y, x-30, y+20, x+30, y+39 ) ) {
	button_colour = c_shadow_dark;
	button_textcolour = c_white;
	};
if ( empty_slots ) { 
	button_colour = c_midgray;	
	if ( point_in_rectangle( mouse_x, mouse_y, x-30, y+20, x+30, y+39 ) ) {
		button_colour = c_darkgray;	
		};
	};
draw_colourbox(x-30,y+20,60,19,button_colour);
draw_colourbox(x-30,y+20,60,19,button_colour);
draw_text_outline(x,y+25,"FIGHT",button_textcolour);	
draw_set_halign(fa_left);

//====================================================================
//Draw Tooltip: Skills
if (stored_tt > 0) { draw_tooltip_skill(stored_tt) };

draw_set_alpha(1);