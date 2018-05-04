/// @desc battle_speedcheck(player1,creature1,player2,creature2);
/// @arg player1
/// @arg creature1
/// @arg player2
/// @arg creature2
/*
	[Edited 12/6/2017]
	Checks to see which creature is faster
*/
var player1 = argument0;
var creature1 = argument1;
var player2 = argument2;
var creature2 = argument3;

//Find Speed
var speed1 = party_checkattribute(player1,creature1,3);
var speed2 = party_checkattribute(player2,creature2,3);

//Add Boosts
if ( global.active_creature[player1, 1] == creature1 ) {	speed1 += global.active_boost_speed[player1]	};
if ( global.active_creature[player2, 1] == creature2 ) {	speed1 += global.active_boost_speed[player2]	};
	
//Compare Speeds
var speed_gap = floor(speed1) - floor(speed2);

//Return Result
if ( speed_gap == 0 ) {		return 0	};
if ( speed_gap < 0 ) {		return 2	};
if ( speed_gap > 0 ) {		return 1	};