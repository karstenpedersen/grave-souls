/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_hitbox_player) {
	on = !on;
	repeat (10) {
		instance_create_layer(x,y,"game",obj_dust);
	}
} 

if on = true {
	image_index = 1;
	if !handle_im = 4 {
		handle_im += 0.5;
	}
} else {
	image_index = 0;
	if !handle_im = 0 {
		handle_im -= 0.5;
	}
}


if on {
	lever_angle = lerp(lever_angle,45,0.1);
} else {
	lever_angle = lerp(lever_angle,135,0.1);
}
