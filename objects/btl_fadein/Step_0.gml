global.focus_layer[5] = 1;

if ( fadein ) {
	if ( alpha = 1.2 ) { 
		fadein = false;
		room_goto(target_rm);
		return;
		};
	alpha += 0.02;
	} else {
	if ( alpha = 0 ) { 
		global.focus_layer[5] = 0;
		instance_destroy();		
		return;
		};
	alpha -= 0.02;	
	};