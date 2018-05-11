/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/

var tabpress = ui_tabset_leftclick(1);
if ( tabpress ) {
	switch ( Tabset_Pointer[1] ) {
		case 1:		Databox_Type[2] = "PartyCreature:Status"		break;
		case 2:		Databox_Type[2] = "PartyCreature:Skills"		break;
		case 3:		Databox_Type[2] = "PartyCreature:Passives"		break;
		};
	};

//Close
if ( mouse_in_region_gui( define_region( oGameController.Resolution_CompleteWidth-24,0,24,24 ) ) ) {
	instance_destroy();
	};
