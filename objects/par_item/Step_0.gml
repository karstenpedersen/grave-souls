scr_game_input();

if global.item_highlight = true || place_meeting(x,y,obj_player) {
	image_index = 1;
} else {
	image_index = 0;
}

if place_meeting(x,y,obj_player) && key_pickup {
	instance_destroy();
}

scr_player_gravity();


if place_meeting(x, y+vspd, obj_solid) {
	while !place_meeting(x, y+sign(vspd), obj_solid) {
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd;
