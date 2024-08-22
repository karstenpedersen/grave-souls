if need_input = true && place_meeting(x,y,obj_player) {
	draw_set_font(fn_gui_lvl)
	draw_set_halign(fa_center)
	draw_text(HALF_GUI_WIDTH,HALF_GUI_HEIGHT,"Press UP to enter " + string(target_name));
	draw_set_halign(fa_left)
}