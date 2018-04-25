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
if ( PathStyle == ePaths.israndom ) {
	PathStyle = irandom_range(1,2);
	};

switch ( PathStyle ) {
	// Horizontal -> Vertical
	default: case ePaths.x_toY:
		//Horizontal
		if ( XDir == LEFT ) {
			for ( var X=X2 ; X<=X1 ; X++ ) {
				adv_TileFloor[X,Y1] = FloorType;
				if ( X!=X2 ) { adv_TileConnectsLeft[X,Y1] = true };
				if ( X!=X1 ) { adv_TileConnectsRight[X,Y1] = true };
				};
		} else {
			for ( var X=X1 ; X<=X2 ; X++ ) {
				adv_TileFloor[X,Y1] = FloorType;
				if ( X!=X1 ) { adv_TileConnectsLeft[X,Y1] = true };
				if ( X!=X2 ) { adv_TileConnectsRight[X,Y1] = true };
				};
			};
		//Vertical
		if ( YDir == UP ) {
			for ( var Y=Y2 ; Y<=Y1 ; Y++ ) {
				adv_TileFloor[X2,Y] = FloorType;
				if ( Y!=Y2 ) { adv_TileConnectsUp[X2,Y] = true };
				if ( Y!=Y1 ) { adv_TileConnectsDown[X2,Y] = true };
				};
		} else {
			for ( var Y=Y1 ; Y<=Y2 ; Y++ ) {
				adv_TileFloor[X2,Y] = FloorType;
				if ( Y!=Y1 ) { adv_TileConnectsUp[X2,Y] = true };
				if ( Y!=Y2 ) { adv_TileConnectsDown[X2,Y] = true };
				};
			};
		break;
	// Vertical -> Horizontal
	case ePaths.y_toX:
		//Vertical
		if ( YDir == UP ) {
			for ( var Y=Y2 ; Y<=Y1 ; Y++ ) {
				adv_TileFloor[X1,Y] = FloorType;
				if ( Y!=Y2 ) { adv_TileConnectsUp[X1,Y] = true };
				if ( Y!=Y1 ) { adv_TileConnectsDown[X1,Y] = true };
				};
		} else {
			for ( var Y=Y1 ; Y<=Y2 ; Y++ ) {
				adv_TileFloor[X1,Y] = FloorType;
				if ( Y!=Y1 ) { adv_TileConnectsUp[X1,Y] = true };
				if ( Y!=Y2 ) { adv_TileConnectsDown[X1,Y] = true };
				};
			};
		//Horizontal
		if ( XDir == LEFT ) {
			for ( var X=X2 ; X<=X1 ; X++ ) {
				adv_TileFloor[X,Y2] = FloorType;
				if ( X!=X2 ) { adv_TileConnectsLeft[X,Y2] = true };
				if ( X!=X1 ) { adv_TileConnectsRight[X,Y2] = true };
				};
		} else {
			for ( var X=X1 ; X<=X2 ; X++ ) {
				adv_TileFloor[X,Y2] = FloorType;
				if ( X!=X1 ) { adv_TileConnectsLeft[X,Y2] = true };
				if ( X!=X2 ) { adv_TileConnectsRight[X,Y2] = true };
				};
			};
		break;
	};