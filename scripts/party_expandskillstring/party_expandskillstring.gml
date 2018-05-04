/// @desc party_expandskillstring(player,party_member);
/// @arg player
/// @arg party_member
/*
	[Edited 2/5/2018]
*/
var player = argument0;
var party_member = argument1;
var skill_string = player.Party_SkillString[party_member];

//Parse String
var skill_list = parse_array1d(skill_string,"|");

//Empty Old List
for ( var i=0 ; i<array_length_2d(player.Party_Skill,party_member); i++ ) {
	player.Party_Skill[party_member,i] = 0;
	};

//Repopulate List
player.Party_Skill[party_member,0] = 1; //Basic Attack at 0
for ( var i=1 ; i<array_length_1d(skill_list); i++ ) {
	player.Party_Skill[party_member,i] = real(skill_list[i]);
	};