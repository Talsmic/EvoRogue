/* LEGACY CODE
var x_offset = global.bal_chainsize*19;
var i; var j;
for ( i=1 ; i<=global.bal_chainsize ; i++ ) {
	if ( point_in_rectangle( mouse_x, mouse_y, x-x_offset+38*i-36, y-17, x-x_offset+38*i-2, y+17 ) ) {
		if ( chain_command[i] == 2 ) {
			for ( j=i+1 ; j<=global.bal_chainsize ; j++ ) {
				chain_command[j] = 0;
				chain_slot[j] = 0;
				chain_user[j] = 0;
				chain_recharge[j] = 0;				
				};
			};
		chain_command[i] = 0;
		chain_slot[i] = 0;
		chain_user[i] = 0;
		};
	};

if ( point_in_rectangle( mouse_x, mouse_y, x-30, y+20, x+30, y+39 ) ) {
	for ( i=1 ; i<=global.bal_chainsize ; i++ ) {
		btl_manager.chain_command[1,i] = chain_command[i];
		btl_manager.chain_slot[1,i] = chain_slot[i];
		};
	btl_manager.waitingforchain = false;
	};
	
