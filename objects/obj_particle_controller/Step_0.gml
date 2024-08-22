randomize();
if snow = true {
	var snow_random = ceil(random(5));

	if snow_random == 1 {
		instance_create_layer(0,0,"game",obj_snowflake);
	}
}

if rain = true {
	var rain_random = ceil(random(5));

	if rain_random == 1 {
		instance_create_layer(0,0,"game",obj_rain);
	}
}