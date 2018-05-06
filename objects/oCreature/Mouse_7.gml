
if ( AllowMouseSelection == 1 ) {
	if ( Selected ) { Selected = false }
	else { with ( oCreature ) { Selected = false; Targeted = false };	Selected = true; alarm[0] = 1 };
	};
	
if ( AllowMouseTargetting == 1 and !Selected ) {
	with ( oCreature ) {
		Targeted = false;
		if ( Selected ) { Target = other };
		};
	};