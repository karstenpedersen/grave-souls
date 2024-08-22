instance_destroy();

if !place_meeting(x,y,par_enemy) {
	audio_play_sound(snd_miss,50,false);
}