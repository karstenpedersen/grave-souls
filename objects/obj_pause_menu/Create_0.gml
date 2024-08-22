/// @description Initialize Pause Menu


// Deactivate all other objects
instance_deactivate_all(true);
instance_activate_object(obj_game);
instance_activate_object(obj_light);

options_menu[0] = "MASTER VOLUME";
options_menu[1] = "MUSIC";
options_menu[2] = "SOUND";
options_menu[3] = "DEV-MODE";
options_menu[4] = "RESUME";
options_menu[5] = "MENU";


//visual options
spacing = 48;
x_scale = 1;
y_scale = 1;

options_x = HALF_GUI_WIDTH - spacing/2;
options_y = GUI_HEIGHT/2.5;


//fonts
title_font = fnt_title;
menu_font = fnt_menu;


//menu select
options_menu_select = 0;