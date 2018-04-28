/// @desc [Debug] Commandline
/*Debugmode Required*/ if ( !DebugMode ) { return };

var command = get_string("Global Controller Commandline:","");
globalcontroller_command( command );