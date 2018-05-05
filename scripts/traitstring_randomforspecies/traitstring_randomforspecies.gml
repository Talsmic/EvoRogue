/// @desc traitstring_randomforspecies(creature_species,creature_level);
/// @arg creature_species
/// @arg creature_level
var creature_species = argument0;
var creature_level = argument1;

var traitpoints = 3+creature_level;
var traitarray = [0];
var traitset = dbpull_creature_skillset( creature_species );
var traitslot = 1;

//Add Random Traits
repeat 20 {
	var random_trait = traitset[irandom_range(1,array_height_2d(traitset)-1),0];
	if ( !array_contains_1d(traitarray,random_trait) ) {
		traitarray[traitslot] = random_trait;
		traitpoints--;
		traitslot++;
		}
	if ( traitpoints <= 0 ) { break };
	};
	
return array_to_skillstring(traitarray);