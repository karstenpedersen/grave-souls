draw_set_font(fn_gui_lvl);
draw_set_halign(fa_center);
if instance_exists(obj_player) {
	if obj_player.state = states.resting {
		draw_text(HALF_GUI_WIDTH,HALF_GUI_HEIGHT-64,"Press SPACE to save your progress");
		draw_text(HALF_GUI_WIDTH,HALF_GUI_HEIGHT,"Press UP to go");
	} else if distance_to_object(obj_player) <= 16 {
		draw_text(HALF_GUI_WIDTH,HALF_GUI_HEIGHT,"Press DOWN to rest");
	}
}
draw_set_halign(fa_left);