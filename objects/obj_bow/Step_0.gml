scr_game_input();

if global.weapon != "Bow" {
	instance_destroy();
}

if instance_exists(obj_player) {
	if global.mouse = false {
		image_xscale = obj_player.image_xscale;
		direction = 0;
		x = obj_player.x+image_xscale*5;
		y = obj_player.y+2;
	} else {
		y = obj_player.y+2;
		direction = point_direction(x,y,mouse_x,mouse_y);
		x = obj_player.x+image_xscale*5;
	}
}

image_angle = direction;

if image_index >= 1.5 {
	grv = global.grv_full;
} else {
	grv = global.grv_n_full;
}

if obj_player.state = states.roll || obj_player.state = states.ladder || obj_player.state = states.stunned{
	image_index = 0;
	visible = false;
} else {
	visible = true;
}

delay -= 1;
if (obj_player.state = states.idle || obj_player.state = states.walk) && visible = true && delay <= 0 && global.arrows >= 1{
	if key_attack_hold && image_index < 3 && obj_player.stamina_ >= global.stamina_cost{
		image_index += 0.05;
		sprite_index = spr_bow_draw;
		obj_player.stamina_damage += global.stamina_cost;
		obj_player.stamina_damage_effect += global.stamina_cost;
		obj_player.stamina_timer = global.stamina_time;
	} else if key_attack_release {
		with instance_create_layer(x,y,"player",obj_bullet_arrow) {
			spd = other.image_index*3;
			speed = spd;
			fire = other.fire;
			if global.mouse = true {
				direction = point_direction(x,y,mouse_x,mouse_y);
			} else {
				direction = point_direction(x,y,x+100*other.image_xscale,y-4);
			}
			image_angle = direction;
			damage = global.damage*other.image_index/global.damage_multiplier;
			grv = other.grv;
		}
		global.arrows -= 1;
		grv = global.grv_full;
		delay = global.bow_speed;
		fire = false;
		image_index = 0;
		sprite_index = spr_bow;
	}
}

if fire = true && global.arrows >= 1{
	if image_index >= 0 {
		instance_create_layer(x,y,"game",obj_soul_dust);
	}
}