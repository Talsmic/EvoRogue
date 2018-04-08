///advgen_floorbetweenpoints(X1,Y1,X2,Y2,PathStyle,FloorType);
/// @arg X1
/// @arg Y1
/// @arg X2
/// @arg Y2
/// @arg PathStyle
/// @arg FloorType

var X1 = argument0;
var Y1 = argument1;
var X2 = argument2;
var Y2 = argument3;
var PathStyle = argument4;
var FloorType = argument5;

if ( X1 > X2 ) { var XDir = LEFT } else { var XDir = RIGHT };
if ( Y1 > Y2 ) { var YDir = UP } else { var YDir = DOWN };

//Random Path Styles
if ( PathStyle == enum_Paths.random ) {
	PathStyle = irandom_range(1,2);
	};

switch ( PathStyle ) {
	// Horizontal -> Vertical
	default: case enum_Paths.x_to_y:
		//Horizontal
		if ( XDir == LEFT ) {
			for ( var X=X2 ; X<=X1 ; X++ ) {
				adv_TileFloor[X,Y1] = FloorType;
				};
		} else {
			for ( var X=X1 ; X<=X2 ; X++ ) {
				adv_TileFloor[X,Y1] = FloorType;
				};
			};
		//Vertical
		if ( YDir == UP ) {
			for ( var Y=Y2 ; Y<=Y1 ; Y++ ) {
				adv_TileFloor[X2,Y] = FloorType;
				};
		} else {
			for ( var Y=Y1 ; Y<=Y2 ; Y++ ) {
				adv_TileFloor[X2,Y] = FloorType;
				};
			};
		break;
	// Vertical -> Horizontal
	case enum_Paths.y_to_x:
		//Vertical
		if ( YDir == UP ) {
			for ( var Y=Y2 ; Y<=Y1 ; Y++ ) {
				adv_TileFloor[X1,Y] = FloorType;
				};
		} else {
			for ( var Y=Y1 ; Y<=Y2 ; Y++ ) {
				adv_TileFloor[X1,Y] = FloorType;
				};
			};
		//Horizontal
		if ( XDir == LEFT ) {
			for ( var X=X2 ; X<=X1 ; X++ ) {
				adv_TileFloor[X,Y2] = FloorType;
				};
		} else {
			for ( var X=X1 ; X<=X2 ; X++ ) {
				adv_TileFloor[X,Y2] = FloorType;
				};
			};
		break;
	};