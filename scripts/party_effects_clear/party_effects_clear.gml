///party_effects_clear(player,party_member);
/// @arg player			
/// @arg party_member
var player = argument0;
var party_member = argument1;

//Fail to update if no creature
if ( !player.Party_Status[party_member] ) { return false };

//Reset Effects
for ( var i=1 ; i<=global.bal_effectcap ; i++ ) {
	player.Party_Effect[party_member,i] = 0;
	player.Party_Effect_Duration[party_member,i] = 0;
	player.Party_Effect_Charges[party_member,i] = 0;
	player.Party_Effect_Potency[party_member,i] = 0;
	};
	
//Reset Stance
player.Party_Stance[party_member] = eEffects.NoEffect;
player.Party_Stance_Duration[party_member] = 0;