PlayerName = "Default";
PlayerTag = "P1";
PlayerColour = c_nature;

Draw = false;

//Establish Storage
//Storage is a full list of all creatures a Player owns
StorageSize = global.gps_storagesize;
for ( var i=1 ; i<=StorageSize ; i++ ) {
	Stored_Status[i] = eCreatureState.nonexistant;
	};

//Establish Party
//A Player's party is a subset of the stored creatures, 
//the ones they can use in battle, with more information 
//readily available like health that doesn't need to be kept
//for stored creatures
PartySize = global.gps_partysize;
for ( var i=1 ; i<=PartySize ; i++ ) {
	Party_Status[i] = eCreatureState.nonexistant;
	Party_StoredID[i] = 0;
	Party_Skill[i,0] = 0;
	Party_Trait[i,0] = 0;
	};
