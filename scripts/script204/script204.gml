/// @desc party_checkmaxenergy(player,partymember);
/// @arg player			
/// @arg partymember
/*
	[Edited 3/5/2017]
	Checks the target's maximum energy and any bonuses to it
	#Returns Integer# 

var player = argument0;
var partymember = argument1;

//Base energy
var targetenergy = global.bal_maxenergy;

//Round and Return
if (targetenergy < 0) {targetenergy = 0}; //Lower limit of 0;
return floor(targetenergy);
