/* LEGACY CODE

//Textpoint
if ( textpoint > 0 ) { textpoint-- };

//Stances
//Rooted
if ( global.party_stance[ref_player, ref_creature] == 43 ) { 
	jump_offset = 0;
	jump_speed = 0;
	};
//Flying
if ( global.party_stance[ref_player, ref_creature] == 42 ) { 
	if ( jump_offset > flight_height ) { jump_speed -= 0.1 };
	if ( jump_offset < flight_height and jump_speed < 1 ) { jump_speed += 0.1 };
	};

//Effect: Jump
jump_offset += jump_speed;
if ( jump_offset > 0 and global.party_stance[ref_player, ref_creature] != 42 ) { jump_speed += gravity_speed };
if ( jump_offset < 0 ) { jump_offset = 0 };

//Effect: Flash
if (flash_intensity > 0) {
	flash_intensity -= flash_fade;
	};
	
//Effect: Pivot
rotation += rotation_speed*facing;
if ( rotation_speed > 0 ) { rotation_speed += gravity_speed };
if ( rotation_speed < 0 ) { rotation_speed -= gravity_speed };
if ( rotation_speed == 0 ) { 
	rotation = round(rotation);
	if ( rotation < 0 ) { rotation++ };
	if ( rotation < 0 ) { rotation++ };
	if ( rotation > 0 ) { rotation-- };
	if ( rotation > 0 ) { rotation-- };
	};