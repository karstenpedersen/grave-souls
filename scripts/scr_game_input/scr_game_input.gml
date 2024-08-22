function scr_game_input() {
	//KEYBOARD CONTROLS
	gamepad_set_axis_deadzone(0,0.5);
	key_up = keyboard_check(ord("W")) || keyboard_check(vk_up) || gamepad_axis_value(0,gp_axislv) > 0;
	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left) || gamepad_axis_value(0,gp_axislh) < 0;
	key_down = keyboard_check(ord("S")) || keyboard_check(vk_down) || gamepad_axis_value(0,gp_axislv) < 0;
	key_right = keyboard_check(ord("D"))|| keyboard_check(vk_right) || gamepad_axis_value(0,gp_axislh) > 0;

	key_skip = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face1);
	key_pause = keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0,gp_select);

	key_sneak = keyboard_check(vk_control) || keyboard_check_pressed(ord("K")) || gamepad_button_check(0,gp_padd);
	key_roll = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("L")) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1);
	key_pickup = keyboard_check_pressed(ord("E")) || gamepad_button_check_pressed(0,gp_face2);
	key_attack = mouse_check_button_pressed(mb_left) || keyboard_check_pressed(ord("J")) || gamepad_button_check_pressed(0,gp_face3);
	key_attack_hold = mouse_check_button(mb_left) || keyboard_check(ord("J")) || gamepad_button_check(0,gp_face3);
	key_attack_release = mouse_check_button_released(mb_left) || keyboard_check_released(ord("J")) || gamepad_button_check_released(0,gp_face3)
	key_use = keyboard_check_pressed(ord("Q")) || gamepad_button_check_pressed(0,gp_face4);

	key_1 = keyboard_check_pressed(ord("1")) || gamepad_button_check_pressed(0,gp_padl);
	key_2 = keyboard_check_pressed(ord("2")) || gamepad_button_check_pressed(0,gp_padu);
	key_3 = keyboard_check_pressed(ord("3")) || gamepad_button_check_pressed(0,gp_padr);
	key_4 = keyboard_check_pressed(ord("4")) || gamepad_button_check_pressed(0,gp_padd);


}
