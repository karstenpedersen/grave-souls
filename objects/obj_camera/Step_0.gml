if instance_exists(obj_player) {
	if shake = false {
		x = obj_player.x;
		y = obj_player.y;
	} else {
		x = obj_player.x+random_range(-shake_a,shake_a);
		y = obj_player.y+random_range(-shake_a,shake_a);
	}
}

//BACKGROUND
if parralax_background = true {
	/*if layer_exists("bg_3") {
		layer_x("bg_3",x/16);
	}
	
	if layer_exists("bg_2") {
		layer_x("bg_2",x/32);
	}
	
	if layer_exists("bg_1") {
		layer_x("bg_1",x/48);
	}*/
}