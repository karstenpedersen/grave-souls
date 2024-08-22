if instance_exists(obj_player) {
	if obj_player.state = states.roll && place_meeting(x,y,obj_player) {
		instance_destroy();
	}
}