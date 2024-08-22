draw_self();
draw_set_font(fn_draw);
draw_set_halign(fa_center);
if instance_exists(obj_player) {
	if place_meeting(x,y,obj_player) {
		draw_text(x,y-32,"Press E to pickup");
	}
}