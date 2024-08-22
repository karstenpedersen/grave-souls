/// @description Buy the skill 
if (keyboard_check_released(vk_space) && place_meeting(x,y,obj_camera)) || (mouse_check_button_released(vk_left)) {
	if (status == 1) { // You can only buy this skill if it is available  

		// add any code here for buying the skill, i.e. you might have to deduct money or skill points 

		status = 2 // set this skill as being bought 
	
		with(obj_skill) { // go through all skills and see if they should now be set to available
	
			// Set skills I link to as available 
			for (i=0; i<needcount; i++) {
			    if (skillneeds[i] == other.skillid) {
					if (status == 0) { // dont overwrite if they have already bought upgrade
						status = 1 // This skill is next to me on the tree and is unavailable so make it available. 
					}
				}
			};
		
			// Set skills that link to me as available  
			for (i=0; i<other.needcount; i++) { // go backwards down the tree
				if (other.skillneeds[i] == skillid) {
					if (status == 0) { // dont overwrite if they have already bought upgrade
						status = 1 // This skill is next to me on the tree and is unavailable so make it available. 
					}
				}
			}

		}
	
		// add any code here to save the changes 
	
	}
}