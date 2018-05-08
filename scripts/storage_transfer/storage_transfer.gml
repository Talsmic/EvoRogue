///storage_transfer(playerA,playerB,partymemberA,partymemberB);
/// @arg playerA
/// @arg playerB
/// @arg stored_creature
/// @arg stored_creature2
//Copies from playerA.stored_creatureA over the top of playerB.stored_creatureB
var playerA = argument0;
var playerB = argument1;
var stored_creature = argument2;
var stored_creature2 = argument3;

//IDs
playerA.Stored_Status[stored_creature] =		playerB.Stored_Status[stored_creature2];

//Core Information
playerA.Stored_Species[stored_creature] =		playerB.Stored_Species[stored_creature2];
playerA.Stored_Name[stored_creature] =			playerB.Stored_Name[stored_creature2];
playerA.Stored_Form[stored_creature] =			playerB.Stored_Form[stored_creature2];
playerA.Stored_Quality[stored_creature] =		playerB.Stored_Quality[stored_creature2];
playerA.Stored_Genome[stored_creature] =		playerB.Stored_Genome[stored_creature2];
playerA.Stored_Level[stored_creature] =			playerB.Stored_Level[stored_creature2];
playerA.Stored_Exp[stored_creature] =			playerB.Stored_Exp[stored_creature2];

//Skills and Traits
playerA.Stored_SkillString[stored_creature] =	playerB.Stored_SkillString[stored_creature2];
playerA.Stored_TraitString[stored_creature] =	playerB.Stored_TraitString[stored_creature2];
