/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/

ui_listbox_keyrelease();

//[Esc] Close
if ( keyboard_check_released(vk_escape) ) {
	instance_destroy();
	};