scr_game_input();

if instance_exists(obj_shop_itemstand) {
	depth = obj_shop_itemstand.depth+1;
}

//IMAGE
if bought = false {
	image_index = 2;
} else {
	image_index = 1;
}

//BUY OR DENI
if bought = false && key_pickup && global.souls >= price && place_meeting(x,y,obj_player){
	bought = true;
	repeat (5) {
		instance_create_layer(x,y,"game",obj_soul_dust);
	}
	audio_play_sound(snd_menu_change,50,false);
	instance_create_layer(x,y,"items",item_id);
	instance_destroy();
	global.souls -= price;
} else if global.souls < price && key_pickup && place_meeting(x,y,obj_player){
	audio_play_sound(snd_menu_deni,50,false);
}

//ADD GRAVITY
scr_player_gravity();

//COLLISION
if place_meeting(x, y+vspd, obj_shop_itemstand) {
	while !place_meeting(x, y+sign(vspd), obj_shop_itemstand) {
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd;
