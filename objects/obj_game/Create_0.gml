//Initialize player

//OPTIONS
global.dev_mode = false;
global.item_highlight = false;
global.mouse = false;

//PERFORMANCE
global.graphics_name = "high";
global.graphics = 1;
global.particles_name = "high"
global.particles = 1;
global.perfomance_help = false;
global.more_details = true;

//DIFFICULTY
global.difficulty_name = "Normal";
global.difficulty = 2;

//HIGH SCORE
if !file_exists("score.sav") {
global.high_score = 0;
global.last_score = 0;
} else {
	scr_score_load();
}

global.kills = 0;
global.current_score = 0;

global.souls = 0;
global.sins = 0;
global.healing_items = 0;
global.knockback = 0;

global.light = false;

global.health_max = 200;
global.stamina_max = 150;
global.sins_max = 1000;

global.roll_cost = 50;

global.stamina_regen = 2; // normal = 0.5
global.health_regen = 2; // normal = 2
global.stamina_time = 75;

global.skill_points = 0;
global.level = 1;
global.xp = 0;
global.max_xp = (30 + (global.level*100) - 20);

//SKILLS

//skill - Melee
global.skill_meleedamage_bonus = 0;				//1 point
global.skill_heavyweaponsdamage = 0;			// 1 point
global.skill_lightweaponsdamage = 0;			// 1 point
global.skill_heavy_weapons = false;				//2 points
global.skill_combo = false;						//3 points

//skill - range
global.skill_rangedamage_bonus = 0;				//1 point
global.skill_arrowsreturn = false;				//3 points

//skill - gadget
global.skill_gadgetdamage_bonus = 0;			//1 point
global.skill_firedamagebonus = 0;				//1 point
global.skill_firearrows = false;				//3 points
global.skill_bombs = false;						//3 points
global.skill_smokebombs = false;				// 2 point
global.skill_extrahealingbottle = 0;			// 3 point

//skill - fitness
global.skill_morerolls = false;					//3 point
global.skill_rolldamage = false;				// 3 point

//skill - more
global.skill_shopdiscount = false;				//2 point
global.skill_ = false;

//GEAR
global.armor_leather = 0;
global.armor_iron = 0;
global.armor_soul = 0;

global.armor_id = 0;
global.armor_name = "";
global.armor_speed = 0;
global.armor_points = 0;

//STATS
global.class = "Knight";

//s r c i a l

global.stat_strength = 1;		//Lets you hit harder and carry more
global.stat_resistance = 1;		//Good against negative effects
global.stat_charisma = 1;		//Lets you get better shop deals
global.stat_intelligence = 1;	//Lets you think more
global.stat_agility = 1;		//Increases stamina
global.stat_luck = 1;			//Just your luck	

//CHECKPOINT
global.checkpoint_room = rm_graveyard;
global.checkpoint_x = 96;
global.checkpoint_y = 416;
global.restpoint_distance = 32;

//LAST DEATH
global.deathpoint_room = rm_graveyard;
global.deathpoint_x = 0;
global.deathpoint_y = 0;
global.deathpoint_souls = 0;
global.deathpoint_sins = 0;