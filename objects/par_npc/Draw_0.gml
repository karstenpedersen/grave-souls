draw_self();

//SHOW HITBOX
if global.dev_mode = true {
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_yellow,c_yellow,c_yellow,c_yellow,true);
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
