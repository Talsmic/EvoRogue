///dbpull_creature_sprite(species);
/// @arg species			
var species = argument0;	
/*
	Pulls a sprite for the creature species from the database
	>Returns {Sprite Resource}
*/

var sprite = asset_get_index(db_record_get("db_Creatures",species,"sprite"));

return sprite;
