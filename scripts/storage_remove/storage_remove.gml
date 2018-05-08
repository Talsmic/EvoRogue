///storage_remove(player,stored_creature)
/// @arg player
/// @arg stored_creature
var player = argument0;
var stored_creature = argument1;
/*
	[Edited 4/5/2018]
	Removes the targeted creature from the player's storage, and party
	A creature removed like this is gone
*/

//Remove from Party
if ( inparty(player,stored_creature) ) { party_remove(player,inparty(player,stored_creature)) };

//Reset Storage slot to defaults
player.Stored_Status[stored_creature] = eCreatureState.nonexistant;

player.Stored_Species[stored_creature] = 0;
player.Stored_Name[stored_creature] = "nil";
player.Stored_Form[stored_creature] = 0;				
player.Stored_Quality[stored_creature] = 0;		
player.Stored_Genome[stored_creature] = 0;		
player.Stored_Level[stored_creature] = 0;
player.Stored_Exp[stored_creature] = 0;
player.Stored_SkillString[stored_creature] = 0;	
player.Stored_TraitString[stored_creature] = 0;	