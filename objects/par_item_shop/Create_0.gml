randomize();
grv = 1;
vspd = 0;
bought = false;
price = 10000;
item_id = choose(item_weapon_bow,item_weapon_twosword,item_weapon_cleaver);
if item_id = item_weapon_bow {
	sprite_index = spr_item_bow;
	price = 500;
} else if item_id = item_weapon_twosword {
	sprite_index = spr_item_twohandedsword;
	price = 100;
} else if item_id = item_weapon_cleaver {
	sprite_index = spr_item_twohandedcleaver;
	price = 200;
}
image_speed = 0;