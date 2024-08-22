instance_destroy();
audio_play_sound(snd_miss,50,false);
repeat (5) {
	instance_create_layer(x,y,"game",obj_dust);
}