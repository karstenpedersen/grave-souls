function scr_state_idle() {
	scr_move_collide(0,grv);
	scr_player_gravity();

	scr_state_switch();


}
