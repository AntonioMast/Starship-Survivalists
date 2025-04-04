/// @description Insert description here
// You can write your code in this editor
_dt = delta_time / 1000000

time += _dt;
timeInTwoMinutes += _dt;

if (timeInTwoMinutes >= 120)
{ timeInTwoMinutes -= 120; }

//affect screen over time
if (timeInTwoMinutes > 30 && timeInTwoMinutes < 45) {
	camera_set_view_angle(view_camera[0], timeInTwoMinutes-30);
	timeStartingAt15 = 15;
}

else if (timeInTwoMinutes > 60 && timeInTwoMinutes < 90) {
	timeStartingAt15 -= _dt;
	camera_set_view_angle(view_camera[0], timeStartingAt15);
}

else if (timeInTwoMinutes > 105) {
	camera_set_view_angle(view_camera[0], timeInTwoMinutes-120);
}


//game over conditions
if (_gameEnded == true) {
	
	camShakeDelay = _startCamShakeDelay;
	startCameraShake = true;
	
	if (_gameOverTime >= 2.49) {
		cameraShakeLength = 2.5;
	}
	_gameOverTime -= _dt;
}

if (_gameOverTime <= 0) {
	
	//save score
	ini_open("data.ini");
	var last = ini_read_real("data", "highscore", 0);
	if (points > last) {
		ini_write_real("data", "highscore", points);
		last = points;
	}
	ini_close();
	
	//return to main menu
	room_goto(roomTitleScreen);
}

//shake camera
if (startCameraShake) {
	
	if (_nextCamShake <= 0) {
		view_xport[0] = random(cameraShakeLength*5)-cameraShakeLength*2.5;
		view_yport[0] = random(cameraShakeLength*5)-cameraShakeLength*2.5;
		
		_camShakeDelay += 0.0025;
		_nextCamShake += _camShakeDelay;
	}
	
	_nextCamShake -= _dt;
	cameraShakeLength -= _dt;
	
	if (cameraShakeLength <= 0) {
		_camShakeDelay = _startCamShakeDelay;
		_nextCamShake = _startCamShakeDelay;
		cameraShakeLength = 2.5;
		startCameraShake = false;
	}
}

//randomly spawns enemy rockets
if (time >= 30 && canSpawnEnemyRockets) {
	randI = random(1);
	
	if (floor(time) % 2 == 0 && enemyRocketCooldownTimer <= 0 && randI <= 0.2) {
		instance_create_layer(random_range(200,450), 400, "Instances", objEnemyRocket);
		enemyRocketCooldownTimer = enemyRocketCooldown;
		canSpawnEnemyRockets = false;
	}
	
}

if (!canSpawnEnemyRockets) {
	enemyRocketCooldownTimer -= _dt;
	if (enemyRocketCooldownTimer <= 0) {
		canSpawnEnemyRockets = true;
	}
}

//randomly spawns UFOS
if (time >= 60 && canSpawnUfo) {
	randI = random(1);
	
	if (floor(time) % 3 == 0 && ufoCooldownTimer <= 0 && randI <= 0.2) {
		instance_create_layer(random_range(100,550), 0, "Instances", objUfo);
		ufoCooldownTimer = ufoCooldown;
		canSpawnUfo = false;
	}
	
}

if (!canSpawnUfo) {
	ufoCooldownTimer -= _dt;
	if (ufoCooldownTimer <= 0) {
		canSpawnUfo = true;
	}
}