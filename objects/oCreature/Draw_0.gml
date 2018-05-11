if ( !Draw ) { return };

//Adjust and Draw Shadow
var shadow = Sprite_Shadow;
if ( Jump_Offset > 36 and shadow < 14 ) { shadow-- };
if ( Jump_Offset > 24 and shadow < 14 ) { shadow-- };
if ( Jump_Offset > 12 and shadow < 14 ) { shadow-- };
draw_sprite(spr_shadows,shadow,x,y);

//Draw Hover Glow
if ( position_meeting( mouse_x, mouse_y, id ) ) {
	create_sprite_glow(sprite_get_width(Sprite)+3,sprite_get_height(Sprite)+3);
	drawto_sprite_glow_ext(Sprite,0,3,3,3,0.2,Sprite_ScaleX*Facing,Sprite_ScaleY,Sprite_Rotation);
	drawto_sprite_glow_ext(Sprite,0,3,3,2,0.5,Sprite_ScaleX*Facing,Sprite_ScaleY,Sprite_Rotation);
	drawto_sprite_glow_ext(Sprite,0,3,3,1,0.5,Sprite_ScaleX*Facing,Sprite_ScaleY,Sprite_Rotation);
	draw_sprite_glow(x-51-Jump_Offset,y-75,c_shadow,1,Sprite_ScaleX*Facing,Sprite_ScaleY,Sprite_Rotation);
	};
	
//Draw Selected Glow
if ( Selected ) {
	create_sprite_glow(sprite_get_width(Sprite)+1,sprite_get_height(Sprite)+1);
	drawto_sprite_glow_ext(Sprite,0,1,1,1,1,Sprite_ScaleX*Facing,Sprite_ScaleY,Sprite_Rotation);
	draw_sprite_glow(x-49-Jump_Offset,y-73,c_white,1,Sprite_ScaleX*Facing,Sprite_ScaleY,Sprite_Rotation);
	};

//Draw Sprite
draw_sprite_ext(Sprite,0,x-Jump_Offset,y,Sprite_ScaleX*Facing,Sprite_ScaleY,Sprite_Rotation,Sprite_Tint,Sprite_Alpha);

//Draw Flash Effect
if ( Flash_Intensity > 0 ) {
	gpu_set_fog(true, Flash_Colour, 0, 0);
	draw_sprite_ext(Sprite,0,x-Jump_Offset,y,Sprite_ScaleX*Facing,Sprite_ScaleY,Sprite_Rotation,Sprite_Tint,Flash_Intensity);
	gpu_set_fog(false, Flash_Colour, 0, 0);
	};

//Draw Targetting Reticle
if ( Targeted ) {
	draw_sprite_ext(spr_scrollarrow,2,x,y-45-oGameController.Beat[0]*6,1,1,0,c_fire,0.8);
	};