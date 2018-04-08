///advgen_regions_createcolumn(RegionA,RegionZ,Xmin,Xmax,Ymin,Ymax);
/// @arg RegionA
/// @arg RegionZ
/// @arg Xmin
/// @arg Xmax
/// @arg Ymin
/// @arg Ymax

var RegionA = argument0;
var RegionZ = argument1;
var Xmin = argument2;
var Xmax = argument3;
var Ymin = argument4;
var Ymax = argument5;

var minimum_size = 2; 
var height_buffer = Ymax - Ymin - minimum_size * adv_Regions;
var height;
//Decide Height
for ( var i=RegionA ; i<=RegionZ ; i++ ) 	{
	height[i] = minimum_size;											//Max region minimum size
	var bonus_height = irandom( adv_RegionVarianceY );					//Find a variance 
	if ( bonus_height > height_buffer ) { bonus_height = height_buffer };	//Insure the variance won't exceed the board size
	height_buffer -= bonus_height;
	height[i] += bonus_height;											//Add variance to height
	};
//Fill Extra Space
if ( adv_RegionFill ) {
	var j = RegionA;
	for ( var i=height_buffer ; i>0 ; i-- ) 	{
		height[j]++;
		j++; if ( j > RegionZ ) { j = RegionA };
		};
	};
var height_point = 1;
//Apply Sizing
for ( var i=RegionA ; i<=RegionZ ; i++ ) 	{
	adv_RegionXmin[i] = Xmin + irandom( adv_RegionVarianceX );
	adv_RegionXmax[i] = Xmax - irandom( adv_RegionVarianceX );
	adv_RegionYmin[i] = height_point;
	height_point += height[i];
	adv_RegionYmax[i] = height_point-1;
	};