draw_self();

//IMAGE MASK
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

draw_set_font(fn_damage);
draw_set_halign(fa_center);
if state = states.death {
	draw_text(x,y-96,"-YOU DIED-")
}