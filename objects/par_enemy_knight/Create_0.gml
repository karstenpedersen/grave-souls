hspd = 0;
vspd = 0;
spd = 0.5;
w_spd = 5;
r_spd = 8;
c_spd = 3;
grv = 5;
dir = -1;
fearofheights = true;

//state
state = "idle";
attack_delay = 0;
attack_range = 38;
follow_range = 1000;
attack_speed = 0.8;
normal_speed = 1;
stunned = false;
fire = false;
fire_count = 0;

//Weapon
weapon = choose("Sword","Cleaver");
knockback = 0;
turn_delay = 0;
killer = "";
loot = choose(1);

#region WEAPON
if weapon = "Sword" {
	spr_idle = spr_player_twosword_idle;
	spr_run = spr_player_twosword_run;
	spr_dead = spr_player_twosword_dead;
	spr_stun = spr_player_twosword_stun;
	spr_attack1 = spr_player_twosword_attack1;
	spr_attack2 = spr_player_twosword_attack2;
	spr_attack3 = spr_player_twosword_attack3;
	attack_sprite = choose(spr_attack1,spr_attack2);
	if attack_sprite = spr_attack1 {
		attack_hitframe = 4;
	} else {
		attack_hitframe = 2;
	}
	damage = 55;
	attack_dl = 25;
} else if weapon = "Cleaver" {
	spr_idle = spr_player_cleaver_idle;
	spr_run = spr_player_cleaver_run;
	spr_dead = spr_player_cleaver_dead;
	spr_stun = spr_player_cleaver_stun;
	spr_attack1 = spr_player_cleaver_attack1;
	spr_attack2 = spr_player_twosword_attack2;
	spr_attack3 = spr_player_twosword_attack3;
	attack_sprite = choose(spr_attack1);
	attack_hitframe = 1;
	damage = 70;
	attack_knockback = 1;
	attack_dl = 45;
}
#endregion

mask_index = spr_player_mask;

health_max = 75;
health_ = health_max;
score_ = 25;


flash = 0;
hit = false;