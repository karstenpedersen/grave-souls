function scr_start_game() {
	//CLASS
	if global.class = "Knight" {
		global.stat_resistance = 10;
		global.stat_strength = 10;
		global.stat_charisma = 10;
		global.stat_intelligence = 10;
		global.stat_agility = 10;
		global.stat_luck = 10;
	}

	//STATS
	global.health_max = 200;
	global.stamina_max = 150;
	global.sins_max = 1000;

	//ITEMS
	global.souls = 0;
	global.sins = 0;

	//LEVEL
	global.level = 0;
	global.xp = 0;
	global.skill_points = 0;


}
