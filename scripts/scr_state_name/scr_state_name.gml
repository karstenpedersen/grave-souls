function scr_state_name() {
	//SET STATE NAME
	if state = states.idle {
		state_name = "Idle";
	} else if state = states.walk {
		if place_meeting(x,y+1,obj_solid) {
			state_name = "Walking";
		} else {
			state_name = "Falling";
		} 
	} else if state = states.stunned {
		state_name = "Stunned";
	} else if state = states.death {
		state_name = "Dead";
	} else if state = states.attack1 || state = states.attack2 || state = states.attack3{
		state_name = "Attacking";
	} else if state = states.roll {
		state_name = "Rolling";
	} else if state = states.resting {
		state_name = "Resting";
	}


}
