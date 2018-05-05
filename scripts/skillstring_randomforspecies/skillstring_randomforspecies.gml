/// @desc skillstring_randomforspecies(creature_species,creature_level);
/// @arg creature_species
/// @arg creature_level
var creature_species = argument0;
var creature_level = argument1;

var skillpoints = 3+creature_level;
var skillarray = [0];
var skillset = dbpull_creature_skillset( creature_species );
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
	
return array_to_skillstring(skillarray);