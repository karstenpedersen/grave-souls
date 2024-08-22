function scr_state_roll() {
	scr_move_collide(image_xscale*global.roll_speed,grv);
	if scr_animation_hit_frame(4) {
		repeat (5) {
			with instance_create_layer(x,bbox_bottom,"game",obj_dust) {
				vspd = choose(-0.5,-1);
			}
		}
	}

	if scr_animation_end() {
		state = states.idle;
	}


}
