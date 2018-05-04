///game_intialise();

//Intialize Databases
database_create();

//Intialize Global Variables
var_initialize();

//Create Global Controller
instance_create_depth(-1,-1,-1,oGlobalController);

//Create Local Player
global.Player1 = instance_create_depth(0,0,0,oPlayer);
global.Player1.PlayerName = "Lerentis";
global.LocalPlayer = global.Player1;

//Create Default Opponent
global.DefaultOpponent = instance_create_depth(0,0,0,oPlayer);
global.DefaultOpponent.PlayerName = "Opponent";
global.DefaultOpponent.PlayerTag = "NPC";
global.DefaultOpponent.PlayerColour = c_fire;
global.Opponent = global.DefaultOpponent;


//Test Code Below this point-----------------------

storage_add(global.DefaultOpponent,19,5);

randomise();
with ( global.Player1 ) {
	for ( var i=1 ; i<=100 ; i+=2 ) {
		var_oPlayer_Storage_Exists(i);
		};
	for ( var i=1 ; i<=10 ; i+=2 ) {
		party_add_fromstorage(id,irandom(100));
		};
		
	party_add_fromstorage(id,99);
	
	};