///randomcreaturename(species)
/// @arg species
var species = argument0;
var raw_species_name = db_record_get("db_Creatures",species,"name");
var species_name = dbpull_creature_name(species);

//Creature Specific
var name = irandom(1);
if ( name ) {
	switch ( raw_species_name ) {
		
		case "Lumbark": 
			var name2 = irandom(1);
			switch ( name2 ) {
				case 0: return "Pecker";
				case 1: return "Woody";
				};
			break;
			
		case "Hoglet": 
			var name2 = irandom(3);
			switch ( name2 ) {
				case 0: return "Porker";
				case 1: return "Porky";
				case 2: return "Babe";
				case 3: return "Bacon";
				};
			break;
			
		case "Cinder": 
			var name2 = irandom(1);
			switch ( name2 ) {
				case 0: return "Calcifer";
				case 1: return "Hotfoot";
				};
			break;
			
		case "Cubust": 
			var name2 = irandom(1);
			switch ( name2 ) {
				case 0: return "Jaffle";
				case 1: return "Yogi";
				};
			break;
			
		};
	};
	
//Generics
name = irandom(3);
switch ( name ) {
	default:	return species_name;
	case 1:		return "Mr. "+species_name;
	case 2:		return species_name+"Jr";
	case 3:		return species_name+"ly";
	};