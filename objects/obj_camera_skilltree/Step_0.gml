scr_game_input();
if key_left {
	x -= spd;
} else if key_right {
	x += spd;
}

if key_down {
	y += spd;
} else if key_up {
	y -= spd;	
}

//Y
if y <= 0 {
	y = room_height-1;
} else if y >= room_height {
	y = 1;
}

//X
if x <= 0 {
	x = room_width-1;
} else if x >= room_width {
	x = 1;
}
