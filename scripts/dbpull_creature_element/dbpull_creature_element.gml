///dbpull_creature_element(species);
/// @arg species			
var species = argument0;	
/*
	>Returns {String}
*/

var element = db_record_get("db_Creatures",species,"element");

return element;
