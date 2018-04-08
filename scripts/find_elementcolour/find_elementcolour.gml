///find_elementcolour(element);
/// @arg element
/*
	[Edited 24/3/2018]
	Returns a colour code when given a string or integer
	Returns [Integer]
*/

var element = string(argument0);

switch (element) {
    case "Physical": return c_physical;
    case "Fire": return c_fire;
    case "Earth": return c_earth;
    case "Water": return c_water;
    case "Air": return c_air;
    case "Nature": return c_nature;
    case "Frost": return c_frost;
    case "Shadow": return c_shadow;
    case "Electric": return c_electric;
    case "Magic": return c_magic;
	
    case "1": return c_physical;
    case "2": return c_fire;
    case "3": return c_water;
    case "4": return c_air;
    case "5": return c_nature;
    case "6": return c_shadow;
	
    case "c_physical": return c_physical;
    case "c_fire": return c_fire;
    case "c_earth": return c_earth;
    case "c_water": return c_water;
    case "c_air": return c_air;
    case "c_nature": return c_nature;
    case "c_frost": return c_frost;
    case "c_shadow": return c_shadow;
    case "c_electric": return c_electric;
    case "c_magic": return c_magic;
	
    case "c_white": return c_white;
    case "c_orange": return c_orange;
	
    case "11": case "c_power": return c_power;
    case "12": case "c_fortitude": return c_fortitude;
    case "13": case "c_speed": return c_speed;
    case "14": case "c_recovery": return c_recovery;
    case "15": case "c_potency": return c_potency;
	
    default: return c_white;
	};
