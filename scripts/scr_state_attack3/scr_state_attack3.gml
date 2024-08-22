function scr_state_attack3() {
	scr_move_collide(0,grv);
	scr_player_gravity();

	if scr_animation_hit_frame(global.attack3_hitframe) {
		with instance_create_layer(x,y,"game",obj_hitbox_player) {
			image_xscale = obj_player.image_xscale;
		}
		scr_knockback(global.knockback,0);
	}

	if scr_animation_end() {
		state = states.idle;
	}


}
