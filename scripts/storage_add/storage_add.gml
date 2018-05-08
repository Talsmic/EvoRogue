///storage_add(player,creature_species,creature_level);
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
var stored_creature = storage_firstemptyslot(player);

//Default Creature Settings
player.Stored_Status[stored_creature] = eCreatureState.existant;

player.Stored_Name[stored_creature] = db_record_get("db_Creatures",creature_species,"name");
player.Stored_Species[stored_creature] = creature_species;
player.Stored_Form[stored_creature] = 0;	//Currently unused, leave at 0		
player.Stored_Quality[stored_creature] = 0;	
player.Stored_Genome[stored_creature] = irandom(5);
player.Stored_Level[stored_creature] = creature_level;
player.Stored_Exp[stored_creature] = irandom_range(expforlevel(creature_level),expforlevel(creature_level+1));

player.Stored_SkillString[stored_creature] = skillstring_randomforspecies(creature_species,creature_level);
player.Stored_TraitString[stored_creature] = traitstring_randomforspecies(creature_species,creature_level);

return stored_creature;