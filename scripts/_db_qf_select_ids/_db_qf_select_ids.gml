/// @desc _db_qf_select_ids(table,affected_rows)
/// @arg table
/// @arg affected_rows
/*
    INTERNAL USE ONLY. Helper function for db_query_exec. Applies select function to a set of record indexes.
    Returns: a ds_list of ids
*/

var result,table,rows,data;

table = _db_tables[? argument0];
data = table[? "data"];
rows = argument1;

result = ds_list_create();

for(var i=0;i<ds_list_size(rows);i+=1) {
    ds_list_add(result,data[# 0,rows[| i]]);
}
    
return result;

