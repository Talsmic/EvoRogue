/// @desc _ds_grid_multisort_part(grid,args,iteration)
/// @arg grid
/// @arg args
/// @arg iteration

var grid,args,args_size,i,grid_height,grid_width;

grid = argument0;
grid_height = ds_grid_height(grid);
grid_width = ds_grid_width(grid);
args = argument1;
args_size = array_height_2d(args);
i = argument2;

ds_grid_sort(grid,args[i,0],args[i,1]);

if(args_size-1 == i) {return -1;}

var col, col_next, row_i;

col = args[i,0];
row_i = 0;

for(var row = 1; row <= grid_height; row++) {
    if(row == grid_height || grid[# col,row] != grid[# col,row_i]) {
        if(row-row_i > 1) {
            var temp_grid = ds_grid_create(grid_width,row-row_i);
            ds_grid_set_grid_region(temp_grid,grid,0,row_i,grid_width-1,row-1,0,0);
            _ds_grid_multisort_part(temp_grid,args,i+1);
            ds_grid_set_grid_region(grid,temp_grid,0,0,grid_width-1,row-row_i,0,row_i);
            ds_grid_destroy(temp_grid);
        }
        row_i = row;
    }     
}
