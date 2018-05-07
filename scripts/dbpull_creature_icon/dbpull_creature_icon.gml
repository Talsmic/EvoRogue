///dbpull_creature_icon(species);
/// @arg species			
var species = argument0;	
/*
	>Returns {Integer}
*/

var icon = db_record_get("db_Creatures",species,"icon");

return icon;
