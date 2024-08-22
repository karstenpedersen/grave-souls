function scr_armor_stats() {
	if global.armor = "" {	//Nothng
		global.armor_id = 0;
		global.armor_speed = 0;
		global.armor_points = 0;
	} else if global.armor = "Leather" {	//Nothng
		global.armor_id = 0;
		global.armor_speed = 0;
		global.armor_points = 4;
	} else if global.armor = "Iron" {	//Nothng
		global.armor_id = 0;
		global.armor_speed = -1;
		global.armor_points = 5;
	}




}
