///draw_cornercross(x,y,sprite,state);
/// @arg x			
/// @arg y
/// @arg sprite		
/// @arg state
/*	
	[Edited 24/4/2018] (Variant of draw_tilebox_ext)
	Draws a coloured, semi-termparent UI box with rounded corners 
*/

var X = argument0; 
var Y = argument1;
var sprite = argument2; 
var state = argument3;

//State Detection
if ( state == eIconState.detectGUI ) {
	if ( infocus() ) {
		if ( mouse_in_region_gui( define_region( X-sprite_get_width(sprite),Y,sprite_get_width(sprite),sprite_get_height(sprite) ) ) ) {
			if ( mouse_check_button(mb_left) ) {
				state = eIconState.pressed
				}
			else { state = eIconState.mouseover };
			}
		else { state = eIconState.enabled };
		}
	else { state = eIconState.disabled };
	};

draw_sprite(sprite,state,X,Y);