draw_set_color(c_white);
draw_set_font(fnt_title);
draw_set_halign(fa_center);
draw_text(HALF_GUI_WIDTH,160,"-YOU DIED-")
draw_set_font(fnt_menu);
draw_text(HALF_GUI_WIDTH,HALF_GUI_HEIGHT-256,"Highscore: " + string(global.high_score));
draw_text(HALF_GUI_WIDTH,HALF_GUI_HEIGHT-192,"Score: " + string(global.current_score));
draw_text(HALF_GUI_WIDTH,HALF_GUI_HEIGHT-128,"Last game: " + string(global.last_score));
draw_text(HALF_GUI_WIDTH,HALF_GUI_HEIGHT-64,"Kills: " + string(global.kills));
draw_set_halign(fa_left);
draw_set_color(c_white)