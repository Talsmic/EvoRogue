//Game
#macro VERSION "Roguelite V0.1"
#macro CREATURECOUNT 19

#macro NONE 0

//Directions
#macro UP 1
#macro LEFT 2
#macro DOWN 3
#macro RIGHT 4
#macro VERTICAL 5
#macro HORIZONTAL 6
#macro ANGLE_UP 0
#macro ANGLE_LEFT 90
#macro ANGLE_DOWN 180
#macro ANGLE_RIGHT 270
enum eDirection {	
	stop, up, right, down, left, forward, backward	};

//Battle
enum eCreatureState { 
	nonexistant, existant, defeated, active, benched, defeatedbenched	};
enum eEffects { 
	NoEffect, sFlying, sRooted	};

//Multiplayer
#macro TEAMDATA 1
#macro SWITCHDATA 2
#macro ROUNDDATA 3
#macro STANDARD 1
#macro HOVERED 2
#macro PRESSED 3

//Colours//Default Colour Values
//Elements
#macro c_physical		$666600
#macro c_fire			$0000CC
#macro c_water			$CC6600
#macro c_air			$00CCFF
#macro c_nature			$009900
#macro c_shadow			$990099
//Attributes
#macro c_power			$1C24ED
#macro c_fortitude		$A65400
#macro c_speed			$1DA3F7
#macro c_recovery		$00A651
#macro c_potency		$8A2EB0
//Dark Elements
#macro c_physical_dark	$3D3D04//484803
#macro c_fire_dark		$040476//03038C
#macro c_water_dark		$763D04//8C4803
#macro c_air_dark		$047692//038CAF
#macro c_nature_dark	$045904//036A03
#macro c_shadow_dark	$590459//6A036A
#macro c_power_dark		$141888//161cA3
#macro c_fortitude_dark $613304//733C03
#macro c_speed_dark		$145F8D//1770AA
#macro c_recovery_dark	$046132//03733A
#macro c_potency_dark	$511E67//60227A
#macro c_physical_light	$8C8C40
#macro c_fire_light		$4040D9
#macro c_water_light	$D98C40
#macro c_air_light		$40D9FF
#macro c_nature_light	$40B340
#macro c_shadow_light	$B340B3
#macro c_power_light	$555BF2
#macro c_fortitude_light $BC7F40
#macro c_speed_light	$56BAF9
#macro c_recovery_light	$40BC7D
#macro c_potency_light	$A762C4
//Other
#macro c_white_dark		$AFAFAF
#macro c_lightgray		$999999
#macro c_midgray		$505050
#macro c_nullgray		$323232
#macro c_darkgray		$151515
//Depreciated Elements
#macro c_earth			$003366
#macro c_frost			$ffff99
#macro c_electric		$00ccff
#macro c_magic			$9966ff
#macro c_earth_dark		$001933
#macro c_frost_dark		$7f7f4c
#macro c_electric_dark	$00667f
#macro c_magic_dark		$4c337f

//Misc
enum eIconState { 
	disabled, enabled, mouseover, pressed, disabled_recharge, disabled_energy, detectGUI, detectroom, focus	};


