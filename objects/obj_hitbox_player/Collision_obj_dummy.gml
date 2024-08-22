instance_destroy();
audio_play_sound(snd_hit,50,false);
with other {
	instance_create_layer(x,y-24,"game",obj_damage);
}

