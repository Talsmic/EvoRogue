///party_cooldowns_clear(player,party_member);
/// @arg player			
/// @arg party_member
var player = argument0;
var party_member = argument1;

//Fail to update if no creature
if ( !player.Party_Status[party_member] ) { return false };

//Reset Skill Cooldowns
for ( var i=1 ; i<array_length_2d(player.Party_Skill,party_member); i++ ) {
	player.Party_Skill_Cooldown[party_member,i] = 0;
	};

//Reset Trait Cooldowns
for ( var i=1 ; i<array_length_2d(player.Party_Trait,party_member); i++ ) {
	player.Party_Trait_Cooldown[party_member,i] = 0;
	};
