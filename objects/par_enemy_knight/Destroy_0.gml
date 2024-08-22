instance_create_layer(x+irandom_range(-8,8),y+irandom_range(-8,8),"game",obj_soul);
instance_create_layer(x+irandom_range(-8,8),y+irandom_range(-8,8),"game",obj_soul);
instance_create_layer(x+irandom_range(-8,8),y+irandom_range(-8,8),"game",obj_soul);
with instance_create_layer(x,y,"game",obj_score_effect) {
	score_ = other.score_;
}

if loot = 1 {
	instance_create_layer(x,y,"items",obj_itemspawner)
}