//Check Keypress
MoveLeft =	keyboard_check( ord("A") );
MoveRight = keyboard_check( ord("D") );
MoveUp =	keyboard_check( ord("W") );
MoveDown =	keyboard_check( ord("S") );

//Move
if ( MoveLeft )		{	x -= MovementSpeed	};
if ( MoveRight )	{	x += MovementSpeed	};
if ( MoveUp )		{	y -= MovementSpeed	};
if ( MoveDown )		{	y += MovementSpeed	};

//Snap
if ( x < 0 ) { x = 0 };
if ( x > room_width ) { x = room_width };
if ( y < 0 ) { y = 0 };
if ( y > room_height ) { x = room_height };