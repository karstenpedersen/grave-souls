function scr_state_ladder() {
	scr_move_collide(0,2*(key_down-key_up));
	x = (instance_nearest(x,y,obj_ladder).x);

	if !place_meeting(x,y,obj_ladder) || (key_left || key_right){
		state = states.idle;
	}


}
