/// @description Pause Menu



//set keys
var up     = keyboard_check_pressed(vk_up)    || keyboard_check_pressed(ord("W")) || gamepad_button_check_pressed(0,gp_padu);
var down   = keyboard_check_pressed(vk_down)  || keyboard_check_pressed(ord("S")) || gamepad_button_check_pressed(0,gp_padd);
var left   = keyboard_check_pressed(vk_left)  || keyboard_check_pressed(ord("A")) || gamepad_button_check_pressed(0,gp_padl);
var right  = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_button_check_pressed(0,gp_padr);
var select = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face1);


//change selection
if (up) {
	options_menu_select -= 1;

	x_scale = 1.25;
	y_scale = 1.1;

	if (options_menu_select < 0) 	{
		options_menu_select = array_length_1d(options_menu) - 1;
	}

	audio_play_sound(snd_menu_change, 1000, false);	
}

if (down) {
	options_menu_select += 1;
	
	x_scale = 1.25;
	y_scale = 1.1;
	
	if (options_menu_select > array_length_1d(options_menu) - 1){
		options_menu_select = 0;
	}
	
	audio_play_sound(snd_menu_change, 1000, false);		
}

x_scale = scr_approach(x_scale, 1, 0.05);
y_scale = scr_approach(y_scale, 1, 0.05);

//make selection
switch (options_menu_select) {
		
	case 0:
		if (right) {
			scr_change_master_volume(0.1)
			audio_play_sound(snd_menu_change, 1000, false);	
		} else if (left) {
			scr_change_master_volume(-0.1)
			audio_play_sound(snd_menu_change, 1000, false);	
		}		

		break;
			
	case 1:
		if (right) {
			scr_change_music_volume(0.1)
			audio_play_sound(snd_menu_change, 1000, false);	
		} else if (left) {
			scr_change_music_volume(-0.1)
			audio_play_sound(snd_menu_change, 1000, false);	
		}					
		break;
		
	case 2:
		if (right) {
			scr_change_sound_volume(0.1)
			audio_play_sound(snd_menu_change, 1000, false);	
		} else if (left) {
			scr_change_sound_volume(-0.1)
			audio_play_sound(snd_menu_change, 1000, false);	
		}			
		break;
		
	case 3:
		if (right) {
			global.dev_mode = true;
			audio_play_sound(snd_menu_change, 1000, false);	
		} else if (left) {
			global.dev_mode = false;
			audio_play_sound(snd_menu_change, 1000, false);	
		}			
		break;
			
	case 4:
		if (select) {
			PAUSED = false;
			audio_play_sound(snd_menu_select, 1000, false);	
			instance_destroy();
		}
		break;
			
	case 5:
		if (select) {
			PAUSED = false;
			audio_play_sound(snd_menu_select, 1000, false);	
			room_goto(rm_main_menu);
			scr_game_save();
		}
		break;
}

	
