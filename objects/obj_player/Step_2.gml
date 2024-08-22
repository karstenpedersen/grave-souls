//PREVENT STAMINA AND HEALTH STATS TO fuck UP
if health_effect_timer > 0 {
	health_effect_timer -= 1;
}

if healing_timer > 0 {
	healing_timer -= 1;
}

if stamina_effect_timer > 0 {
	stamina_effect_timer -= 1;
}

if stamina_timer > 0 {
	stamina_timer -= 1;
}