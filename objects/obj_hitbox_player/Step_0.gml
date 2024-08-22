if instance_exists(obj_player){
	x = obj_player.x;
	y = obj_player.y;
}

if global.dev_mode = true {
	visible = true;
} else if global.dev_mode = false {
	visible = false;
}
