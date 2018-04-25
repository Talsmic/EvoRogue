///find_attribute(attribute);
/// @arg attribute
/*
	[Edited 24/4/2018]
	Finds the allocated attribute
	Returns [Integer] (0-6)
*/

var attribute = string(argument0);

switch (attribute) {
    case "1": case "Power": case "Pow":
		return 1;
    case "2": case "Fortitude": case "For": case "Fort":
		return 2;
    case "3": case "Speed": case "Spe":
		return 3;
    case "4": case "Recovery": case "Rec":
		return 4;
    case "5": case "Potency": case "Pot":
		return 5;
	case "6": case "All":
		return 6;
    
    default: return 0;
	};

return 0;


