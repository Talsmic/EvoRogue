/// @desc party_startingenergy(player,partymember);
/// @arg player			
/// @arg partymember
/*
	[Edited 20/6/2017]
	Sets and returns the target creature's starting energy
	#Returns Integer# 

var player = argument0;
var partymember = argument1;

//Base
var startingenergy = global.bal_startingenergy;

//Add Level Up Bonuses
startingenergy += global.bal_startingenergygrowth*global.party_level[player,partymember]; 

global.party_energy[player,partymember] = floor(startingenergy);
return floor(startingenergy);
