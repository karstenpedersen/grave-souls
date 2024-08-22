instance_destroy();
if global.more_details = true {
	repeat(3) {
		instance_create_layer(x,y,"game",obj_soul_dust);
	}
}