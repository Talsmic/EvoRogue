//Textpoint
if ( Text_Point > 0 ) { Text_Point-- };

party_effects_clear(Player,Party_Member);
//=[Stances]====================================================================
switch ( Player.Party_Stance[Party_Member] ) {
	case eEffects.sFlying:
		Jump_Offset = 0;
		Jump_Speed = 0;
		break;
	case eEffects.sRooted:
		if ( Jump_Offset > Flight_Height ) { Jump_Speed -= 0.1 };
		if ( Jump_Offset < Flight_Height and Jump_Speed < 1 ) { Jump_Speed += 0.1 };
		break;
	};

//=[Effects]====================================================================
//Jump
Jump_Offset += Jump_Speed;
if ( Jump_Offset > 0 and Player.Party_Stance[Party_Member] != eEffects.sFlying ) { Jump_Speed += Gravity_Speed };
if ( Jump_Offset < 0 ) { Jump_Offset = 0 };
//Flash
if (Flash_Intensity > 0) {
	Flash_Intensity -= Flash_Fade;
	};
//Pivot
Sprite_Rotation += Rotation_Speed*Facing;
if ( Rotation_Speed > 0 ) { Rotation_Speed += Gravity_Speed };
if ( Rotation_Speed < 0 ) { Rotation_Speed -= Gravity_Speed };
if ( Rotation_Speed == 0 ) { 
	Sprite_Rotation = round(Sprite_Rotation);
	if ( Sprite_Rotation < 0 ) { Sprite_Rotation++ };
	if ( Sprite_Rotation < 0 ) { Sprite_Rotation++ };
	if ( Sprite_Rotation > 0 ) { Sprite_Rotation-- };
	if ( Sprite_Rotation > 0 ) { Sprite_Rotation-- };
	};