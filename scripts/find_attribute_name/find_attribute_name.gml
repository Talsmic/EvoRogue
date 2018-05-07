///find_attribute_name(attribute);
/// @arg attribute
/*
	[Edited 24/4/2018]
	Finds the allocated attribute
	Returns [Integer] (0-6)
*/

var attribute = string(argument0);

switch (attribute) {
    case "1": case "Power": case "Pow":
		return "Power";
    case "2": case "Fortitude": case "For": case "Fort":
		return "Fortitude";
    case "3": case "Speed": case "Spe":
		return "Speed";
    case "4": case "Recovery": case "Rec":
		return "Recovery";
    case "5": case "Potency": case "Pot":
		return "Potency";
	case "6": case "All":
		return "All";
    
    default: return "None";
	};

return "None";


