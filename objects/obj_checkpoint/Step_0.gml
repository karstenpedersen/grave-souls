scr_game_input();
if distance_to_object(obj_player) <= 16 && key_roll {
	active = true;
	instance_create_layer(x,y,"game",obj_balloon);
	obj_player.healing_item = 4;
	health_ = global.health_max;
	health_2 = global.health_max;
	audio_play_sound(snd_lit,50,false);
}

if active = true  {
	image_speed = 1;
} else {
	image_speed = false;
}