target_update = 25;
alarm[0] = target_update;
image_speed = 1;
speed = 2;
fire = true;
knockback = 1;
damage = 25;

//Light
flicker = 1;
r1 = 8;
r2 = 16;
m_light = true;

if instance_exists(obj_player) {
	alarm[0] = target_update;
	target = point_direction(x,y,obj_player.x,obj_player.y-128);
	direction = target;
	
}