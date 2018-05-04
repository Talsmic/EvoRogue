/*Focus Level*/if (find_focus() > 3) { return 0 };

if ( keyboard_check_released( ord("1") ) ) {
	ref_party = 1;
	};
if ( keyboard_check_released( ord("2") ) ) {
	ref_party = 2;
	};
if ( keyboard_check_released( ord("3") ) ) {
	ref_party = 3;
	};
if ( keyboard_check_released( ord("4") ) ) {
	ref_party = 4;
	};
if ( keyboard_check_released( ord("5") ) ) {
	ref_party = 5;
	};
if ( keyboard_check_released( ord("6") ) ) {
	ref_party = 6;
	};
if ( keyboard_check_released( ord("7") ) ) {
	ref_party = 7;
	};
if ( keyboard_check_released( ord("8") ) ) {
	ref_party = 8;
	};
	
if ( keyboard_check_released( ord("Q") ) ) {
	global.party_level[ref_player, ref_party]++;
	if (global.party_level[ref_player, ref_party] > 10) {global.party_level[ref_player, ref_party] = 10}
	};
if ( keyboard_check_released( ord("W") ) ) {
	global.party_level[ref_player, ref_party]--;
	if (global.party_level[ref_player, ref_party] < 0) {global.party_level[ref_player, ref_party] = 0}
	};