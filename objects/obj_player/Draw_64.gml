draw_set_font(fn_gui);
draw_set_halign(fa_left);

#region //HEALTH BAR
draw_rectangle_color(gui_x,32+yy,gui_x+health_2,70+yy,hp2_color,hp2_color,hp2_color,hp2_color,false);
draw_rectangle_color(gui_x,32+yy,gui_x+health_,70+yy,hp_color,hp_color,hp_color,hp_color2,false);
draw_rectangle_color(gui_x,32+yy,gui_x+global.health_max,70+yy,hp_out_color,hp_out_color,hp_out_color,hp_out_color,true);
//draw_text(gui_x+16,64,"Health: " + string(health_));
#endregion

#region STAMINA
draw_rectangle_color(gui_x,86+yy,gui_x+stamina_2,100+yy,stam2_color,stam2_color,stam2_color,stam2_color,false);
draw_rectangle_color(gui_x,86+yy,gui_x+stamina_,100+yy,stam_color,stam_color,stam_color,stam_color2,false);
draw_rectangle_color(gui_x,86+yy,gui_x+global.stamina_max,100+yy,stam_out_color,stam_out_color,stam_out_color,stam_out_color,true);
//draw_text(gui_x+16,128,"Stamina: " + string(stamina_));
#endregion

#region GEAR
//DRAW WEAPON
draw_sprite_ext(global.weapon_sprite,1,128,GUI_HEIGHT-160,4,4,0,c_white,1);
draw_text(192,GUI_HEIGHT-160,"Weapon: " + string(global.weapon));

if global.weapon_type = "Ranged" {
	draw_text(192,GUI_HEIGHT-128,"Arrows: " + string(global.arrows) + "/15" /*+ string(global.arrows_max)*/);
}

//DRAW ARMOR
draw_text(700,GUI_HEIGHT-160,"Armor: " + string(global.armor_name));
draw_text(700,GUI_HEIGHT-128,"Armor hp: " + string(global.armor_points));
#endregion

#region //DRAW HEALING ITEMS
if healing_item = 4 {
	draw_sprite_ext(spr_item_potion_hp,0,100,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,0,100+64,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,0,100+128,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,0,100+192,GUI_HEIGHT-80,4,4,0,c_white,1);
} else if healing_item = 3 {
	draw_sprite_ext(spr_item_potion_hp,0,100,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,0,100+64,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,0,100+128,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,1,100+192,GUI_HEIGHT-80,4,4,0,c_white,1);
} else if healing_item = 2 {
	draw_sprite_ext(spr_item_potion_hp,0,100,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,0,100+64,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,1,100+128,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,1,100+192,GUI_HEIGHT-80,4,4,0,c_white,1);
} else if healing_item = 1{
	draw_sprite_ext(spr_item_potion_hp,0,100,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,1,100+64,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,1,100+128,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,1,100+192,GUI_HEIGHT-80,4,4,0,c_white,1);
} else {
	draw_sprite_ext(spr_item_potion_hp,1,100,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,1,100+64,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,1,100+128,GUI_HEIGHT-80,4,4,0,c_white,1);
	draw_sprite_ext(spr_item_potion_hp,1,100+192,GUI_HEIGHT-80,4,4,0,c_white,1);
}
#endregion

#region XP AND LEVEL
//DRAW LVL
draw_sprite_ext(spr_gui_circle,0,96,96,2.5,2.5,0,c_white,1);
draw_set_font(fn_gui_lvl);
draw_set_halign(fa_center);
draw_text(96,96,"LVL");
draw_text(96,128,string(global.level));
draw_set_halign(fa_left);

//XP
draw_set_font(fn_gui)
draw_text(32,192,"XP: " + string(global.xp) + "/" + string(global.max_xp));
#endregion

if global.combo_ > 0 {
	draw_text(32,256,"COMBO " + string(global.combo_))
}

if global.dev_mode = true {
	//FPS
	draw_set_font(fn_gui)
	draw_set_halign(fa_left);
	draw_text(32,400,"FPS: " + string(fps_real) + "/" + string(fps));
	
	//STATE
	draw_text(32,432,"State: " + string(state_name));
	draw_text(32,464,"X " + string(x) + " - Y " + string(y))
}