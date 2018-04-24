///save_settings()
/*
	[Edited 18/4/2017]
	Saves in game options to settings.ini
*/
ini_open("settings.ini");

//Find "scale"
var ideal_width = 480;
var ideal_height = 270;
var breakpoints_width = [0,ideal_width,ideal_width*2,ideal_width*3,ideal_width*4,ideal_width*5];
var breakpoints_height = [0,ideal_height,ideal_height*2,ideal_height*3,ideal_height*4,ideal_height*5];
var real_magnification = 1;
for ( var i=1 ; i<5 ; i++ ) {
	if ( window_get_width() >= breakpoints_width[i] and window_get_height() >= breakpoints_height[i] ) {
		real_magnification = i;
		};
	};


//=[Video Settings]==================================================
ini_section_delete("video");
ini_write_real("video", "fullscreen", option_fullscreen);
ini_write_real("video", "scale", real_magnification);
//===================================================================

//=[Sound Settings]==================================================
ini_section_delete("sound");
ini_write_real("sound", "sound_mute", sound_mute);
ini_write_real("sound", "music_mute", music_mute);
ini_write_real("sound", "volume_master", volume_master);
ini_write_real("sound", "volume_sound", volume_sound);
ini_write_real("sound", "volume_music", volume_music);
//===================================================================

ini_close();
