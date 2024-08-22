function scr_score_load() {
	if file_exists("score.sav") {
		ini_open("score.sav");
		global.high_score = ini_read_real("score","highscore",0);
		global.last_score = ini_read_real("score","previous_score",0);
		ini_close();
	}


}
