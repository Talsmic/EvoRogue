offset += offset_speed;

var state;
var stored_tt = 0;

//Draw Bar
var bar_size = 5;
var i;
for ( i=1 ; i<=global.gps_partysize ; i++ ) {
	if ( global.party_status[1, i] ) {	bar_size += 30	};
	};
draw_blackbox_sharp(offset,y-16,bar_size,32,1,1,1,1);
draw_sprite_ext(spr_blackboxcaps32,0,offset+bar_size,y+16,1,-1,0,c_white,1);

//Draw Creatures
var i; 
var skill_offset = 18;
for ( i=1 ; i<=global.gps_partysize ; i++ ) {
	if ( global.party_status[1, i] == eCreatureState.nonexistant ) { continue };
	state = 1;
	//Mouseover
	if ( point_in_rectangle( mouse_x, mouse_y, skill_offset-14, y-18, skill_offset+12, y+16 ) ) {
		state = 2;		
		stored_tt = i;
		};
	//Defeated
	if ( global.party_status[1, i] == eCreatureState.defeated ) { state = 6 };	
	//Draw
	draw_icon_creature(offset+skill_offset,y,24.32,global.party_species[1, i],state);
	skill_offset += 30;
	};
//Draw Tooltip
if ( stored_tt ) { draw_tooltip_party(1,stored_tt,2,1,0) };