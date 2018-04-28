//Game
#macro VERSION "Roguelite V0.1"

//Directions
#macro STOP 0
#macro UP 1
#macro RIGHT 2
#macro DOWN 3
#macro LEFT 4
#macro FORWARD 5
#macro BACKWARD 6
enum eDirection {	
	stop, up, right, down, left, forward, backward	};

//Battle
enum eCreatureState { 
	nonexistant, existant, defeated, active, benched, defeatedbenched	};

//Multiplayer
#macro TEAMDATA 1
#macro SWITCHDATA 2
#macro ROUNDDATA 3
#macro STANDARD 1
#macro HOVERED 2
#macro PRESSED 3

//Colours
//Attributes
#macro c_power		$0000cc
#macro c_fortitude	$cc3300
#macro c_speed		$00ccff
#macro c_recovery	$009900
#macro c_potency	c_purple
#macro c_power_dark $0000cc
#macro c_fortitude_dark $cc3300
#macro c_speed_dark		$00ccff
#macro c_recovery_dark	$009900
#macro c_potency_dark	c_purple
//Elements
#macro c_physical	$666600
#macro c_fire		$0000cc
#macro c_water		$cc6600
#macro c_air		$00ccff
#macro c_nature		$009900
#macro c_shadow		$990099
#macro c_physical_dark $333300
#macro c_fire_dark		$000066
#macro c_water_dark		$663300
#macro c_air_dark		$00667f
#macro c_nature_dark	$004c00
#macro c_shadow_dark	$4c004c
//Other
#macro c_lightgray	$999999
#macro c_midgray	$505050
#macro c_darkgray	$151515
//Depreciated Elements
#macro c_earth		$003366
#macro c_frost		$ffff99
#macro c_electric	$00ccff
#macro c_magic		$9966ff
#macro c_earth_dark		$001933
#macro c_frost_dark		$7f7f4c
#macro c_electric_dark	$00667f
#macro c_magic_dark		$4c337f

//Misc
enum eIconState { 
	disabled, enabled, mouseover, pressed, disabled_recharge, disabled_energy, detectGUI, detectroom	};


