///@argument0 xspeed
///@argument1 yspeed
function scr_move_collide(argument0, argument1) {

	hspd = argument0;
	vspd = argument1;

	if place_meeting(x+argument0, y, obj_solid) {
			while !place_meeting(x+sign(argument0), y, obj_solid) {
				x += sign(argument0);
			}
			argument0 = 0;
		}
		x += argument0;

	if place_meeting(x, y+argument1, obj_solid) {
		while !place_meeting(x, y+sign(argument1), obj_solid) {
			y += sign(argument1);
		}
		argument1 = 0;
	}
	y += argument1;



}
