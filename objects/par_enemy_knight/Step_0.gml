// Move and collision
// X
//SPD
hspd = dir*spd;

//Gravity
vspd = vspd + grv;

//set dead
if health_ <= 0 {
	state = "dead";
} else if stunned = true { 
	state = "stunned";
}

//State switch
switch state {
	case "idle":
		#region //IDLE
		attack_delay -= 1;
		turn_delay -= 1;
		scr_state_sprite(spr_idle,normal_speed,0);
		scr_move_collide_ai(0,grv);
		if !instance_exists(obj_player) break;
		var distance_to_player = point_distance(x,y,obj_player.x,obj_player.y);
		if health_ <= 0 {
			state = "dead";
		} else if stunned = true {
			state = "stunned";
		} else if distance_to_player > attack_range && distance_to_player <= follow_range{
			state = "chase";
		} else if distance_to_player <= attack_range && attack_delay <= 0{
			state = "attack";
		}
		#endregion
		break;
		
	case "dead":
		#region //DEAD
		scr_state_sprite(spr_dead,normal_speed,0);
		scr_move_collide_ai(0,grv);
		#endregion
		break;
		
	case "stunned":
		#region //STUNNED
		attack_delay = 5;
		turn_delay = 3.5;
		scr_state_sprite(spr_stun,normal_speed,0);
		scr_knockback(knockback,grv);
		if alarm[0] <= 0 {
			alarm[0] = 20;
		}
		#endregion
		break;
		
	case "chase":
		#region //CHASE
		attack_delay = 20;
		turn_delay -= 1;
		scr_state_sprite(spr_run,normal_speed,0);
		if !instance_exists(obj_player) break;
		
		if turn_delay <= 0 {
			image_xscale = sign(obj_player.x - x);
			if image_xscale == 0 {
				image_xscale = 1;
			}
			turn_delay = 15;
		}
		
		var distance_to_player = point_distance(x,y,obj_player.x,obj_player.y);
		if distance_to_player > attack_range && distance_to_player <= follow_range {
			scr_move_collide_ai(image_xscale*spd,grv);
		} else {
			state = "idle";	
		}
		if distance_to_player >= 350 {
			spd = 10;
		} else {
			spd = 0.5;
		}
		#endregion
		break;
		
	case "attack":
		#region //ATTACK
		attack_delay = attack_dl;
		turn_delay = 15;
		scr_state_sprite(attack_sprite,attack_speed,0);
		scr_move_collide(0,grv);
		if scr_animation_hit_frame(attack_hitframe) {
			with instance_create_layer(x,y,"game",obj_hitbox_enemy) {
				damage = other.damage;
				image_xscale = other.image_xscale;
				knockback = other.knockback;
			}
		}
		if scr_animation_end(){
			state = "idle";
		}
		#endregion
		break;
}

//Fire
if fire = true && alarm[1] <= 0{
	alarm[1] = 20;
}

if fire_count >= 11 {
	fire = false;
	fire_count = 0;
}

attack_delay -= 1;

//IDK
if instance_exists(obj_player) {
	if obj_player.state = states.death {
		instance_destroy();
		instance_create_layer(x,y,"game",obj_balloon)
	}
}