///focus_check(value);
/// @arg value
//Use in events:
//if ( focus_check(FocusLevel) == false ) { return };

var value = argument0;

if ( globalcontroller.FocusLevel >= value ) { return true };
return false;