/*

MACROS
localvariables
InstanceVariables
global.GlobalVariables

oObject
btnButton

rm_Room

spr_Sprite

Identations are done like this:
if ( arg ) {
	fn();
	};
I know this is not the common standard, but as I primarily work on this project 
alone, I've selected the format I find easiest to read at a glance. 

=[Prefixes]=====================================================================
-[Variables]--------------------------------------------------------------------
adv_		Adventure / Roguelike Mode

-[Functions]--------------------------------------------------------------------
fn_			Generic Function
draw_		Generic drawing Function

var_		Variable Operations
varset_		Establishes a pool of variables (Generally for use at creation)

advgen_		Adventure Generator / Roguelike Generator
================================================================================

=[Focus Layers]=================================================================
-[10][Play Space]----------------------------------------------------------------
Player moving in world and interacting with surroundings
-[9][Interact in Space]---------------------------------------------------------
Any interaction that locks movement without being a menu or overlay
-[8][Dialog Boxes]--------------------------------------------------------------
-[7][Menus in Space]------------------------------------------------------------
...
-[5][Overlay Menus]-------------------------------------------------------------
...
-[1][Debug Menus]---------------------------------------------------------------


//Dividers (Width is 20 tabs)
//=[]===========================================================================
//-[]---------------------------------------------------------------------------
//==============================================================================
//------------------------------------------------------------------------------
=[]=============================================================================
-[]-----------------------------------------------------------------------------
================================================================================
--------------------------------------------------------------------------------