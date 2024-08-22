//Initialize object player
if room != rm_heaven && room != rm_spawn{
	x = global.checkpoint_x;
	y = global.checkpoint_y;
}

hspd_carry = 0;
hspd = 0;
vspd = 0;
jump_height = 4;
spd = 0.1;
w_spd = 2;
s_spd = 1;
c_spd = 1;
r_spd = 2;
grv = 5;

weapon_swap_delay = 0;
healing_delay = 0;

global.combo_ = 0;

#region //GUI
hp_color = c_dkgray;
hp_color2 = c_dkgray;
hp2_color = c_silver;
hp_out_color = c_black;
stam_color = c_gray;
stam_color2 = c_gray;
stam2_color = c_silver;
stam_out_color = c_black;

gui_x = 151;
yy = 32;
#endregion

#region//HEALTH VARIABLES
health_ = 200; //Normal health
health_2 = health_; //Yellow health
health_effect_timer = 0; //Time before yellow bar moves

healing = 0; //
healing_timer = 0;
healing_times = 0;
healing_times_max = 5; 
healing_item = 4; //Healing Items

damage = 0; //Damage
damage_effect = 0; //Damage for yellow bar
#endregion
#region//STAMINA VARIABLES
stamina_ = 150;
stamina_2 = stamina_;
//global.stamina_max = 100;
stamina_effect_timer = 0;
stamina_timer = 0;

stamina_damage = 0;	//STAMINA DAMAGE
stamina_damage_effect = 0; //STAMINA FOR EFFECT
#endregion

//STATES
state = states.idle;
state_name = "Idle";
normal_speed = 1;

//states and effects
stunned = false;	//STUNNED false or true
knockback = 0;		//IDK
inair_time = 0;		//How lon in air
flash = 0;			//Flash effect

//SET COLLISION MASK AND IMAGE SPEED
mask_index = spr_player_mask;

#region //Set weapon
global.weapon = "Twohanded sword";
global.weapon_type = "Heavy";
global.arrows_max = 15;
global.arrows = global.arrows_max;
scr_weapon_stats();
#endregion

#region //set armor
global.armor = "Leather";
scr_armor_stats();
#endregion