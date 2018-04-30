///load_settings()
/*
	[Edited 18/4/2018]
	Loads in game options controlled by settings.ini
*/
ini_open("settings.ini");

//=[Video Settings]==================================================
Options_Fullscreen = ini_read_real("video", "fullscreen", 0);
Options_Magnification = ini_read_real("video", "scale", 3);
Options_LockedMagnification = ini_read_real("video", "lockedscale", false);
Options_Vsync = ini_read_real("video", "vsync", false);
//===================================================================

//=[Sound Settings]==================================================
sound_mute = ini_read_real("sound", "sound_mute", 0);
music_mute = ini_read_real("sound", "music_mute", 0);
volume_master = ini_read_real("sound", "volume_master", 100);
volume_sound = ini_read_real("sound", "volume_sound", 100);
volume_music = ini_read_real("sound", "volume_music", 100);
//===================================================================

ini_close();
