rand_x = floor(random(room_width));
rand_x1 = floor(random(room_width));
rand_x2 = floor(random(room_width));
rand_x3 = floor(random(room_width));

if global.wave >= 5 {
	spawn_rate = 75;
} else if global.wave >= 10 {
	spawn_rate = 50;
}

if instance_exists(obj_player) {
	if !instance_exists(par_enemy) && obj_player.state != states.death {
		with instance_create_layer(random(room_width),256,"enemies",obj_enemy_dummy) {
			if place_meeting(x,y,obj_solid) {
				instance_destroy();
				killer = "solid";
			}
		}
	}
}