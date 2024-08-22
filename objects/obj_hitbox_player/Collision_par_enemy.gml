instance_destroy();
audio_play_sound(snd_hit,50,false);
global.combo_ += 1;
with other {
	health_ -= global.damage;
	flash = 1;
	stunned = true;
	repeat (5) {
		instance_create_layer(x,y,"game",obj_dust);
	}
}