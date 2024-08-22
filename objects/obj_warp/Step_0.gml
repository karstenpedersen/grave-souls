scr_game_input();
if need_input = true {
	if place_meeting(x,y,obj_player) && key_up{
		if target_room != room {
			room_goto(target_room);
		}
		obj_player.x = target_x;
		obj_player.y = target_y;
	}
} else {
	if place_meeting(x,y,obj_player){
		if target_room != room {
			room_goto(target_room);
		}
		obj_player.x = target_x;
		obj_player.y = target_y;
	}
}

sprite_index = sprite;