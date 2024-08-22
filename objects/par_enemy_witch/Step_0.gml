vspd = vspd + grv;

// Move and collision
// X
//SPD
hspd = dir*spd;

//GRAV
vspd += grv;

if health_ <= 0 {
	state = "dead";
} else if stunned = true { 
	state = "stunned";
}

//State switch
switch state {
	case "idle":
		#region //IDLE
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
		scr_state_sprite(spr_stun,normal_speed,0);
		scr_knockback(knockback,grv);
		if alarm[0] <= 0 {
			alarm[0] = 20;
		}
		#endregion
		break;
		
	case "chase":
		#region //CHASE
		scr_state_sprite(spr_run,normal_speed,0);
		if !instance_exists(obj_player) break;
		image_xscale = sign(obj_player.x - x);
		
		if image_xscale == 0 {
			image_xscale = 1;
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
		scr_state_sprite(attack_sprite,attack_speed,0);
		scr_move_collide(0,grv);
		attack_delay = 50;
			with instance_create_layer(x,y,"game",obj_bullet_enemy) {
				sprite_index = spr_fireball
				damage = other.damage;
				fire = true;
				knockback = other.knockback;
				speed = 2;
			}
		if scr_animation_end(){
			state = "idle";
		}
		#endregion
		break;
}

if fire = true && alarm[1] <= 0{
	alarm[1] = 20;
}

if fire_count >= 11 {
	fire = false;
	fire_count = 0;
}
attack_delay -= 1;

if instance_exists(obj_player) {
if obj_player.state = states.death {
	instance_destroy();
	instance_create_layer(x,y,"game",obj_balloon)
}
}