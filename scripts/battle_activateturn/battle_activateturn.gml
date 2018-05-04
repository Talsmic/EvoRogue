/// @desc battle_activateturn(player,turn);
/// @arg player
/// @arg turn
/*
	[Edited 20/6/2017]
	Activates the stored turn for a creature
*/
var player = argument0;
var turn = argument1;
/*
//[1] Use Skill
if ( chain_command[player,turn] == 1 ) {
	var skill = 0;
	switch ( chain_slot[player,turn] ) {
		case 1:		skill = global.party_skillA[player,global.active_creature[player,1]]; break;
		case 2:		skill = global.party_skillB[player,global.active_creature[player,1]]; break;
		case 3:		skill = global.party_skillC[player,global.active_creature[player,1]]; break;
		case 4:		skill = global.party_skillD[player,global.active_creature[player,1]]; break;
		case 5:		skill = global.party_skillE[player,global.active_creature[player,1]]; break;
		case 11:	skill = global.party_skill1[player,global.active_creature[player,1]]; break;
		case 12:	skill = global.party_skill2[player,global.active_creature[player,1]]; break;
		case 13:	skill = global.party_skill3[player,global.active_creature[player,1]]; break;
		case 14:	skill = global.party_skill4[player,global.active_creature[player,1]]; break;
		case 15:	skill = global.party_skill5[player,global.active_creature[player,1]]; break;
		case 16:	skill = global.party_skill6[player,global.active_creature[player,1]]; break;
		case 17:	skill = global.party_skill7[player,global.active_creature[player,1]]; break;
		case 18:	skill = global.party_skill8[player,global.active_creature[player,1]]; break;
		case 19:	skill = global.party_skill9[player,global.active_creature[player,1]]; break;		
		};
	skill_use(player,global.active_creature[player,1],skill,true);
	};
//[2] Switch Creature
if ( chain_command[player,turn] == 2 ) {
	switch_use(player,chain_slot[player,turn],0);
	};