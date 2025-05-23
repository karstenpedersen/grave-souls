/// @description Main Menu 
#region //menu screen
switch (screen) {
	
	#region //menu_screen.main
	case menu_screen.main:
	
		//draw title
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_set_font(fnt_title);

		draw_set_color(c_white);
		draw_text_transformed(HALF_GUI_WIDTH, 95, title, 1, 1, 0);
		
		draw_set_font(fnt_menu);
		draw_text_transformed(HALF_GUI_WIDTH/4+16, HALF_GUI_HEIGHT/2*3.5, game_version, 1, 1, 0);
		draw_text_transformed(HALF_GUI_WIDTH, HALF_GUI_HEIGHT/2*3.5, "Tip: " + string(game_tip[game_tip_number]), 1, 1, 0);
		
		draw_text_transformed(HALF_GUI_WIDTH, HALF_GUI_HEIGHT-128, "Last game: " + string(global.last_score), 1, 1, 0);
		draw_text_transformed(HALF_GUI_WIDTH, HALF_GUI_HEIGHT-192, "Highscore: " + string(global.high_score), 1, 1, 0);
		
		if gamepad_is_connected(0) {
			draw_sprite_ext(spr_icon_controller,0,128,HALF_GUI_HEIGHT/4,2,2,0,c_white,1);
			draw_text(225,HALF_GUI_HEIGHT/2,"Connected!");
		}
		
		//draw menu
		draw_set_halign(fa_right);
		draw_set_valign(fa_bottom);

		for (var i = 0; i < array_length_1d(main_menu); i += 1) {
	
			var col = c_white
			var xscale = 1;
			var yscale = 1;
			if (i == main_menu_select) {
				xscale = x_scale;
				yscale = y_scale;
				col = c_white;
				draw_rectangle((xx - 200) * xscale, yy + 2 + (spacing * i), (xx) * xscale, yy + (spacing * i) + 4, false);
			}
		
			draw_set_color(col);
			draw_text_transformed(xx, yy + (spacing * i), main_menu[i], xscale, yscale, 0);
		}
		break;
	#endregion
		
	#region //menu_screen.options	
	case menu_screen.options:
	
		//draw title
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_set_font(fnt_title);

		draw_set_color(c_white);
		draw_text_transformed(HALF_GUI_WIDTH, 95, "OPTIONS", 1, 1, 0);
	
		//draw menu
		draw_set_font(fnt_menu);

		for (var i = 0; i < array_length_1d(options_menu); i += 1) {
			draw_set_halign(fa_right);
			draw_set_valign(fa_bottom);
	
			var col = c_white
			var xscale = 1;
			var yscale = 1;
			if (i == options_menu_select) {
				xscale = x_scale;
				yscale = y_scale;
				col = c_white;
				draw_rectangle((options_x - 200) * xscale, options_y + 2 + (spacing * i), options_x, options_y + (spacing * i) + 4, false);
			}
			
			draw_set_color(col);
			draw_text_transformed(options_x, options_y + (spacing * i) - 5, options_menu[i], xscale, yscale, 0);
			
			draw_set_halign(fa_left);
			switch (i) {
				case 0:
					var num = round(scr_map(MASTER_VOLUME, 0, 1, 0, 10));
					draw_text_transformed(options_x + 50, options_y + (spacing * i) - 5, num, xscale, yscale, 0);			
					break;
				case 1:
					var num = round(scr_map(MUSIC_VOLUME, 0, 1, 0, 10));
					draw_text_transformed(options_x + 50, options_y + (spacing * i) - 5, num, xscale, yscale, 0);	
					break;
				case 2:
					var num = round(scr_map(SOUND_VOLUME, 0, 1, 0, 10));
					draw_text_transformed(options_x + 50, options_y + (spacing * i) - 5, num, xscale, yscale, 0);	
					break;
			}	
		}
		break;
	#endregion
		
}
#endregion






