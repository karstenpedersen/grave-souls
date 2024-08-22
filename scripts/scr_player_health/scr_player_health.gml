function scr_player_health() {
	//HEALTH - DAMAGE
	if damage > 0 {
		health_ -= damage;
		damage = 0;
		health_effect_timer = 20;
	}

	//HEALTH EFFECT
	if health_effect_timer <= 0 && damage_effect > 0 {
		health_2 -= 3;
		damage_effect -= 3;
	}

	//SET HEALTH TO MAX OR SET HEALTH TO 0
	if health_ > global.health_max {
		health_ = global.health_max;
	} else if health_ < 0 {
		health_ = 0;
	}

	if health_2 > global.health_max {
		health_2 = global.health_max;
	} else if health_2 < 0 {
		health_2 = 0;
	}

	if healing_item > 4 {
		healing_item = 4;
	}

	//Adding health
	if key_use {
		if healing_times <= healing_times_max-1 && healing_item > 0 && health_ != global.health_max && stamina_ >= 25 && healing_delay <= 0{
			audio_play_sound(snd_heal,50,false);
			healing += 75; //WHAT YOU ADD TO HEALTH
			healing_item -= 1; //DELETE ONE HEALING ITEM
			healing_delay = 30;
			if healing_timer > 0 {
				//healing_times += 1;
			} else {
				healing_times = 1;
			}
			healing_timer = 45;
			repeat (5) {
				instance_create_layer(x,y+8,"game",obj_effect_healing);
			}
		
			//REMOVE STAMINA WHEN HEALING
			stamina_damage += 25;
			stamina_damage_effect += 25;
			stamina_timer = 50;
		} else if healing_item <= 0 {
			audio_play_sound(snd_menu_deni,50,false);
		}
	} 

	//HEAL
	if healing > 0 {
		health_ += global.health_regen*healing_times;
		health_2 += global.health_regen*healing_times;
		healing -= global.health_regen*healing_times;
	}


}
