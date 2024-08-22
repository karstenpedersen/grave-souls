function scr_state_switch() {
	scr_game_input();


	if health_ <= 0 {												//DEAD
		state = states.death;
		scr_state_sprite(global.dead,normal_speed,0);
	} else if stunned = true {										//STUNNED
		state = states.stunned;
		scr_state_sprite(global.stun,normal_speed,0);
	} else if place_meeting(x,y,obj_ladder) && (key_up || key_down){ //LADDER
		state = states.ladder;
		scr_state_sprite(global.ladder,normal_speed,0);
	} else if key_roll && stamina_ >= global.roll_cost {			//ROLL
		stamina_damage += global.roll_cost-global;
		stamina_damage_effect += global.roll_cost;
		stamina_timer = global.stamina_time;
		state = states.roll;
		scr_state_sprite(global.roll,global.roll_image_speed,0);
	} else if key_down && distance_to_object(par_restpoint) <= global.restpoint_distance{ //RESTING
		state = states.resting;
		scr_state_sprite(global.rest,normal_speed,0);
	} else if key_attack && global.weapon != "Bow" && stamina_ >= global.stamina_cost{
		state = states.attack1;
		scr_state_sprite(global.attack1,global.attack_speed,0);
		stamina_damage += global.stamina_cost;
		stamina_damage_effect += global.stamina_cost;
		stamina_timer = global.stamina_time;
	} else if key_right || key_left {
		state = states.walk;
		scr_state_sprite(global.run,normal_speed,0);
	}else {
		state = states.idle; 
		scr_state_sprite(global.idle,normal_speed,0);
	}

	if !state = states.attack1 && !state = states.attack2 && !state = states.attack3 {
		attack_delay = 0;
	}


}
