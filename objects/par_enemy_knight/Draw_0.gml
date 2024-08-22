draw_self();

//SHOW HITBOX
if global.dev_mode = true {
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);
}

//HEALTH BAR
if health_ < health_max && health_ > 0 {
	if place_meeting(x,y+1,obj_solid) {
		draw_healthbar(x-24,y+32,x+24,y+24,health_/health_max*100,c_black,c_gray,c_gray,0,true,true);
	} else {
		draw_healthbar(x-24,y-48,x+24,y-32,health_/health_max*100,c_black,c_gray,c_gray,0,true,true);
	}
} 

//FLASH
if flash > 0 {
	flash -= 0.05;
	shader_set(shd_flash);
	shd_alpha = shader_get_uniform(shd_flash,"_alpha");
	shader_set_uniform_f(shd_alpha,flash);
	draw_self();
	shader_reset();
} 
