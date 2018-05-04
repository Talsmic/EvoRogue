/// @desc battle_speedgap(player1,creature1,player2,creature2);
/// @arg player1
/// @arg creature1
/// @arg player2
/// @arg creature2
/*
	[Edited 12/6/2017]
	Returns the difference in speed between two creatures
*/
var player1 = argument0;
var creature1 = argument1;
var player2 = argument2;
var creature2 = argument3;

//Find Speed
var speed1 = party_checkattribute(player1,creature1,3);
var speed2 = party_checkattribute(player2,creature2,3);

//Add Boosts
if ( global.active_creature[player1, 1] == creature1 ) {
	speed1 += global.active_boost_speed[player1];
	};
if ( global.active_creature[player2, 1] == creature2 ) {
	speed1 += global.active_boost_speed[player2];
	};
	
//Compare Speeds
var speed_gap = floor(speed1) - floor(speed2);
return speed_gap;