/// @description Insert description here
// You can write your code in this editor

with obj_lever {
	if code = other.code {
		other.open = on;
	}
}

if open = true {
	if image_index < 3 {
		image_index += 0.5;
	}
	if image_index = 0.5 {
		audio_play_sound(snd_door_open,50,false);
	}
} else {
	if image_index > 0 {
		image_index -= 0.5;
	}
	if image_index = 2.5 {
		audio_play_sound(snd_door_close,50,false);
	}
}