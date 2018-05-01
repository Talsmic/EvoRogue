/// @desc party_updatetraitstring(player,party_member);
/// @arg player
/// @arg party_member
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var party_member = argument1;
var trait_string = player.Party_TraitString[party_member];

//Collect Traits
var trait_list;
for ( var i=1 ; i<=array_length_2d(player.Party_Trait,party_member); i++ ) {
	trait_list[i] = player.Party_Trait[party_member,i];
	};
	
//Create and Assign String
player.Party_TraitString[party_member] = array_to_skillstring(trait_list);