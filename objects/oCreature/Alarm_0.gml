/// @desc Updates (Every Update Window)
alarm[0] = global.UpdateWindow;
//==============================================================================
//Update Sprite
Sprite = dbpull_creature_sprite(Player.Party_Species[Party_Member]);
//Update Shadow
Sprite_Shadow = dbpull_creature_shadow(Player.Party_Species[Party_Member]);
//Update Mask
mask_index = Sprite;
//Update Targets
if ( ShowTarget and Selected ) {
	with ( oCreature ) { Targeted = false };
	Target.Targeted = true;
	};