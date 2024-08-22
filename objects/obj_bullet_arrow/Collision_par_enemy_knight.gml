if spd > 0 {
	instance_destroy();
	audio_play_sound(snd_hit,50,false);
	with other {
		health_ -= other.damage;
		flash = 1;
		stunned = true;
		fire = other.fire;
		repeat (3) {
			instance_create_layer(x,y,"game",obj_dust);
		}
	}
}

//spd = 0;
//speed = 0;