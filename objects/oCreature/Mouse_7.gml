if ( AllowMouseSelection and !Selected ) {
	with ( oCreature ) { Selected = false };
	Selected = true;
	alarm[0] = 1; //Update
	};
	
if ( AllowMouseSelection and Selected ) {
	Selected = false;
	};