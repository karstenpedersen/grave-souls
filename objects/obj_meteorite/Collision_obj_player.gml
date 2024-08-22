instance_destroy();
with other {
	damage += other.damage;
	damage_effect += other.damage;
	flash = 1;
	hit = true;
	//vspd -= 2;
	//hspd += choose(-2,2);
	stunned = true;
}

