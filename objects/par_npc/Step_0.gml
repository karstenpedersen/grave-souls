if distance_to_object(obj_player) > 96 && image_index < image_number-1{
	image_index += 1;
} else if distance_to_object(obj_player) <= 96 && image_index > 0 {
	image_index -= 1;
}