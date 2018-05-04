text_title = "Battle"
text_ruleset = "3v3"
text_desc = "Defeat three of\nyour opponent's\ncreatures to win"

banner = 0;
banner_colour = c_shadow_dark;
banner_colour2 = c_electric;
banner_colour3 = c_electric_dark;

team_preview_offset = 0//-100;
tp_y = 180

player_teamsize = 1
opponent_teamsize = 1 
selection = 1;
for ( i=global.gps_partysize ; i>0 ; i-- ) {
	if ( global.party_status[1, i] == eCreatureState.nonexistant ) { continue };
	if ( global.party_status[1, i] == eCreatureState.defeated ) { continue };
	selection = i;
	};