function scr_state_walk() {
	scr_player_gravity();
	scr_state_switch();

	//USE MOVE
	var move = key_right - key_left;
	scr_move_collide(move*spd,grv);

	//SPEED
	if key_sneak {
		spd = s_spd;
	} else if !key_sneak {
		spd = w_spd;
	}


}
