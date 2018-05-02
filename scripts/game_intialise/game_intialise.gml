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

storage_create_creature(global.DefaultOpponent,19,5);

randomise();
for ( var i=1 ; i<=10 ; i++ ) {
	var j = storage_create_creature(global.Player1,i,irandom(10));
	};
for ( var i=1 ; i<=30 ; i++ ) {
	var j = storage_create_creature(global.Player1,irandom_range(1,19),irandom(10));
	};

for ( var i=1 ; i<=global.gps_partysize ; i++ ) {
	party_addfromstorage(global.Player1,irandom_range(32,35));
	};
