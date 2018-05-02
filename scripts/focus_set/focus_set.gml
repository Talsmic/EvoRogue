///focus_set(value);
/// @arg value
// Will only decrease focus levels, can't increase focus levels above the current set value.

var value = argument0;

if ( value < oGlobalController.FocusCheck ) { oGlobalController.FocusCheck = value };