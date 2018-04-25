///db_pull_columnasarray(database,column);
// @arg database
// @arg column
var database = argument0;
var column = argument1;

var pull;
var endpoint = db_table_size(database);
for ( var i=1 ; i<=endpoint ; i++ ) {
	pull[i] = db_record_get(database,i,column);
	};
	
return pull;