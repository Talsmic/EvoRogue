///party_reset_resources(player,party_member);
/// @arg player			
/// @arg party_member
var player = argument0;
var party_member = argument1;
var level = player.Party_Level[party_member];
/*
	Calculates {player}.{party_member}'s Maximum Health and Energy, then resets them to full health
	> Pushes to {player}: [Party_Health], [Party_MaxHealth], [Party_Energy] & [Party_MaxEnergy]
	> Returns Array
		[0] Maximum_Health (&Current_Health)
		[1] Maximum_Energy 
		[2] Recommended Starting_Energy (&Current_Energy)
*/

//Fail to update if no creature
if ( !player.Party_Status[party_member] ) { return false };

//Update Maximums
var resources = party_update_resources(player,party_member);

//Push to Resource Pools
player.Party_Health[party_member] =		resources[0];
player.Party_Energy[party_member] =		resources[2];
	
//Return
return resources;