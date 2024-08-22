scr_game_input();
if distance_to_object(obj_player) <= 16 && key_roll {
	active = true;
	instance_create_layer(x,y,"game",obj_balloon);
}

if active = true  {
	image_speed = 1;
} else {
	image_speed = false;
}