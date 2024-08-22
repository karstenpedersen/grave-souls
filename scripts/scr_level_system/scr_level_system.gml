function scr_level_system() {
	if global.xp >= global.max_xp {
		global.xp = 0;
		global.level += 1;
		global.max_xp = (30 + (global.level*100) - 20);
		global.skill_points += 1;
	}


}
