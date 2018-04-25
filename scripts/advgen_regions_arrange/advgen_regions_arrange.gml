///advgen_regions_arrange(Regions,Distribution,DistributionB,VarianceX,VarianceY,Fill);
/// @arg Regions			
/// @arg Distribution
/// @arg DistributionB
/// @arg VarianceX
/// @arg VarianceY
/// @arg Fill

adv_Regions = argument0;
adv_RegionDistribution = argument1;
adv_RegionDistributionB = argument2;
adv_RegionVarianceX = argument3;
adv_RegionVarianceY = argument4;
adv_RegionFill = argument5;
//Correct Variance to a reasonable level
if ( adv_RegionVarianceX*2 + 2 > adv_GridXSize ) { adv_RegionVarianceX = floor((adv_GridXSize-2)/2) };
if ( adv_RegionVarianceY*2 + 2 > adv_GridYSize ) { adv_RegionVarianceY = floor((adv_GridYSize-2)/2) };

randomize();
switch (adv_RegionDistribution) {
	case eRegionDistribution.columns: default:
		advgen_regions_createrow(1,adv_Regions,1,adv_GridXSize+1,1,adv_GridYSize);
		break;
	case eRegionDistribution.rows:
		advgen_regions_createcolumn(1,adv_Regions,1,adv_GridXSize,1,adv_GridYSize+1);
		break;
	};