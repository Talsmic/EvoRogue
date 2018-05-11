/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/

ui_listbox_leftclick();

var tabpress = ui_tabset_leftclick(1);
if ( tabpress ) {
	switch ( Tabset_Pointer[1] ) {
		case 1:		SubMode = "Storage"; Databox_Pointer[2] = 1;	break;
		case 2:		SubMode = "Party"; Databox_Pointer[2] = 1;		break;
		};
	};

//Close
if ( mouse_in_region_gui( define_region( oGameController.Resolution_CompleteWidth-24,0,24,24 ) ) ) {
	instance_destroy();
	};