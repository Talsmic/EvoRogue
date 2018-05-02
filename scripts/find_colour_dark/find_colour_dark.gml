///find_colour_dark(colour);
/// @arg colour
/*
	[Edited 24/4/2018] (variant of: find_colour)
	Returns a {dark variant} colour code when given a string, integer or colour code
	Returns [ColourCode Integer]
*/

var colour = string(argument0);
colour = string_replace_all(colour, " ", "");

switch (colour) {
	//Elemental
    case "1": case "7":  case "18": case "c_physical":	case "Physical":	case "physical":
	case string(c_physical):
		return c_physical_dark;
    case "2": case "8":  case "19": case "c_fire":		case "Fire":		case "fire":
	case string(c_fire):
		return c_fire_dark;
    case "3": case "9":  case "20": case "c_water":		case "Water":		case "water":	
	case string(c_water):
		return c_water_dark;
    case "4": case "10": case "21": case "c_air":		case "Air":			case "air":	
	case string(c_air):
		return c_air_dark;
    case "5": case "16": case "22": case "c_nature":	case "Nature":		case "nature":	
	case string(c_nature):
		return c_nature_dark;
    case "6": case "17": case "23": case "c_shadow":	case "Shadow":		case "shadow":	
	case string(c_shadow):
		return c_shadow_dark;
	//Depreciated (Removed Elements)
    case "c_earth":		case "Earth":		case "earth": 
		return c_earth_dark;
    case "c_frost":		case "Frost":		case "frost":
		return c_frost_dark;
    case "c_electric":	case "Electric": 	case "electric":
		return c_electric_dark;
    case "c_magic":		case "Magic": 		case "magic": 
		return c_magic_dark;	
	
	//Basic Colours
    case "c_white":					return c_gray;
	case "c_black":					return c_black;
	
	//Attributes
    case "11": case "c_power":		return c_power_dark;
    case "12": case "c_fortitude":	return c_fortitude_dark;
    case "13": case "c_speed":		return c_speed_dark;
    case "14": case "c_recovery":	return c_recovery_dark;
    case "15": case "c_potency":	return c_potency_dark; 
	
	//Default to gray
    default: return c_gray;
	};