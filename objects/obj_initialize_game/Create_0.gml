/// @description Initialize Game
show_debug_message("obj_initialize_game created");

//general settings
if file_exists("game_settings.sav") {
ini_open("game_settings.sav");
global.width = ini_read_real("resolution","width",1920);
global.height = ini_read_real("resolution","height",1080);
global.resolution = ini_read_real("resolution","resolution",0);
ini_close();
} else {
	show_debug_message("Unable to find your save, setting to 1920x1080");
	global.width = 1920;
	global.height = 1080;
	global.resolution = 0;
}
scr_resolution_set();   
randomize();   

//PLAYER STATES
enum states {
	idle,
	walk,
	roll,
	death,
	resting,
	ladder,
	stunned,
	attack1,
	attack2,
	attack3,
}

//brief delay to start
alarm[0] = 10;





