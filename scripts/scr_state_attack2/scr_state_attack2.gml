function scr_state_attack2() {
	scr_move_collide(0,grv);
	scr_player_gravity();

	if scr_animation_hit_frame(global.attack2_hitframe) {
		with instance_create_layer(x,y,"game",obj_hitbox_player) {
			image_xscale = obj_player.image_xscale;
		}
		scr_knockback(global.knockback,0);
	}

	if key_attack && scr_animation_attack_range(2,4) && global.combo > 2 && stamina_ >= global.stamina_cost{
		state = states.attack3;
		scr_state_sprite(global.attack3,global.attack_speed-0.1,0);
		stamina_damage += global.stamina_cost;
		stamina_damage_effect += global.stamina_cost;
		stamina_timer = global.stamina_time;
	}

	if scr_animation_end() {
		state = states.idle;
	}


}
