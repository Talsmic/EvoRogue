/// @description Add Command
var i;
for ( i=1 ; i<=global.bal_chainsize ; i++ ) {
	if ( chain_command[i] ) { continue };
	chain_command[i] = chain_command[0];
	chain_slot[i] = chain_slot[0];
	chain_user[i] = chain_user[0];	
	break;
	};