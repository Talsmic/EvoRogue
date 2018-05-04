/* LEGACY CODE

//Change Tabs
if ( point_in_rectangle( mouse_x, mouse_y, x_main, y_main+150, x_main+60, y_main+162 ) ) {
	mode = 1;
	};
if ( point_in_rectangle( mouse_x, mouse_y, x_main+62, y_main+150, x_main+122, y_main+162 ) ) {
	mode = 2;
	};
if ( point_in_rectangle( mouse_x, mouse_y, x_main+124, y_main+150, x_main+184, y_main+162 ) ) {
	mode = 3;
	};

//Close	
if ( point_in_rectangle( mouse_x, mouse_y, x_main+282, y_main+151, x_main+296, y_main+164 ) ) {
	instance_destroy();
	};

//Change StatStar
if ( point_in_rectangle( mouse_x, mouse_y, x_stats, y_stats-16, x_stats+16, y_stats ) ) {
	global.party_nature[ref_player,ref_party]++;
	if ( global.party_nature[ref_player,ref_party] > 5 ) { global.party_nature[ref_player,ref_party] = 0 };
	};

//-[Mode 2: Skills]---------------------------------------------------
if (mode == 2) {
	var _x = x_main-10; var _y = y_main+63;
	//Remove Skills
	if ( point_in_rectangle( mouse_x, mouse_y, icon_start-14, y_main+4, icon_start+12, y_main+39 ) ) {
		global.party_skill1[ref_player, ref_party] = 0;
		};
	if ( point_in_rectangle( mouse_x, mouse_y, icon_start+16, y_main+4, icon_start+42, y_main+39 ) ) {
		global.party_skill2[ref_player, ref_party] = 0;
		};
	if ( point_in_rectangle( mouse_x, mouse_y, icon_start+46, y_main+4, icon_start+72, y_main+39 ) ) {
		global.party_skill3[ref_player, ref_party] = 0;
		};
	if ( point_in_rectangle( mouse_x, mouse_y, icon_start+76, y_main+4, icon_start+102, y_main+39 ) ) {
		global.party_skill4[ref_player, ref_party] = 0;
		};
	if ( point_in_rectangle( mouse_x, mouse_y, icon_start+106, y_main+4, icon_start+132, y_main+39 ) ) {
		global.party_skill5[ref_player, ref_party] = 0;
		};
	//Add Skills
	for ( i=1 ; i<array_height_2d(skillset) ; i++) {
		_x+= 29;
		if ( _x > 448 ) {
			_x = 167;
			_y += 30;
			};		
		if ( point_in_rectangle( mouse_x, mouse_y, _x-14, _y-14, _x+14, _y+14 ) ) {
			if ( global.party_level[ref_player, ref_party] < skillset[i, 2] ) { break };
			if (global.party_skill1[ref_player, ref_party] == skillset[i,1]) { 
				global.party_skill1[ref_player, ref_party] = 0;
				break; 
				};
			if (global.party_skill2[ref_player, ref_party] == skillset[i,1]) { 
				global.party_skill2[ref_player, ref_party] = 0;
				break; 
				};
			if (global.party_skill3[ref_player, ref_party] == skillset[i,1]) { 
				global.party_skill3[ref_player, ref_party] = 0;
				break; 
				};
			if (global.party_skill4[ref_player, ref_party] == skillset[i,1]) { 
				global.party_skill4[ref_player, ref_party] = 0;
				break; 
				};
			if (global.party_skill5[ref_player, ref_party] == skillset[i,1]) { 
				global.party_skill5[ref_player, ref_party] = 0;
				break; 
				};
			//Slot1
			if (global.party_skill1[ref_player, ref_party] == 0) {
				global.party_skill1[ref_player, ref_party] = skillset[i,1];
				break;
				};
			//Slot2
			if (global.party_skill2[ref_player, ref_party] == 0) {
				global.party_skill2[ref_player, ref_party] = skillset[i,1];
				break;
				};
			//Slot3
			if (global.party_skill3[ref_player, ref_party] == 0 and global.party_level[ref_player, ref_party] >= 3) {
				global.party_skill3[ref_player, ref_party] = skillset[i,1];
				break;
				};
			//Slot4
			if (global.party_skill4[ref_player, ref_party] == 0 and global.party_level[ref_player, ref_party] >= 5) {
				global.party_skill4[ref_player, ref_party] = skillset[i,1];
				break;
				};
			//Slot5
			if (global.party_skill5[ref_player, ref_party] == 0 and global.party_level[ref_player, ref_party] >= 7) {
				global.party_skill5[ref_player, ref_party] = skillset[i,1];
				break;
				};
			};
		};
	};