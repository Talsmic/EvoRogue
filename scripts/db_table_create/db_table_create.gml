/// @desc db_table_create(name,columns[col:type,col:type,...])
/// @arg name
/// @arg columns[col:type
/// @arg col:type
/// @arg ...]
/*
    Creates a table in the database having the specified columns. 
    The "id" column should NOT be specified, as it is autogenerated.
    If a table already exists with the same name, false is returned, true otherwise.
    Fields can be passed as comma separated strings (Eg: "name:string,color:string,weight:real"),
    or as arguments (Eg: db_table_create("items","name:string","color:string","weight:real")
    IMPORTANT: The name of the table can not contain spaces or special 
    characters other than _ (underscore).
*/
    
var table,data,columns,index,fields,types;

if(db_table_exists(argument[0])) {
    return false;
}

table = ds_map_create();
table[? "name"] = argument[0];
table[? "updated"] = true;

if(argument_count > 2) {
    fields = ds_list_create();
    for(var i=1; i < argument_count; i++) {
        ds_list_add(fields,argument[i]);
    }
}
else {
    fields = string_parse(argument[1],",",false);
}

data = -1;
types = ds_map_create();
columns = ds_map_create();

ds_map_add(columns,"id",0) //add default id column
ds_map_add(types,"id","real"); //set id type
for(var i=0;i<ds_list_size(fields);i+=1) {
    var col = pair_get(fields[| i],":",0);
    var type = pair_get(fields[| i],":",1);
    ds_map_add(columns,col,i+1);
    ds_map_add(types,col,type);
}
ds_list_destroy(fields);

index = ds_list_create();
index[| 0] = 0; //index cardinality

ds_map_add(table,"data",data);
ds_map_add_map(table,"types",types);
ds_map_add_map(table,"columns",columns);
ds_map_add_list(table,"index",index);

ds_map_add_map(_db_tables,argument[0],table);
ds_list_add(_db_info[? "tables"],argument[0]);
_db_info[? "updated"] = true;

if(_db_settings[? "autosave"]) {db_save();}

return true;
