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
	Party_Status[party_member] = eCreatureState.nonexistant;
	Party_StoredID[party_member] = 0;
	Party_Skill[party_member,1] = 0;
	Party_Trait[party_member,1] = 0;
	Party_Health[party_member] = 1;
	Party_MaxHealth[party_member] = 1;
	};
	
OptionalUpdates = true;
alarm[0] = 1;//Periodic Updates

