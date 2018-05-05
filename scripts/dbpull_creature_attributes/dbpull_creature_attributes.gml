///dbpull_creature_attributes(species,level);
/// @arg species
/// @arg level
var species = argument0;
var level = argument1;
/*
	Pulls the attribute data for a creature from the database and adjusts it for level
	> Returns Array
		[0] -
		[1] Power
		[2] Fortitude
		[3] Speed
		[4] Recovery
		[5] Potency
*/

//Attribute Arrays
var a = [0,5,5,5,5,5];
var a_growth = [0,0,0,0,0,0];

#region Base Stats
//Pull base stats for your species from the database
a[1] = db_record_get("db_Creatures",player.Stored_Species[stored_creature],"base_power");
a[2] = db_record_get("db_Creatures",player.Stored_Species[stored_creature],"base_fortitude");
a[3] = db_record_get("db_Creatures",player.Stored_Species[stored_creature],"base_speed");
a[4] = db_record_get("db_Creatures",player.Stored_Species[stored_creature],"base_recovery");
a[5] = db_record_get("db_Creatures",player.Stored_Species[stored_creature],"base_potency"); 
#endregion

#region Level Up Bonuses
//Pull growth stats for your species from the database
a_growth[1] += db_record_get("db_Creatures",player.Stored_Species[stored_creature],"power_growth");
a_growth[2] += db_record_get("db_Creatures",player.Stored_Species[stored_creature],"fortitude_growth");
a_growth[3] += db_record_get("db_Creatures",player.Stored_Species[stored_creature],"speed_growth");
a_growth[4] += db_record_get("db_Creatures",player.Stored_Species[stored_creature],"recovery_growth");
a_growth[5] += db_record_get("db_Creatures",player.Stored_Species[stored_creature],"potency_growth");
#endregion

//Calculate
var a_total = [0,1,1,1,1,1];
for ( var i=1 ; i<=5 ; i++ ) {
	//=[Formula]============================
	//Base Stats + Growth * Level
	a_total[i] = a[i] + a_growth[i]*level;
	//======================================
	//Remove Negative Values
	if ( a_total[i] < 0 ) { a_total[i] = 0 };
	//Round Down
	a_total[i] = floor( a_total[i] );
	};
	
//Return
return a_total;