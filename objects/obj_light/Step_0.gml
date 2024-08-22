//if room = rm_game1 || room = rm_graveyard || room = rm_heaven || room = rm_test{
	if surface_exists(surf) {
		surface_set_target(surf);
			draw_set_color(c_black);
		
			if instance_exists(obj_pause_menu) {
				draw_set_alpha(1);
			} else if room = rm_heaven{
				draw_set_alpha(0.2);
			} else {
				draw_set_alpha(0.4)
			}
		
		draw_rectangle(0,0,room_width,room_height,false);
	
		gpu_set_blendmode(bm_subtract);
		draw_set_color(c_white);
		
		if global.light = true {
		with obj_player {
			draw_circle(x + random_range(-global.a,global.a),y + random_range(-global.a,global.a),48,false);
			draw_circle(x + random_range(-global.a,global.a),y + random_range(-global.a,global.a),32,false);
		}
		}
		
		with item_light {
			draw_circle(x + random_range(-global.a,global.a),y + random_range(-global.a,global.a),16,false);
		}
		
		with par_enemy {
			draw_circle(x + random_range(-global.a,global.a),y + random_range(-global.a,global.a),48,false);
			draw_circle(x + random_range(-global.a,global.a),y + random_range(-global.a,global.a),32,false);
		}
		
		with par_light {
			draw_circle(x + random_range(-flicker,flicker),y + random_range(-flicker,flicker),r1,false);
			if m_light = true {
				draw_circle(x + random_range(-flicker,flicker),y + random_range(-flicker,flicker),r2,false);
			}
		}
		
		with obj_soul {
			draw_circle(x + random_range(-flicker,flicker),y + random_range(-flicker,flicker),r1,false);
			if m_light = true {
				draw_circle(x + random_range(-flicker,flicker),y + random_range(-flicker,flicker),r2,false);
			}
		}
		
		if global.more_details = true {
			with obj_soul_dust {
				draw_circle(x + random_range(-0.5,0.5),y + random_range(-0.5,0.5),2,false);
			}
		}
		
		with obj_bullet_arrow {
			if fire = true {
				draw_circle(x + random_range(-flicker,flicker),y + random_range(-flicker,flicker),r1,false);
				if m_light = true {
					draw_circle(x + random_range(-flicker,flicker),y + random_range(-flicker,flicker),r2,false);
				}
			}
		}
		
		gpu_set_blendmode(bm_normal);
		draw_set_alpha(1);
		surface_reset_target();
	
	} else {
		surf = surface_create(room_width,room_height);
		surface_set_target(surf);
		draw_clear_alpha(c_black,0);

		surface_reset_target();
	}
//}