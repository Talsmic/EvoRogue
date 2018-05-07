Player_Name = "Default";
Player_Tag = "P1";
Player_Colour = c_nature;

Draw = false;

CondenseCounterParty = 0;
CondenseCounterStorage = 0;
CondenseCounterOperations = 0;

//Establish Storage
//Storage is a full list of all creatures a Player owns
StorageSize = global.Default_StorageSize;
for ( var stored_creature=1 ; stored_creature<=StorageSize ; stored_creature++ ) {
	Stored_Status[stored_creature] = eCreatureState.nonexistant;
	};

//Establish Party
//A Player's party is a subset of the stored creatures, 
//the ones they can use in battle, with more information 
//readily available like health that doesn't need to be kept
//for stored creatures
PartySize = global.Default_PartySize;
for ( var party_member=1 ; party_member<=PartySize ; party_member++ ) {
	var_oPlayer_Party_Empty(party_member);
	};
	
OptionalUpdates = true;
alarm[0] = 1;//Periodic Updates

