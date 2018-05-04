/// @desc party_checkmaxhealth(player,partymember);
/// @arg player			
/// @arg partymember
/*
	[Edited 3/5/2017]
	Checks the target's maximum health and any bonuses to it
	#Returns Integer# 

var player = argument0;
var partymember = argument1;

//Base Health
var targethealth = global.bal_basehealth;

//Add Level Up Bonuses
targethealth += global.bal_healthgrowth*global.party_level[player,partymember]; 

//Round and Return
if (targethealth < 1) {targethealth = 1}; //Lower limit of 1;
return floor(targethealth);
