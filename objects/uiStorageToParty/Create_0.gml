/* LEGACY CODE

global.focus_layer[4] = 1;

Player = 1;
ref_target = 1;
storage_page = 0;

x_main = x+90;
y_main = y+56;

var i;
for ( i=1 ; i<=global.gps_partysize ; i++ ) {
	storage_updatefromparty(Player,i);
	};