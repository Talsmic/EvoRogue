/// @desc party_expandtraitstring(player,party_member);
/// @arg player
/// @arg party_member
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var party_member = argument1;
var trait_string = player.Party_TraitString[party_member];

//Parse String
var trait_list = parse_array1d(trait_string,"|");

//Empty Old List
for ( var i=0 ; i<array_length_2d(player.Party_Trait,party_member); i++ ) {
	player.Party_Trait[party_member,i] = 0;
	};

//Repopulate List
player.Party_Trait[party_member,0] = 1; //Basic Attack at 0
for ( var i=1 ; i<=array_length_1d(trait_list); i++ ) {
	player.Party_Trait[party_member,i] = trait_list[i];
	};