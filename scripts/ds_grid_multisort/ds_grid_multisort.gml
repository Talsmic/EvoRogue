/// @desc ds_grid_multisort(grid,col_1,col_1_asc,[col_2,col_2_asc]...)
/// @arg grid
/// @arg col_1
/// @arg col_1_asc
/// @arg [col_2
/// @arg col_2_asc]...

/*
    Description:    sorts a ds_grid based on multiple columns. Column order determines
                    the priority (high to low)
    Arguments:      grid {ds_grid} : grid to sort
                    [col_N] {real} : column index to sort
                    [col_N_asc] {boolean} : sorts column N ascending (true) or descending (false)
*/

if(argument_count < 3) {return -1;}

var grid,args,args_count;

grid = argument[0];
args_count = (argument_count-1) div 2;

for(var i=args_count-1; i >= 0; i--) {
    args[i,1] = argument[i*2+2]; //set ascending
    args[i,0] = argument[i*2+1]; //set col index
}

_ds_grid_multisort_part(grid,args,0);


