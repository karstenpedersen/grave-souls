/// @description Sounds Loaded


//check to see if audio groups are loaded
if (audio_group_is_loaded(music)) {
	MUSIC_LOADED = true;
}

if (audio_group_is_loaded(sound_effects)) {
	SOUND_LOADED = true;
}
