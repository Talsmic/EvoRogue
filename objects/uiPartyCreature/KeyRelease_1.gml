/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/

//Number Keys: Change Target Creature
for ( var i=party_lastentry(Player) ; i>0 ; i-- ) { 
	if ( keyboard_check_released(ord(string(i))) ) { Party_Member = i };
	};
if ( !Player.Party_Status[Party_Member] ) { Party_Member = 1 };