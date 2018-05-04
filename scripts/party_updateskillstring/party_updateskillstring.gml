/// @desc party_updateskillstring(player,party_member);
/// @arg player
/// @arg party_member
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var party_member = argument1;

if ( player.Party_Skill[party_member,1] == 0 ) { return "" };

//Collect Skills
var skill_list;
for ( var i=1 ; i<array_length_2d(player.Party_Skill,party_member); i++ ) {
	skill_list[i] = player.Party_Skill[party_member,i];
	};
	
//Create and Assign String
player.Party_SkillString[party_member] = array_to_skillstring(skill_list);