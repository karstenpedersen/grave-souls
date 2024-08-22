if x >= obj_player.x-8 && x <= obj_player.x+8 && unstable = true && falling = false {
	falling = true;
}

if falling = true {
	vspd = vspd + grv;
	if place_meeting(x, y+vspd, obj_solid) {
	while !place_meeting(x, y+sign(vspd), obj_solid) {
		y += sign(vspd);
	}
		vspd = 0;
	}
	y += vspd;

	if place_meeting(x,y+1,obj_player) {
		with obj_player {
			damage += other.damage;
			damage_effect += other.damage;
		}
		repeat (5) {
			instance_create_layer(x,bbox_bottom,"game",obj_dust);
		}
		instance_destroy();
	} else if place_meeting(x,y+1,obj_solid) {
		repeat (10) {
			instance_create_layer(x,bbox_bottom,"game",obj_dust);
		}
		instance_destroy();
	}
}