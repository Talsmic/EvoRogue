///load_settings()
/*
	[Edited 18/4/2018]
	Loads in game options controlled by settings.ini
*/
ini_open("settings.ini");

//=[Video Settings]==================================================
option_fullscreen = ini_read_real("video", "fullscreen", 0);
resolutionsnap_magnification = ini_read_real("video", "scale", 3);
//===================================================================

//=[Sound Settings]==================================================
sound_mute = ini_read_real("sound", "sound_mute", 0);
music_mute = ini_read_real("sound", "music_mute", 0);
volume_master = ini_read_real("sound", "volume_master", 100);
volume_sound = ini_read_real("sound", "volume_sound", 100);
volume_music = ini_read_real("sound", "volume_music", 100);
//===================================================================

ini_close();
