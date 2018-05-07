///party_update_resources(player,party_member);
/// @arg player			
/// @arg party_member
var player = argument0;
var party_member = argument1;
var level = player.Party_Level[party_member];
/*
	Calculates {player}.{party_member}'s Maximum Health and Energy
	> Pushes to {player}: [Party_MaxHealth] & [Party_MaxEnergy]
	> Returns Array
		[0] Maximum_Health
		[1] Maximum_Energy
		[2] Recommended Starting_Energy
*/

//Fail to update if no creature
if ( !player.Party_Status[party_member] ) { return false };

#region Base Stats
//Use global.bal_ to determine Base Health and Energy
var h = global.bal_health_base;
var e = global.bal_energy_base;
var se = global.bal_startingenergy_base;
#endregion

#region Level Up Bonuses
//Use global.bal_ to determine Health and Energy growth by level
var h_growth = global.bal_health_growth;
var e_growth = global.bal_energy_growth;
var se_growth = global.bal_startingenergy_growth;
#endregion

//Calculate
var total;
//=[Formula]============================
//Base Stats + Growth * Level
total[0] = h + h_growth*level;	//Health
total[1] = e + e_growth*level;	//Energy
total[2] = se + se_growth*level;//Starting Energy
//======================================
	//Remove Negative Values
for ( var i=0 ; i<=2 ; i++ ) {
	if ( total[i] < 0 ) { total[i] = 0 };
	//Round Down
	total[i] = floor( total[i] );
	};
	
//Push
player.Party_MaxHealth[party_member] = total[0];
player.Party_MaxEnergy[party_member] = total[1];
	
//Return
return total;