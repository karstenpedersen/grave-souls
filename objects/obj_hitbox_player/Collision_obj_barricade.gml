instance_destroy();
audio_play_sound(snd_miss,50,false);
with other {
	instance_destroy();
}
repeat (3) {
	instance_create_layer(x,y,"game",obj_dust);
}