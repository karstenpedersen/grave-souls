/// @description Initialize Main Menu

scr_play_music(snd_music_title, true);
//audio_play_sound(snd_music_title,1000,true);

//title
title = "GRAVE KNIGHT";
game_version = "DEV-0.0.3 (Combat demo)";

//menu options
main_menu[0] = "CONTINUE";
main_menu[1] = "NEW";
main_menu[2] = "OPTIONS";
main_menu[3] = "EXIT";

options_menu[0] = "MASTER VOLUME";
options_menu[1] = "MUSIC";
options_menu[2] = "SFX";
options_menu[3] = "MENU";


enum menu_screen {
	main = 0,
	options = 1,
	height = 2,
}

game_tip[0] = "Get a high combo!"
game_tip[1] = "Do not die"
game_tip[2] = "Use a controller";
game_tip[3] = "Do not dig straight down";
game_tip[4] = "Be carefull";
game_tip[5] = "Beat your highscore!";
game_tip[6] = "New weapon: Cleaver";
game_tip[7] = "Roll to dodge";
game_tip[8] = "Use candles to light your arrows";
game_tip[9] = "Press 1 2 or 3 to switch weapons";
game_tip_number = irandom_range(0,9);

screen = menu_screen.main;


//visual options
spacing = 48;
xx = GUI_WIDTH - 50;
yy = GUI_HEIGHT/1.75;
x_scale = 1;
y_scale = 1;

options_x = HALF_GUI_WIDTH - spacing/2;
options_y = GUI_HEIGHT/2.5;


//fonts
title_font = fnt_title;
menu_font = fnt_menu;


//menu select
main_menu_select = 0;
options_menu_select = 0;