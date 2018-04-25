///find_elementnumber(element);
/// @arg element
/*
	[Edited 26/5/2017]
	Returns an integer representing an element when given a string or integer
	Returns [Integer] (0-6)
*/

var element = string(argument0);

switch (element) {
    case "Physical":	case "1": 	return 1;
    case "Fire":		case "2":	return 2;
    case "Water":		case "3":	return 3;
    case "Air":			case "4":	return 4;
    case "Nature":		case "5":	return 5;
    case "Shadow":		case "6":	return 6;
	
    default: return 0;
	};
