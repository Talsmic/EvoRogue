window_listbox_leftclick();

var tabpress = window_tabset_leftclick(1);
if ( tabpress ) {
	switch ( Tabset_Pointer[1] ) {
		case 1:		window_listbox_command("ParentMode:Skills");		break;
		case 2:		window_listbox_command("ParentMode:Creatures");		break;
		};
	};

tabpress = window_tabset_leftclick(2);
if ( tabpress ) {
	switch ( Tabset_Pointer[2] ) {
		case 1:		window_listbox_command("Mode:Icons");		break;
		case 2:		window_listbox_command("Mode:Words");		break;
		};
	};

if ( Mode == "Creatures" ) {
	tabpress = window_tabset_leftclick(3);
	};

//Close
if ( mouse_in_region_gui( define_region( oGlobalController.Resolution_CompleteWidth-24,0,24,24 ) ) ) {
	instance_destroy();
	};