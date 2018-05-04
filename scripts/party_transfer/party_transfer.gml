///party_transfer(playerA,playerB,partymemberA,partymemberB);
/// @arg playerA
/// @arg playerB
/// @arg party_memberA
/// @arg party_memberB
//Copies from playerA.party_memberA over the top of playerB.party_memberB
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
playerA.Party_Nature[party_memberA] =		playerB.Party_Nature[party_memberB];
playerA.Party_Level[party_memberA] =		playerB.Party_Level[party_memberB];
playerA.Party_Exp[party_memberA] =			playerB.Party_Exp[party_memberB];

//Skills and Traits
party_updateskillstring(playerA,party_memberA);
playerA.Party_SkillString[party_memberA] =	playerB.Party_SkillString[party_memberB];
playerA.Party_TraitString[party_memberA] =	playerB.Party_TraitString[party_memberB];
party_expandskillstring(playerB,party_memberB);
