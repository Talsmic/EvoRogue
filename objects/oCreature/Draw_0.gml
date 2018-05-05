if ( !Draw ) { return };

//Draw Shadow
draw_sprite(spr_shadows,Sprite_Shadow,x,y);
//Draw Sprite
draw_sprite_ext(Sprite,0,x,y,Sprite_ScaleX*Sprite_Facing,Sprite_ScaleY,Sprite_Rotation,Sprite_Tint,Sprite_Alpha);

if ( mouse_in_region( [0,x-48,y-72,x+48,y+72] ) ) {
	draw_sprite_glow(Sprite,0,x-48,y-72,0,c_nature,0.5);
	};

/* LEGACY CODE

//Update from active
if ( ref_active ) {
	if (global.active_creature[ref_player, ref_active] <= 0) { return };
	ref_creature = global.active_creature[ref_player, ref_active];
	};

//Find Sprite
var ref_species = global.party_species[ref_player, ref_creature];
if (ref_species == 0) { return };
var ref_sprite = asset_get_index(db_record_get("db_Creatures",ref_species,"sprite"));
var ref_shadow = db_record_get("db_Creatures",ref_species,"shadow");

//Adjust Shadow
if ( jump_offset > 36 and ref_shadow < 14 ) { ref_shadow-- };
if ( jump_offset > 24 and ref_shadow < 14 ) { ref_shadow-- };
if ( jump_offset > 12 and ref_shadow < 14 ) { ref_shadow-- };

//Draw
draw_sprite(spr_shadows,ref_shadow,x,y);
draw_sprite_ext(ref_sprite,0,x,y-jump_offset,facing,1,rotation,c_white,alpha);

//Effect: Flash
if ( flash_intensity > 0 ) {
	gpu_set_fog(true, flash_colour, 0, 0);
	draw_sprite_ext(ref_sprite,0,x,y-jump_offset,facing,1,rotation,c_white,flash_intensity);
	gpu_set_fog(false, flash_colour, 0, 0);
	};