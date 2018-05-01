/// @desc [Debug] Commandline
/*Debugmode Required*/ if ( !DebugMode ) { return };

var command = get_string("Global Controller Commandline:"," ");
oGlobalController_command( command );