/// @desc db_import(filename,db_name)
/// @arg filename
/// @arg db_name
/*
    Opens a new database with the data contained in the specified file (saved using db_export()).
    The current database gets closed in the process.
*/

var file,table,tables,data;

//if a database is open, close it
if(_db_info >= 0) {
    db_close();
}

//if database exists, load it
if(file_exists(argument0)) {
    file = file_text_open_read(argument0);
    
    //load database meta information
    _db_info = json_decode(file_text_read_string(file));
    _db_info[? "filename"] = argument1;
    _db_info[? "updated"] = true;
    file_text_readln(file);
    
    //read tables
    _db_tables = ds_map_create();
    while (!file_text_eof(file)) {
        //load table structure
        table = json_decode(file_text_read_string(file));
        
        //load table data
        file_text_readln(file);
        data = file_text_read_string(file);
        if(data != "") {
            table[? "data"] = ds_grid_create(1,1);
            ds_grid_read(table[? "data"],data);
        }
        else {
            table[? "data"] = -1;
        }
        
        ds_map_add_map(_db_tables,table[? "name"],table);
        table[? "updated"] = true;
        
        file_text_readln(file);
    }
    
    file_text_close(file);
    
    if(_db_settings[? "autosave"]) {db_save();}
    
    return true;
}
else {
    return false;
}

