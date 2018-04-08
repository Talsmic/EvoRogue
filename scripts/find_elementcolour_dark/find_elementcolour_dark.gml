///find_elementcolour_dark(element);
/// @arg element
/*
	[Edited 24/3/2018] (variant of: find_elementcolour)
	Returns a {dark variant} colour code when given a string, integer or colour code
	Returns [Integer]
*/
var element = string(argument0);

switch (element) {
    case "Physical": return c_physical_dark;
    case "Fire": return c_fire_dark;
    case "Earth": return c_earth_dark;
    case "Water": return c_water_dark;
    case "Air": return c_air_dark;
    case "Nature": return c_nature_dark;
    case "Frost": return c_frost_dark;
    case "Shadow": return c_shadow_dark;
    case "Electric": return c_electric_dark;
    case "Magic": return c_magic_dark;
    case "1": return c_physical_dark;
    case "2": return c_fire_dark;
    case "3": return c_water_dark;
    case "4": return c_air_dark;
    case "5": return c_nature_dark;
    case "6": return c_shadow_dark;
    case "c_physical": return c_physical_dark;
    case "c_fire": return c_fire_dark;
    case "c_earth": return c_earth_dark;
    case "c_water": return c_water_dark;
    case "c_air": return c_air_dark;
    case "c_nature": return c_nature_dark;
    case "c_frost": return c_frost_dark;
    case "c_shadow": return c_shadow_dark;
    case "c_electric": return c_electric_dark;
    case "c_magic": return c_magic_dark;
    case "c_white": return c_gray;
    
    case "11": case "c_power": return c_fire_dark;
    case "12": case "c_fortitude": return c_water_dark;
    case "13": case "c_speed": return c_air_dark;
    case "14": case "c_recovery": return c_nature_dark;
    case "15": case "c_potency": return c_shadow_dark;
	
    default: return c_gray;
	};

