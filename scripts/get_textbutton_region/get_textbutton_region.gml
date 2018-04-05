///get_textbutton_region(x,y,string,height_padding,width_padding);
/// @arg x			
/// @arg y		
/// @arg string
/// @arg height_padding
/// @arg width_padding
/*
	[Edited 24/3/2018]
	Checks the region of a text button
	Returns an array
	[0] MouseInRegion [True/False]
	[1] X1 [Integer]
	[2] Y1 [Integer]
	[3] X2 [Integer]
	[4] Y2 [Integer]
	[5] Width [Integer]
	[6] Height [Integer]
*/
var _x = argument0; 
var _y = argument1; 
var _string = argument2; 
var height = string_height( _string ) - 2;
var width = string_width( _string ) - 2;
var height_padding = argument3; 
var width_padding = argument4; 

var region;
region[0] = false;						//[0] MouseInRegion [True/False]
region[1] = _x-width_padding;			//[1] X1 [Integer]
region[2] = _y-height_padding;			//[2] Y1 [Integer]
region[3] = _x+width+width_padding*2;	//[3] X2 [Integer]
region[4] = _y+height+height_padding*2;	//[4] Y2 [Integer]
region[5] = width+width_padding*2;		//[5] Width [Integer]
region[6] = height+height_padding*2;	//[6] Height [Integer]
if ( point_in_rectangle( mouse_x, mouse_y, region[1], region[2], region[3], region[4] ) ) {
	region[0] = true;
	};
	
return region;