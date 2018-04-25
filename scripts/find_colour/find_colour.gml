///find_colour(colour);
/// @arg colour
/*
	[Edited 24/4/2018]
	Returns a colour code when given a string or integer
	Returns [ColourCode Integer]
*/

var colour = string(argument0);
colour = string_replace_all(colour, " ", "");

switch (colour) {
	//Elemental
    case "1": case "7":  case "18": case "c_physical":	case "Physical":	case "physical":
		return c_physical;
    case "2": case "8":  case "19": case "c_fire":		case "Fire":		case "fire":
		return c_fire;
    case "3": case "9":  case "20": case "c_water":		case "Water":		case "water":	
		return c_water;
    case "4": case "10": case "21": case "c_air":		case "Air":			case "air":	
		return c_air;
    case "5": case "16": case "22": case "c_nature":	case "Nature":		case "nature":	
		return c_nature;
    case "6": case "17": case "23": case "c_shadow":	case "Shadow":		case "shadow":	
		return c_shadow;
	//Depreciated (Removed Elements)
    case "c_earth":		case "Earth":		case "earth": 
		return c_earth;
    case "c_frost":		case "Frost":		case "frost":
		return c_frost;
    case "c_electric":	case "Electric": 	case "electric":
		return c_electric;
    case "c_magic":		case "Magic": 		case "magic": 
		return c_magic;	
	
	//Basic Colours
    case "c_white":					return c_white;
    case "c_orange":				return c_orange;
	case "c_black":					return c_black;
	case "c_red":					return c_red;
	
	//Attributes
    case "11": case "c_power":		return c_power;
    case "12": case "c_fortitude":	return c_fortitude;
    case "13": case "c_speed":		return c_speed;
    case "14": case "c_recovery":	return c_recovery;
    case "15": case "c_potency":	return c_potency;
    
	
	
	//Default to white
    default: return c_white;
	};
