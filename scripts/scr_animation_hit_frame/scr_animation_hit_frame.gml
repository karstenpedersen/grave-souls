///@arg frame
function scr_animation_hit_frame(argument0) {
	var frame = argument0;
	var frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
	return image_index >= frame && image_index < frame+frame_range;


}
