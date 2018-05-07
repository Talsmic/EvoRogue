///party_update_attributes(player,party_member);
/// @arg player
/// @arg party_member
var player = argument0;
var party_member = argument1;
var level = player.Party_Level[party_member];
/*
	Calculates {player}.{party_member}'s Power, Fortitude, Speed, Recovery and Potency
	> Pushes to {player}: [Party_Attribute][1..5]
	> Returns Array
		[0] -
		[1] Power
		[2] Fortitude
		[3] Speed
		[4] Recovery
		[5] Potency
*/

//Fail to update if no creature
if ( !player.Party_Status[party_member] ) { return false };

//Attribute Arrays
var a = [0,5,5,5,5,5];
var a_growth = [0,0,0,0,0,0];
var a_flat = [0,0,0,0,0,0];
var a_multiplier = [0,0,0,0,0,0];

#region Base Stats
//Pull base stats for your species from the database
a[1] = db_record_get("db_Creatures",player.Party_Species[party_member],"base_power");
a[2] = db_record_get("db_Creatures",player.Party_Species[party_member],"base_fortitude");
a[3] = db_record_get("db_Creatures",player.Party_Species[party_member],"base_speed");
a[4] = db_record_get("db_Creatures",player.Party_Species[party_member],"base_recovery");
a[5] = db_record_get("db_Creatures",player.Party_Species[party_member],"base_potency"); 
#endregion

#region Level Up Bonuses
//Pull growth stats for your species from the database
a_growth[1] += db_record_get("db_Creatures",player.Party_Species[party_member],"power_growth");
a_growth[2] += db_record_get("db_Creatures",player.Party_Species[party_member],"fortitude_growth");
a_growth[3] += db_record_get("db_Creatures",player.Party_Species[party_member],"speed_growth");
a_growth[4] += db_record_get("db_Creatures",player.Party_Species[party_member],"recovery_growth");
a_growth[5] += db_record_get("db_Creatures",player.Party_Species[party_member],"potency_growth");
#endregion

#region Nature Bonuses
//Natures raise the base stats and the growth stats of a species
switch (player.Party_Nature[party_member]) {
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
	
//Push
player.Party_Attribute[party_member,1] = a_total[1];	//Power	
player.Party_Attribute[party_member,2] = a_total[2];	//Fortitude	
player.Party_Attribute[party_member,3] = a_total[3];	//Speed	
player.Party_Attribute[party_member,4] = a_total[4];	//Recovery	
player.Party_Attribute[party_member,5] = a_total[5];	//Potency	
	
//Return
return a_total;