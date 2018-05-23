///game_intialise2();

//Intialize Databases
database_create();

//Intialize Global Variables
var_initialize();

//Create Global Controller
if ( !object_exists(oGameController) ) {
	instance_create_depth(-1,-1,-1,oGameController);
	};

//Create Local Player
global.Player1 = instance_create_depth(0,0,0,oPlayer);
global.Player1.Player_Name = "Lerentis";
global.LocalPlayer = global.Player1;

//Create Default Opponent
global.DefaultOpponent = instance_create_depth(0,0,0,oPlayer);
global.DefaultOpponent.Player_Name = "Opponent";
global.DefaultOpponent.Player_Tag = "NPC";
global.DefaultOpponent.Player_Colour = c_fire;
global.Opponent = global.DefaultOpponent;


//Test Code Below this point-----------------------

storage_add(global.DefaultOpponent,19,5);

randomise();
with ( global.Player1 ) {
	for ( var i=1 ; i<=100 ; i+=2 ) {
		var_oPlayer_Storage_Exists(i);
		};
	for ( var i=1 ; i<=global.Default_PartySize ; i+=2 ) {
		Party_StoredID[i] = irandom(100);
		party_update_fromstorage(id,i);
		};
		
	party_add_fromstorage(id,99);
	
	};