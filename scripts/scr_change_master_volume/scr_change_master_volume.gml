/// @description change master volume
/// @param shift
function scr_change_master_volume() {

	var shift = argument[0];

	MASTER_VOLUME = clamp(MASTER_VOLUME + shift, 0, 1);
	audio_set_master_gain(0, MASTER_VOLUME);


}
