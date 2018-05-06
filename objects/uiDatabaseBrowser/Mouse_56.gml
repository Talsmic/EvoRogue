/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/

ui_listbox_leftclick();

var tabpress = ui_tabset_leftclick(1);
if ( tabpress ) {
	switch ( Tabset_Pointer[1] ) {
		case 1:		ui_listbox_command("ParentMode:Skills");		break;
		case 2:		ui_listbox_command("ParentMode:Creatures");		break;
		};
	};

tabpress = ui_tabset_leftclick(2);
if ( tabpress ) {
	switch ( Tabset_Pointer[2] ) {
		case 1:		ui_listbox_command("Mode:Icons");		break;
		case 2:		ui_listbox_command("Mode:Words");		break;
		};
	};

if ( Mode == "Creatures" ) {
	tabpress = ui_tabset_leftclick(3);
	};

//Close
if ( mouse_in_region_gui( define_region( oGlobalController.Resolution_CompleteWidth-24,0,24,24 ) ) ) {
	instance_destroy();
	};