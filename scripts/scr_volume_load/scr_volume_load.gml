function scr_volume_load() {
	if file_exists("Save.sav") {
	ini_open("Save.sav");
	MASTER_VOLUME = ini_read_real("options","master_volume",1);
	MUSIC_VOLUME = ini_read_real("options","music_volume",1);
	SOUND_VOLUME = ini_read_real("options","sound_volume",1);
	ini_close();
	//room_goto(loadedRoom);
	} else {
		show_debug_message("Unable to find your save");
	}



}
