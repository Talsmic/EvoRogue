///dbpull_storedcreature_attributes(player,stored_creature);
/// @arg player
/// @arg stored_creature
var player = argument0;
var stored_creature = argument1;
var level = player.Party_Level[stored_creature];
/*
	Pulls the attribute data for a creature from the database based on a stored creature
	and adds any relative passive or trait bonuses
	> Returns Array
		[0] -
		[1] Power
		[2] Fortitude
		[3] Speed
		[4] Recovery
		[5] Potency
*/

//Fail to update if no creature
if ( !player.Stored_Status[stored_creature] ) { return false };

//Attribute Arrays
var a = [0,5,5,5,5,5];
var a_growth = [0,0,0,0,0,0];
var a_flat = [0,0,0,0,0,0];
var a_multiplier = [0,0,0,0,0,0];

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

#region Genome Bonuses
//Genomes raise the base stats and the growth stats of a species
switch (player.Stored_Genome[stored_creature]) {
	default:	//Balanced
		for ( var i=1 ; i<=5 ; i++ ) {							//Effects All Stats
			if ( a[i] < 4 ) { a[i] = 4 };					//Raises Base to 4 (No effect if already higher)
			a[i] += 1;										//+1 to Base
			if ( a_growth[i] < 0.4 ) { a_growth[i] = 0.4 };//Raises Growth to 0.4 (No effect if already higher)
			a_growth[i] += 0.1;								//+0.1 to Growth
			};
		break;
	case 1:		//Powerful
		if ( a[1] < 5 ) { a[1] = 5 };					//Raises Base to 5 (No effect if already higher)
		a[1] += 2;										//+2 to Base
		if ( a_growth[1] < 0.6 ) { a_growth[1] = 0.6 };	//Raises Growth to 0.6 (No effect if already higher)
		a_growth[1] += 0.2;								//+0.2 to Growth
		break;
	case 2:		//Fortified
		if ( a[2] < 5 ) { a[2] = 5 };					//Raises Base to 5 (No effect if already higher)
		a[2] += 2;										//+2 to Base
		if ( a_growth[2] < 0.6 ) { a_growth[2] = 0.6 };	//Raises Growth to 0.6 (No effect if already higher)
		a_growth[2] += 0.2;								//+0.2 to Growth
		break;
	case 3:		//Speedy
		if ( a[3] < 5 ) { a[3] = 5 };					//Raises Base to 5 (No effect if already higher)
		a[3] += 2;										//+2 to Base
		if ( a_growth[3] < 0.6 ) { a_growth[3] = 0.6 };	//Raises Growth to 0.6 (No effect if already higher)
		a_growth[3] += 0.2;								//+0.2 to Growth
		break;
	case 4:		//Recupartive
		if ( a[4] < 5 ) { a[4] = 5 };					//Raises Base to 5 (No effect if already higher)
		a[4] += 2;										//+2 to Base
		if ( a_growth[4] < 0.6 ) { a_growth[4] = 0.6 };	//Raises Growth to 0.6 (No effect if already higher)
		a_growth[4] += 0.2;								//+0.2 to Growth
		break;
	case 5:		//Potent
		if ( a[5] < 5 ) { a[5] = 5 };					//Raises Base to 5 (No effect if already higher)
		a[5] += 2;										//+2 to Base
		if ( a_growth[5] < 0.6 ) { a_growth[5] = 0.6 };	//Raises Growth to 0.6 (No effect if already higher)
		a_growth[5] += 0.2;								//+0.2 to Growth
		break;
	};
#endregion
	
#region Buff Bonuses
#endregion

//Calculate
var a_total = [0,1,1,1,1,1];
for ( var i=1 ; i<=5 ; i++ ) {
	//=[Formula]============================
	//Base Stats + Growth * Level
	a_total[i] = a[i] + a_growth[i]*level;
	//+ Flat Bonus
	a_total[i] += a_flat[i];
	//x Multiplier Bonus
	a_total[i] *= a_multiplier[i];
	//======================================
	//Remove Negative Values
	if ( a_total[i] < 0 ) { a_total[i] = 0 };
	//Round Down
	a_total[i] = floor( a_total[i] );
	};
	
//Return
return a_total;