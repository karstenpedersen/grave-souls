function scr_player_stamina() {
	//SET STAMINA TO MAX AND TO 0
	if stamina_ > global.stamina_max {
		stamina_ = global.stamina_max;
	} else if stamina_ < 0 {
		stamina_ = 0;
	}

	if stamina_2 > global.stamina_max {
		stamina_2 = global.stamina_max;
	} else if stamina_2 < 0 {
		stamina_2 = 0;
	}

	//LOSE HEALTH
	if stamina_damage > 0 {
		stamina_ -= stamina_damage;
		stamina_damage = 0;
		stamina_effect_timer = 20;
	}

	//LOSE stamina EFFECT
	if stamina_effect_timer <= 0 && stamina_damage_effect > 0 {
		stamina_2 -= 3;
		stamina_damage_effect -= 3;
	}

	//Adding health

	if stamina_ != global.stamina_max && stamina_timer <= 0{
		stamina_ += global.stamina_regen;
		stamina_2 += global.stamina_regen;
	}


}
