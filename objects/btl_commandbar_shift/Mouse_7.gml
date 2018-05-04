if ( offset_speed > 0 ) { return };

//Creature Buttons
var i; 
var skill_offset = -12;
for ( i=1 ; i<=global.gps_partysize ; i++ ) {
	if ( global.party_status[1, i] == eCreatureState.nonexistant ) { continue };
	skill_offset += 30;
	if ( global.party_status[1, i] == eCreatureState.active ) { continue };
	if ( global.party_status[1, i] == eCreatureState.defeated ) { continue };
	if ( point_in_rectangle( mouse_x, mouse_y, skill_offset-14, y-18, skill_offset+12, y+16 ) ) {
		btl_manager.shift_selection_1 = i;
		alarm[1] = 1;
		};
	};