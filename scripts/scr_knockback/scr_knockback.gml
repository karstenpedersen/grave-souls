///@arg knockback
///@arg grv
function scr_knockback(argument0, argument1) {
	if image_xscale = 1 {
		scr_move_collide(-argument0,argument1);
	} else {
		scr_move_collide(argument0,argument1);
	}


}
