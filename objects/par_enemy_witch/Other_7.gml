if state = "dead" {
	instance_destroy();
	instance_create_layer(x,y,"game",obj_balloon);
}

if state = "attack" {
	state = "idle";
}