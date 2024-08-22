instance_create_layer(x,y+10,"game",obj_dust);

if place_meeting(x,y,obj_player) {
	instance_destroy();
	global.souls = global.deathpoint_souls;
	global.sins = global.deathpoint_sins;
}