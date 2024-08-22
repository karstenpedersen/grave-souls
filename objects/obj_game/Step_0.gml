scr_game_input();
if keyboard_check_pressed(vk_f1) && global.dev_mode = false {
	global.dev_mode = true;
} else if keyboard_check_pressed(vk_f1) && global.dev_mode = true {
	global.dev_mode = false;
}


//PAUSE
if !instance_exists(obj_pause_menu) && key_pause{
	instance_create_layer(0,0,"game",obj_pause_menu);
}

//F for Fullscreen
	if (keyboard_check_pressed(ord("F"))) {
	   if (window_get_fullscreen()) {
	        window_set_fullscreen(false);
		} else {
	      window_set_fullscreen(true);
		}
	}

if keyboard_check_pressed(ord("Y")) {
	global.item_highlight = !global.item_highlight;
}