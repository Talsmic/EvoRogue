/// @desc Updates (Every Update Window)
alarm[0] = global.UpdateWindow;
//==============================================================================
//Update Association
if ( Player.Party_Status[Party_Member] = eCreatureState.nonexistant ) {
	Party_Member = 1 };
//Update Sprite
Sprite = dbpull_creature_sprite(Player.Party_Species[Party_Member]);
//Update Shadow
Sprite_Shadow = dbpull_creature_shadow(Player.Party_Species[Party_Member]);
//Update Mask
mask_index = Sprite;
//Update Targets
if ( Target == id ) { Target = 0 };
if ( Selected ) {
	with ( oCreature ) { Targeted = false };
	with ( Target ) { Targeted = true };
	Targeted = false;
	};