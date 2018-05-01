///DBcreature_skillset_core(species);
/// @arg species			
/*
	[Edited 1/5/2018]
	Pulls a skill list for the creature species from the database
*/
var species = argument0;

//Parse Skillsets
var skillset1 = parse_array1d(db_record_get("db_Creatures",species,"skills_core"),"; ");

//Delete Old Data
global.parsed_skillset = 0;
global.parsed_skillset[1, 0] = 1;

//Compile Unified Skillset
var position = 1;
for ( var i=1 ; i<=array_length_1d(skillset1)-1 ; i++ ) {
	//Convert Skill Name to ID
	skillset1[i] = real(db_record_first("db_Skills","name",skillset1[i]));
	//Add Skill to parse
	if ( skillset1[i] > 0 ) {
		global.parsed_skillset[position, 0] = real(skillset1[i]);
		position++;
		};
	};
	
return global.parsed_skillset;
