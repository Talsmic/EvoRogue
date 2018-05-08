///dbpull_creature_name(species);
/// @arg species
var species = argument0;
//This function translates creature names

//If given a string, convert to ID:
if ( is_string(argument0) ) { species = db_record_first("db_Skills","name",argument0) };

//Check the language database first:
if ( species <= db_table_size("db_Strings_Creatures") ) {
	return db_record_get("db_Strings_Creatures",species,"name");
	};
	
//Otherwise check creature database:
if ( species <= db_table_size("db_Creatures") ) {
	return db_record_get("db_Creatures",species,"name");
	};

//If all else false, tern the input as a string
return string(argument0);