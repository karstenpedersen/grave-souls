alarm[0] = 20;
fly = true;
if instance_exists(obj_player) {
	var target = point_direction(x,y,obj_player.x,obj_player.y+8);
	direction = target;
	image_angle = target;
}