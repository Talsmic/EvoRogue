///dbpull_creature_shadow(species);
/// @arg species			
var species = argument0;	
/*
	Pulls the shadow id for the creature species from the database
	>Returns an {Index Integer} for the spr_shadows {Sprite Resource}
*/

var shadow = db_record_get("db_Creatures",species,"shadow");

return shadow;
