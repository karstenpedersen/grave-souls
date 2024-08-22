if !instance_exists(obj_player_soul) && room = global.deathpoint_room {
	instance_create_layer(global.deathpoint_x,global.deathpoint_y,"player",obj_player_soul);
}