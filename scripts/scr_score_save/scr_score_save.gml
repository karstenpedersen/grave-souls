function scr_score_save() {
	if file_exists("score.sav") file_delete("score.sav");
	ini_open("score.sav");
	ini_write_real("score","highscore",global.high_score);
	ini_write_real("score","previous_score",global.last_score);
	ini_close();


}
