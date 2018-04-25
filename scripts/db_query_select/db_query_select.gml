/// @desc db_query_select(table,[columns])
/// @arg table
/// @arg [columns]
/*
    Prepares a query for selecting values in the specified columns of a table.
    If only id is provided as column, the query will return a ds_list of ids.
    Returns: query
*/

var query;

query = _db_query_init();

query[? "table_name"] = argument[0];
query[? "function"] ="select";
if(argument_count > 1) {
    query[? "fields"] = argument[1];
}
else {
    query[? "fields"] = "";
}

return query;

