/* LEGACY CODE

//Tabs
for ( i=0 ; i<5 ; i++) {
	if ( point_in_rectangle( mouse_x, mouse_y, x_main+8+41*i, y_main+160, x_main+48+41*i, y_main+174) 
		 and global.storage_status[30*i+1] != 0 ) {
		storage_page = i;
		};
	};
//Close
if ( point_in_rectangle( mouse_x, mouse_y, x_main+282, y_main+161, x_main+296, y_main+174 ) ) {
	instance_destroy();
	};
	
	
//Icons 
var i;
for ( i=1 ; i<=global.gps_partysize ; i++ ) {
	if ( point_in_rectangle( mouse_x, mouse_y, floor(x_main+i*29+136.5-global.gps_partysize*14.5)-14, y_main-17, floor(x_main+i*29+136.5-global.gps_partysize*14.5)+14, y_main+17 )) {	
		if ( ref_target == global.party_reference[Player, i] and global.party_reference[Player, i] != 0 ) {
			storage_addremove(Player,global.party_reference[Player, i]);
			} else {
			ref_target = global.party_reference[Player, i];
			if ( ref_target < 1 ) {	ref_target = 1 };
			};
		};
	};
var _x = x_main+19; var _y = y_main+80;
var icon_space = 29;
var offset = storage_page*30;
for ( i=1 ; i<31 ; i++) {
	if ( point_in_rectangle( mouse_x, mouse_y, _x-14, _y-14, _x+14, _y+14 ) ) {
		if ( ref_target == i+offset ) {
			storage_addremove(Player,i+offset);
			} else {
			ref_target = i+offset;
			if ( ref_target < 1 ) {	ref_target = 1 };
			};
		};
	_x+= icon_space;
	if ( _x > x_main + 300) {
		_x = x_main+19;
		_y += icon_space+1;
		};		
	};