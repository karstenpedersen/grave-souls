type_id = irandom(3);

if type_id = 0 { //uncommon
	loot = choose(item_weapon_twosword,item_armor_leather);
} else if type_id = 1 { //common
	loot = choose(item_weapon_twosword,obj_item_potion_hp);
} else if type_id = 2 {//rare
	loot = choose(item_weapon_cleaver,item_armor_iron);
} else if type_id = 3 {//epic
	loot = choose(item_weapon_bow,obj_item_potion_hp,item_armor_iron);
}


