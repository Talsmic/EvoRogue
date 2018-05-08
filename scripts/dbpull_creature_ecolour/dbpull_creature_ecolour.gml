///dbpull_creature_ecolour(species);
/// @arg species			
var species = argument0;	
/*
	>Returns {ColourCode}
*/

var element = find_colour(db_record_get("db_Creatures",species,"element"));

return element;
