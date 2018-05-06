/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/

ui_listbox_keyrelease();

//[Test Functions]
if ( keyboard_check_released(ord("0")) ) { DrawExtraCommands = toggle(DrawExtraCommands) };	
if ( keyboard_check_released(vk_backspace) ) {	
	if ( inbattle() ) { global.battle_engaged = false };
	else { enterbattle() };
	};		
switch ( Mode ) {
	case "Storage":		
		if ( keyboard_check_released(ord("1")) ) {		party_add_fromstorage(PlayerID,Listbox_Position)	};
		if ( keyboard_check_released(ord("2")) ) {		party_remove(PlayerID,inparty(PlayerID,Listbox_Position))	};
		if ( keyboard_check_released(ord("8")) ) {		storage_remove(PlayerID,Listbox_Position)	};
		if ( keyboard_check_released(ord("9")) ) {		Listbox_Position -= storage_condense(PlayerID,Listbox_Position)	};	
		break;
	case "Party":	
		if ( keyboard_check_released(ord("1")) ) {		party_add_fromstorage(PlayerID,irandom_range(1,storage_lastentry(PlayerID)))	};
		if ( keyboard_check_released(ord("2")) ) {		party_remove(PlayerID,Listbox_Position)	};
		if ( keyboard_check_released(ord("8")) ) {		storage_remove(PlayerID,PlayerID.Party_StoredID[Listbox_Position])	};
		if ( keyboard_check_released(ord("9")) ) {		Listbox_Position -= party_condense(PlayerID,Listbox_Position)	};	
		break;
	};
if ( Listbox_Position < 1 ) { Listbox_Position = 1 };