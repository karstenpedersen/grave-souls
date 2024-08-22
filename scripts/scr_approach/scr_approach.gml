/// @description approach(start, end, shift);
/// @param start
/// @param end
/// @param shift 
function scr_approach() {

	var start = argument[0];
	var _end = argument[1];
	var shift = argument[2];

	if (start < _end) {
	    return min(start + shift, _end); 
	} else {
	    return max(start - shift, _end);
	}


}
