/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/

//Number Keys: Change Target Creature
for ( var i=party_lastentry(Player) ; i>0 ; i-- ) { 
	if ( keyboard_check_released(ord(string(i))) ) { Party_Member = i };
	};
if ( !Player.Party_Status[Party_Member] ) { Party_Member = 1 };

//Tab: Rotate Tabs
if ( keyboard_check_released(vk_tab) ) {		
	switch ( Tabset_Pointer[1] ) {
		case 1:		Databox_Type[2] = "PartyCreature:Passives"		break;
		case 2:		Databox_Type[2] = "PartyCreature:Status"		break;
		case 3:		Databox_Type[2] = "PartyCreature:Skills"		break;
		};
	};
	
//PgUp PgDn: Change Genome
if ( keyboard_check_released(vk_pageup) ) {		
	Player.Party_Genome[Party_Member]++
	if ( Player.Party_Genome[Party_Member] > 5 ) { Player.Party_Genome[Party_Member] = 0 };
	};
if ( keyboard_check_released(vk_pagedown) ) {		
	Player.Party_Genome[Party_Member]--
	if ( Player.Party_Genome[Party_Member] < 0 ) { Player.Party_Genome[Party_Member] = 5 };
	};
	
