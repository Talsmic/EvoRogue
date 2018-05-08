///party_transfer(playerA,playerB,partymemberA,partymemberB);
/// @arg playerA
/// @arg playerB
/// @arg party_memberA
/// @arg party_memberB
//Copies from playerB.party_memberB over the top of playerA.party_memberA
var playerA = argument0;
var playerB = argument1;
var party_memberA = argument2;
var party_memberB = argument3;

//IDs
playerA.Party_Status[party_memberA] =		playerB.Party_Status[party_memberB];
if ( playerA == playerB ) { 
		playerA.Party_StoredID[party_memberA] =	playerB.Party_StoredID[party_memberB]	}
else { 	playerA.Party_StoredID[party_memberA] = 0										};

//Core Information
playerA.Party_Species[party_memberA] =		playerB.Party_Species[party_memberB];
playerA.Party_Name[party_memberA] =			playerB.Party_Name[party_memberB];
playerA.Party_Form[party_memberA] =			playerB.Party_Form[party_memberB];
playerA.Party_Quality[party_memberA] =		playerB.Party_Quality[party_memberB];
playerA.Party_Genome[party_memberA] =		playerB.Party_Genome[party_memberB];
playerA.Party_Level[party_memberA] =		playerB.Party_Level[party_memberB];
playerA.Party_Exp[party_memberA] =			playerB.Party_Exp[party_memberB];

//Resources
playerA.Party_Health[party_memberA] =		playerB.Party_Health[party_memberB];
playerA.Party_MaxHealth[party_memberA] =	playerB.Party_MaxHealth[party_memberB];
playerA.Party_Energy[party_memberA] =		playerB.Party_Energy[party_memberB];
playerA.Party_MaxEnergy[party_memberA] =	playerB.Party_MaxEnergy[party_memberB];

//Skills and Traits
party_updateskillstring(playerB,party_memberB);
playerA.Party_SkillString[party_memberA] =	playerB.Party_SkillString[party_memberB];
playerA.Party_TraitString[party_memberA] =	playerB.Party_TraitString[party_memberB];
party_expandskillstring(playerA,party_memberA);
if ( inbattle() ) {
	for ( var i=1 ; i<array_length_2d(player.Party_Skill,party_member); i++ ) {
		playerA.Party_Skill[party_memberA,i] = playerB.Party_Skill[party_memberB,i];
		playerA.Party_Skill_Cooldown[party_memberA,i] = playerB.Party_Skill_Cooldown[party_memberB,i];
		};
	for ( var i=1 ; i<array_length_2d(player.Party_Trait,party_member); i++ ) {
		playerA.Party_Trait[party_memberA,i] = playerB.Party_Trait[party_memberB,i];
		playerA.Party_Trait_Cooldown[party_memberA,i] = playerB.Party_Trait_Cooldown[party_memberB,i];
		playerA.Party_Trait_ValueA[party_memberA,i] = playerB.Party_Trait_ValueA[party_memberB,i];
		playerA.Party_Trait_ValueB[party_memberA,i] = playerB.Party_Trait_ValueB[party_memberB,i];
		};
	};

