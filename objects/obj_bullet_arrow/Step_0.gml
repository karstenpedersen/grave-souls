if !place_meeting(x,y,obj_solid) {
	speed = spd;
	y += grv;
} else {
	spd = 0;
	speed = 0;
}

if fire = true {
	repeat (3) {
		instance_create_layer(x,y,"game",obj_soul_dust);	
	}
}