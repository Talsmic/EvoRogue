/// @desc Update Lists

switch ( Mode ) {
	case "Storage":		
		Listbox_ListIcon = 0;
		Listbox_ListWords = 0;
		Listbox_ListColour = 0;
		with ( PlayerID ) {
			for ( var i=1 ; i<=storage_lastentry(id) ; i++ ) {
				if ( !Stored_Status[i] ) { 
					other.Listbox_ListIcon[i] = 0;
					other.Listbox_ListWords[i] = " ";
					other.Listbox_ListColour[i] = c_black;					
					//i = StorageSize 
					};
				else {
					other.Listbox_ListIcon[i] = db_record_get("db_Creatures",Stored_Species[i],"icon");
					other.Listbox_ListWords[i] = Stored_Name[i];
					other.Listbox_ListColour[i] = db_record_get("db_Creatures",Stored_Species[i],"element");
					};
				};
			};
		break;
	case "Party":	
		Listbox_ListIcon = 0;
		Listbox_ListWords = 0;
		Listbox_ListColour = 0;
		with ( PlayerID ) {
			for ( var i=1 ; i<=party_lastentry(id) ; i++ ) {
				if ( !Party_Status[i] ) { 
					other.Listbox_ListIcon[i] = 0;
					other.Listbox_ListWords[i] = " ";
					other.Listbox_ListColour[i] = c_black;										
					//i = PartySize 
					};
				else {
					other.Listbox_ListIcon[i] = db_record_get("db_Creatures",Party_Species[i],"icon");
					other.Listbox_ListWords[i] = Party_Name[i];
					other.Listbox_ListColour[i] = db_record_get("db_Creatures",Party_Species[i],"element");
					};
				};
			};
		break;
	};

alarm[0] = 30;