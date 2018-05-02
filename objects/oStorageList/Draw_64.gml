//Update Lists
if ( SubMode != Mode ) {
	Mode = SubMode;
	switch ( Mode ) {
		case "Storage":		
			var listbox_position = Listbox_Position;
			window_listbox_command("ParentMode:PlayerStorage");			
			window_listbox_command("ListLength");
			Listbox_Position = PlayerID.Party_StoredID[listbox_position];	
			window_listbox_command("scrollsnap");	
			break;
		case "Party":	
			var listbox_position = creatureinparty(PlayerID,Listbox_Position);
			window_listbox_command("ParentMode:PlayerParty");	
			Listbox_Position = listbox_position;	
			window_listbox_command("scrollsnap");	
			break;
		};
	};
	
if ( SubPlayerID != PlayerID ) {
	PlayerID = SubPlayerID;
	Listbox_Position = 1;
	switch ( Mode ) {
		case "Storage":		window_listbox_command("ParentMode:PlayerStorage");			break;
		case "Party":		window_listbox_command("ParentMode:PlayerParty");			break;
		};
	};

Parent.Databox_Pointer[2] = Listbox_Position;
window_listbox_draw();