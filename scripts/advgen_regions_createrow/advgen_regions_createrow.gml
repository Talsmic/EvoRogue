///advgen_regions_createrow(RegionA,RegionZ,Xmin,Xmax,Ymin,Ymax);
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
var width_buffer = Xmax - Xmin - minimum_size * adv_Regions;
var width;
//Decide Widths
for ( var i=RegionA ; i<=RegionZ ; i++ ) 	{
	width[i] = minimum_size;											//Max region minimum size
	var bonus_width = irandom( adv_RegionVarianceX );					//Find a variance 
	if ( bonus_width > width_buffer ) { bonus_width = width_buffer };	//Insure the variance won't exceed the board size
	width_buffer -= bonus_width;
	width[i] += bonus_width;											//Add variance to width
	};
//Fill Extra Space
if ( adv_RegionFill ) {
	var j = RegionA;
	for ( var i=width_buffer ; i>0 ; i-- ) 	{
		width[j]++;
		j++; if ( j > RegionZ ) { j = RegionA };
		};
	};
var width_point = 1;
//Apply Sizing
for ( var i=RegionA ; i<=RegionZ ; i++ ) 	{
	adv_RegionXmin[i] = width_point;
	width_point += width[i];
	adv_RegionXmax[i] = width_point-1;
	adv_RegionYmin[i] = Ymin + irandom( adv_RegionVarianceY );
	adv_RegionYmax[i] = Ymax - irandom( adv_RegionVarianceY );
	};