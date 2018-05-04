/// @desc party_updatetraitstring(player,party_member);
/// @arg player
/// @arg party_member
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var party_member = argument1;

if ( player.Party_Trait[party_member,1] == 0 ) { return "" };

//Collect Traits
var skill_list;
for ( var i=1 ; i<array_length_2d(player.Party_Trait,party_member); i++ ) {
	skill_list[i] = player.Party_Trait[party_member,i];
	};
	
//Create and Assign String
player.Party_TraitString[party_member] = array_to_skillstring(skill_list);