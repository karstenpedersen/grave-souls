function scr_state_stunned() {
	scr_knockback(knockback,grv);
	scr_player_gravity();

	//STUNNED
	if stunned = true && alarm[0] <= 0 {
		alarm[0] = 20;
	}


}
