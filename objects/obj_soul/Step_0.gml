if fly = false && !place_meeting(x,y+1,obj_solid){
	y += 3;
} else if fly = true{
	repeat (1) {
		instance_create_layer(x,y,"game",obj_soul_dust);
	}
	if place_meeting(x,y,obj_player){
		instance_destroy();
		global.souls += souls;
		global.sins += choose(0,1);
		//global.current_score += 50;
	}
	speed = speed_;
}

if fps_real <= fps/2 && global.perfomance_help = true {
	instance_destroy();
	global.souls += irandom_range(1,5);
}