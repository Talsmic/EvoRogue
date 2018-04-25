/// @desc _db_qf_select_records(table,fields,affected_rows)
/// @arg table
/// @arg fields
/// @arg affected_rows
/*
    INTERNAL USE ONLY. Helper function for db_query_exec. Applies select function to a set of record indexes.
    Returns: a ds_list of ids
*/

var ids,table,rows,data,result;

table = _db_tables[? argument0];
data = table[? "data"];
rows = argument2;

ids = ds_list_create();
for(var i=0;i<ds_list_size(rows);i+=1) {
    ds_list_add(ids,data[# 0,rows[| i]]);
}

result = db_record_fetch_all(argument0,ids,argument1);
ds_list_destroy(ids);

return result;
