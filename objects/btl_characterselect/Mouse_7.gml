for ( i=1 ; i<=global.gps_partysize ; i++ ) {
	if ( global.party_status[1, i] == eCreatureState.nonexistant ) { continue };
	if ( global.party_status[1, i] == eCreatureState.defeated ) { continue };
	if ( point_in_rectangle( mouse_x, mouse_y, team_preview_offset+i*25-25, tp_y-20, team_preview_offset+i*25-2, tp_y+17 )) {	selection = i	};
	};
if ( point_in_rectangle( mouse_x,mouse_y,0,tp_y+21,120,tp_y+45 )) {	
	btl_manager.opener_selection_1 = selection;
	instance_destroy();	
	};