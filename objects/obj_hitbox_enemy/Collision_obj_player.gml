instance_destroy();
with other {
	if state != states.roll {
		audio_play_sound(snd_damage,50,false);
		damage += other.damage;
		damage_effect += other.damage;
		flash = 1;
		hit = true;
		vspd -= 2;
		hspd += choose(-2,2);
		stunned = true;
		global.combo_ = 0;
	}
}

