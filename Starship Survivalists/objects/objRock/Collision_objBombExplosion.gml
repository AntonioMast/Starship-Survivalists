/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sndExplosion,4,false);
effect_create_layer("Instances",ef_ring, x, y, 0.25, c_white);

//create new rocks
if sprite_index == spr_rock_big {
	sprite_index = spr_rock_small;
	instance_create_layer(x+random_range(-15,15),y+random_range(-15,15),"Instances",objSmallRock);
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