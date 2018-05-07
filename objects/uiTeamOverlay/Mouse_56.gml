/*FocusCheck*/	if ( !infocus() ) { return };	/*FocusCheck*/

var panel = instance_nearest(x,y,uiPartyCreature);
//Icons
var box_x = 0;
var box_y = oGlobalController.Resolution_CompleteHeight - 22;
for ( var i=1 ; i<=party_lastentry(Player) ; i++ ) {
	if ( Player.Party_Status[i] and mouse_in_region_gui( define_region_icon( box_x+i*29-13,box_y,24.32 ) ) ) {
		//If no Info Panel exists, create one
		if ( !panel ) {	
			panel = instance_create_depth(0,0,-30,uiPartyCreature); 
			panel.FocusLevel = FocusLevel;
			};
		panel.Player = Player;
		panel.Party_Member = i;
		};
	};
	
//Team Change
if ( point_in_rectangle( mouse_x, mouse_y, 372, y-4, 452, y+20 )) {
	//instance_create_depth(0,0,-40,ui_storage);
	};