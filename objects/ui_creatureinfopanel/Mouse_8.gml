/*Focus Level*/if (find_focus() > 3) { return 0 };

//Change StatStar
if ( point_in_rectangle( mouse_x, mouse_y, x_stats, y_stats-16, x_stats+16, y_stats ) ) {
	global.party_nature[ref_player,ref_party]--;
	if ( global.party_nature[ref_player,ref_party] < 0 ) { global.party_nature[ref_player,ref_party] = 5 };
	};