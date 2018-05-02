/// @desc storage_create_creature(player,creature_species,creature_level);
/// @arg player
/// @arg creature_species
/// @arg creature_level
/*
	[Edited 1/5/2018]
	Saves a basic creature of the species to the first open slot in storage
	Returns the slot saved to
*/
var player = argument0;
var creature_species = argument1;
var creature_level = argument2;
var slot = storage_firstemptyslot(player);

//Default Creature Settings
player.Stored_Status[slot] = eCreatureState.existant;
player.Stored_Species[slot] = creature_species;
player.Stored_Name[slot] = db_record_get("db_Creatures",creature_species,"name");

player.Stored_Level[slot] = creature_level;
player.Stored_Exp[slot] = 0;

player.Stored_Nature[slot] = irandom(5);

//Create Skillset
var skillpoints = 3+creature_level;
var skillarray = [0];
var skillset = DBcreature_skillset( creature_species );
var skillslot = 1;
//Add Random Skills
repeat 20 {
	var random_skill = skillset[irandom_range(1,array_height_2d(skillset)-1),0];
	if ( !array_contains_1d(skillarray,random_skill) ) {
		skillarray[skillslot] = random_skill;
		skillpoints--;
		skillslot++;
		}
	if ( skillpoints <= 0 ) { break };
	};
player.Stored_SkillString[slot] = array_to_skillstring(skillarray);

player.Stored_TraitString[slot] = array_to_skillstring(skillarray);