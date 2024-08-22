
alarm[0] = spawn_rate


if global.wave < 5 {
	instance_create_layer(rand_x,0,"enemies",obj_meteorite);
} else if global.wave = 5 {
	instance_create_layer(rand_x,0,"enemies",obj_meteorite);
} else if global.wave > 5 && global.wave < 9 {
	instance_create_layer(rand_x,0,"enemies",obj_meteorite);
	instance_create_layer(rand_x1,0,"enemies",obj_meteorite);
	instance_create_layer(rand_x2,0,"enemies",obj_meteorite);
} else if global.wave = 9{
	instance_create_layer(rand_x,0,"enemies",obj_meteorite);
	instance_create_layer(rand_x1,0,"enemies",obj_meteorite);
	instance_create_layer(rand_x2,0,"enemies",obj_meteorite);
} else if global.wave = 10 {
	instance_create_layer(rand_x,0,"enemies",obj_meteorite);
} else if global.wave = 11 {
	instance_create_layer(rand_x,0,"enemies",obj_meteorite);
	instance_create_layer(rand_x1,0,"enemies",obj_meteorite);
} else if global.wave > 11 && global.wave < 15{
	instance_create_layer(rand_x,0,"enemies",obj_meteorite); 
	instance_create_layer(rand_x1,0,"enemies",obj_meteorite);
	instance_create_layer(rand_x2,0,"enemies",obj_meteorite);
	instance_create_layer(rand_x3,0,"enemies",obj_meteorite);
} else if global.wave = 15 {
	instance_create_layer(rand_x,0,"enemies",obj_meteorite); 
} else if global.wave > 15{
	instance_create_layer(rand_x1,0,"enemies",obj_meteorite);
	instance_create_layer(rand_x2,0,"enemies",obj_meteorite);
	instance_create_layer(rand_x3,0,"enemies",obj_meteorite);
	instance_create_layer(rand_x,0,"enemies",obj_meteorite);
}

