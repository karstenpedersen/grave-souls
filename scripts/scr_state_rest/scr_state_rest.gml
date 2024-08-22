function scr_state_rest() {
	scr_move_collide(0,grv);
	scr_player_gravity();

	image_index = 5;

	//CHECKPOINT
	if key_roll && distance_to_object(obj_checkpoint) <= global.restpoint_distance{
		global.checkpoint_room = room;
		global.checkpoint_x = x;
		global.checkpoint_y = y;
		scr_game_save();
	} else if key_roll && distance_to_object(obj_sinpoint) <= global.restpoint_distance {
		global.sins = 0;
	}

	if key_up {
		state = states.idle;
	}


}
