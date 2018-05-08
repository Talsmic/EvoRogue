///pullstring(database,column,value);
/// @arg database
/// @arg column
/// @arg value
var database = argument0;
var column = argument1;
var value = argument2;
//The switches in this function santise bad string requests

var output = string(db_record_get(database,value,column));

return output;