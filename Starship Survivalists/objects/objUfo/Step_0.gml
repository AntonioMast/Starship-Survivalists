/// @description Insert description here
// You can write your code in this editor

if (instance_exists(objPlayer)){
	move_towards_point( objPlayer.x+xLoc, objPlayer.y-40, speedVar*objGame._dt);
	
	if (abs(objPlayer.x - x) < 20 && y - objPlayer.y <= 0) {
		attacking = true;
	}
	
	else { 
		attacking = false;
		instance_destroy(myBeam);
	}
}

if (attacking) {
	if (firstFrameOfAttack) {
		myBeam = instance_create_layer(x, y+10, "Instances", objUfoBeam);
		firstFrameOfAttack = false
	}
	myBeam.x = x;
	myBeam.y = y+10;
}

else if (!firstFrameOfAttack) {
	firstFrameOfAttack = true;
}

move_wrap(true, true, 40);

if (incrementX) {
	xLoc += 10*objGame._dt;
}

else {
	xLoc -= 10*objGame._dt;
}

if (xLoc >= 25) {
	incrementX = false;
}

else if (xLoc <= -25) {
	incrementX = true;
}