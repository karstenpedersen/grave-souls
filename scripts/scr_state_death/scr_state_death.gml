function scr_state_death() {
	scr_move_collide(0,grv);
	scr_player_gravity();
	depth = 1;

	global.deathpoint_room = room;
	global.deathpoint_x = x;
	global.deathpoint_y = y-8;
	global.deathpoint_souls = global.souls;
	global.deathpoint_sins = global.sins;

	if scr_animation_hit_frame(4) {
		image_speed = 0;
		image_index = 5;
	}

	if image_index >= 4 {
		instance_create_layer(x,y+10,"game",obj_dust);
	}

	if alarm[1] <= 0 {
		alarm[1] = 100;	
	}

	if keyboard_check_pressed(vk_escape){
		room_goto(rm_heaven);
	}


}
