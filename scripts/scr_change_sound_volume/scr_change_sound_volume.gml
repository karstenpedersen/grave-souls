/// @description change sound volume
/// @param shift
function scr_change_sound_volume() {

	var shift = argument[0];

	SOUND_VOLUME = clamp(SOUND_VOLUME + shift, 0, 1);
	audio_group_set_gain(sound_effects, SOUND_VOLUME, 0);


}
