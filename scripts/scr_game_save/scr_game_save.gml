function scr_game_save() {
	if file_exists("Save.sav") file_delete("Save.sav");
	ini_open("Save.sav");
	var savedRoom = room;

	ini_write_real("options","dev_mode",global.dev_mode);
	ini_write_real("options","master_volume",MASTER_VOLUME);
	ini_write_real("options","music_volume",MUSIC_VOLUME);
	ini_write_real("options","sound_volume",SOUND_VOLUME);

	/*
	if instance_exists(obj_player) {
	ini_write_real("game","playerx",obj_player.x);
	ini_write_real("game","playery",obj_player.y);
	}*/
	ini_write_real("game","room",savedRoom);

	ini_write_real("game","level",global.level);
	ini_write_real("game","xp",global.xp);
	ini_write_real("game","souls",global.souls);
	ini_write_real("game","max_health",global.health_max);
	ini_write_real("game","max_stamina",global.stamina_max);

	//STATS
	ini_write_real("stats","strength",global.stat_strength);
	ini_write_real("stats","charisma",global.stat_charisma);
	ini_write_real("stats","intelligence",global.stat_intelligence);
	ini_write_real("stats","agility",global.stat_agility);
	ini_write_real("stats","luck",global.stat_luck);

	ini_write_real("checkpoint","room",global.checkpoint_room);
	ini_write_real("checkpoint","playerx",global.checkpoint_x);
	ini_write_real("checkpoint","playery",global.checkpoint_y);

	/*ini_write_real("deathpoint","deathroom",global.deathpoint_room);
	ini_write_real("deathpoint","deathsoulx",global.deathpoint_x);
	ini_write_real("deathpoint","deathsouly",global.deathpoint_y);*/

	ini_close();


}
