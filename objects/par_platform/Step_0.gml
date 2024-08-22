hspd = spd*dir;

if place_meeting(x+hspd, y, obj_solid) {
	while !place_meeting(x+sign(hspd), y, obj_solid) {
		x += sign(hspd);
	}
	hspd = 0;
	dir *= -1;
}
x += hspd;

if instance_exists(obj_player) {
	if place_meeting(x,y,obj_player) {
		obj_player.hspd_carry = hspd;
	}
}