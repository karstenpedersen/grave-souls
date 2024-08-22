#region Scripts
scr_game_input(); //CONTROL INPUT
scr_level_system(); //CONTROLS LEVEL AND XP
scr_player_health(); //CONTROLS HEALTH
scr_player_stamina(); //CONTROLS STAMINA
#endregion

//STATE NAME
scr_state_name(); //CONTROLS STATES

//RUN STATE
switch state {
	#region states
	case states.idle: scr_state_idle(); break;
	case states.walk: scr_state_walk(); break;
	case states.death: scr_state_death(); break;
	case states.roll: scr_state_roll(); break;
	case states.resting: scr_state_rest(); break;
	case states.ladder: scr_state_ladder(); break;
	case states.stunned: scr_state_stunned(); break;
	case states.attack1: scr_state_attack1(); break;
	case states.attack2: scr_state_attack2(); break;
	case states.attack3: scr_state_attack3(); break;
	#endregion
}

#region WEAPONS
//WEAPON BOW
if global.weapon = "Bow" && !instance_exists(obj_bow) {
	instance_create_layer(x,y,"player",obj_bow);
}

//SWAP WEAPON
if (state = states.idle || state = states.walk) && weapon_swap_delay <= 0{
	if key_1 {
		weapon_swap_delay = 40;
		global.weapon = "Twohanded sword";
		scr_weapon_stats();
		repeat (15) {
			instance_create_layer(x,y,"game",obj_dust);
		}
		audio_play_sound(snd_swap_weapon,50,false);
	} else if key_2 {
		weapon_swap_delay = 40;
		global.weapon = "Cleaver";
		scr_weapon_stats();
		repeat (15) {
			instance_create_layer(x,y,"game",obj_dust);
		}
		audio_play_sound(snd_swap_weapon,50,false);
	} else if key_3 {
		weapon_swap_delay = 40;
		global.weapon = "Bow";
		scr_weapon_stats();
		repeat (15) {
			instance_create_layer(x,y,"game",obj_dust);
		}
		audio_play_sound(snd_swap_weapon,50,false);
	}
}
weapon_swap_delay -= 1;
healing_delay -= 1;
#endregion 

#region MASK AND FACING DIRECTION
//SET MASK/HITBOX
if state = states.roll {
	mask_index = spr_player_mask_roll;
} else if state = states.ladder {
	mask_index = spr_player_mask_ladder;
} else {
	mask_index = spr_player_mask;
}

// Player facing direction
if state != states.roll && state != states.stunned && state != states.attack1 && state != states.attack2 && state != states.attack3 {
	if /*xprevious < x*/ key_right {
		image_xscale = 1;
	} else if key_left /*xprevious > x*/ {
		image_xscale = -1;
	}
}
#endregion 

//DEV
if keyboard_check_pressed(vk_up){
	game_end();
}