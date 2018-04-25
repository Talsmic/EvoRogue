/// @desc _db_qf_select(table,columns,affected_rows)
/// @arg table
/// @arg columns
/// @arg affected_rows
/*
    INTERNAL USE ONLY. Helper function for db_query_exec. Applies select function to a set of record indexes.
    Returns: a ds_grid of affected_rows
*/

var result,table,rows,data;

rows = argument2;
if(ds_list_empty(rows)) {return -1;}

table = _db_tables[? argument0];
data = table[? "data"];

if(argument1 == "") { //fetch all result
    var columns = ds_grid_width(data);
    result = ds_grid_create(columns,ds_list_size(rows));
    
    for(var i=0;i<ds_list_size(rows);i+=1) {
        ds_grid_set_grid_region(result,data,0,rows[| i],columns-1,rows[| i],0,i);
    }
}
else { //fetch only requested fields
    var fields = _db_table_column_indexes(argument0,argument1);

    result = ds_grid_create(ds_list_size(fields),ds_list_size(rows));
    for(var i=0;i<ds_list_size(rows);i+=1) {
        for(var j=0;j<ds_list_size(fields);j+=1) {
            ds_grid_set(result,j,i,data[# fields[| j],rows[| i]]);
        }
    }

    ds_list_destroy(fields);
}

return result;

