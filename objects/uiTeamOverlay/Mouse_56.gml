/* LEGACY CODE

var panel = instance_nearest(x,y,ui_creatureinfopanel);
//Icons
var i;
for ( i=1 ; i<=global.gps_partysize ; i++ ) {
	if ( global.party_status[Player, i] and point_in_rectangle( mouse_x, mouse_y, x+i*29-27, y-17, x+i*29, y+17 ) ) {
		//If no Info Panel exists, create one
		if (panel == noone) {
			panel = instance_create_depth(0,0,-30,ui_creatureinfopanel);
			};
		//Change Creature Focus
		panel.ref_party = i;
		};
	};
	
//Team Change
if ( point_in_rectangle( mouse_x, mouse_y, 372, y-4, 452, y+20 )) {
	instance_create_depth(0,0,-40,ui_storage);
	};