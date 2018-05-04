///experienceforlevel(level);
/// @arg level
var level = argument0;
var experience = 0;

switch ( level ) {
	case 11:
	case 10:	experience += 51200;
	case 9:		experience += 25600;
	case 8:		experience += 12800;
	case 7:		experience += 6400;
	case 6:		experience += 3200;
	case 5:		experience += 1600;
	case 4:		experience += 800;
	case 3:		experience += 400;
	case 2:		experience += 200;
	case 1:		experience += 100;
	};
	
return experience;