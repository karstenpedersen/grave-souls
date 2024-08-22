
//THIS MAKES THE TEXT FLOAT UP
y -= 1;

//DO THIS IF YOU WANT THE TEXT TO FADE AWAY
image_alpha -= 0.008;

if image_alpha <= 0 {
	instance_destroy();
}

/*
//DO THIS IF YOU WANT THE TEXT TO NOT FADE AWAY
if alarm[0] <= 0 {
	alarm[0] = 50;
}