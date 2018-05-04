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
			var listbox_position = inparty(PlayerID,Listbox_Position);
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

if ( DrawExtraCommands ) {
	switch ( Mode ) {
		case "Storage":		
			draw_tooltip_basic("[1]:|1 Add to Party# [2]:|2 Remove from Party# # [8]:|8 Free from Storage# [9]:|9 Condense# [BkSpc]:|10 Toggle Battle",5,5,150);
			break;
		case "Party":	
			draw_tooltip_basic("[1]:|1 Add Random to Party# [2]:|2 Remove from Party# # [8]:|8 Free from Storage# [9]:|9 Condense# [BkSpc]:|10 Toggle Battle",5,5,150);
			break;
		};
	};
