/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sndExplosion,4,false);
instance_destroy(other);
effect_create_layer("Instances",ef_ring, x, y, 0.25, c_white);

direction = other.direction;

//randomly spawns shooting upgrades
if sprite_index == spr_rock_small {
	var randI = random(1);
	if (instance_exists(objPlayer) && instance_exists(objGame)) {
		if (objGame.time > 90 && randI < 0.02 && objPlayer._secondary_blasters_fully_upgraded == false && !instance_exists(objBombUpgrade) && !instance_exists(objSecondaryGunUpgrade)) {
			if (x > 100 && x < 540 && y > 75 && y < 300) {
			instance_create_layer(x,y,"Instances",objSecondaryGunUpgrade);
			}
		}
	}
	//randomly spawns bomb upgrade
	if (instance_exists(objPlayer) && instance_exists(objGame)) {
		if (objGame.time > 30 && randI > 0.96 && objPlayer._bomb_fully_upgraded == false && !instance_exists(objBombUpgrade) && !instance_exists(objSecondaryGunUpgrade)) {
			if (x > 100 && x < 540 && y > 75 && y < 300) {
				instance_create_layer(x,y,"Instances",objBombUpgrade);
			}
		}
	}
}

//create new rocks
if sprite_index == spr_rock_big {
	
	sprite_index = spr_rock_small;
	var newRock = instance_create_layer(x+random_range(-15,15),y+random_range(-15,15),"Instances",objSmallRock);
	newRock.direction = direction + random_range(-80,80);
	objGame.points += 10;
}

else if (instance_number(objRock) + instance_number(objSmallRock) < 125) {
	speedvar = startingspeed;
	_random_angle_var = random(1);
	direction = random(360);
	sprite_index = spr_rock_big;
	var randI = random(2);
	objGame.points += 5;
	
	if randI <= 1 {
		x = -23;
		y = random(370);
	}
	
	else {
		y = -22;
		x = random(650);
	}
	
}

else {
	instance_destroy();
	objGame.points += 5;
}