///find_genome_name(attribute);
/// @arg attribute
var attribute = string(argument0);

switch (attribute) {
    case "1": case "Power": case "Pow":
		return term("Genome1");
    case "2": case "Fortitude": case "For": case "Fort":
		return term("Genome2");
    case "3": case "Speed": case "Spe":
		return term("Genome3");
    case "4": case "Recovery": case "Rec":
		return term("Genome4");
    case "5": case "Potency": case "Pot":
		return term("Genome5");
	default:
	case "6": case "All":
		return term("Genome6");
	};


