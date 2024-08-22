function scr_game_load() {
	if file_exists("Save.sav") {
	ini_open("Save.sav");

	//DEV
	global.dev_mode = ini_read_real("options","dev_mode",false);

	//SOUND
	MASTER_VOLUME = ini_read_real("options","master_volume",1);
	MUSIC_VOLUME = ini_read_real("options","music_volume",1);
	SOUND_VOLUME = ini_read_real("options","sound_volume",1);

	var loadedRoom = ini_read_real("game","room",rm_splash_screen);

	//PLAYER STATS
	global.level = ini_read_real("game","level",1);
	global.xp = ini_read_real("game","xp",0);
	global.souls = ini_read_real("game","souls",0);
	global.health_max = ini_read_real("game","max_health",200);
	global.stamina_max = ini_read_real("game","max_stamina",150);

	global.stat_strength = ini_read_real("stats","strength",1);
	global.stat_charisma = ini_read_real("stats","charisma",1);
	global.stat_intelligence = ini_read_real("stats","intelligence",1);
	global.stat_agility = ini_read_real("stats","agility",1);
	global.stat_luck = ini_read_real("stats","luck",1);

	global.checkpoint_room = ini_read_real("checkpoint","room",rm_spawn);
	global.checkpoint_x = ini_read_real("checkpoint","playerx",144);
	global.checkpoint_y = ini_read_real("checkpoint","playery",416);

	/*global.deathpoint_room = ini_read_real("deathpoint","deathroom",rm_spawn);
	global.deathpoint_x = ini_read_real("deathpoint","deathplayerx",0);
	global.deathpoint_y = ini_read_real("deathpoint","deathplayery",0);*/
	ini_close();
	} else {
		show_debug_message("Unable to find your save");
	}

	room_goto(global.checkpoint_room);
	if !instance_exists(obj_player) {
		instance_create_layer(global.checkpoint_x,global.checkpoint_y,"player",obj_player);
	}

	//MAKE SURE LEVEL AND XP WORKS
	global.max_xp = (30 + (global.level*100) - 20);


}
