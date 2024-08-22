/// @description change music volume
/// @param shift
function scr_change_music_volume() {

	var shift = argument[0];

	MUSIC_VOLUME = clamp(MUSIC_VOLUME + shift, 0, 1);
	audio_group_set_gain(music, MUSIC_VOLUME, 0);


}
