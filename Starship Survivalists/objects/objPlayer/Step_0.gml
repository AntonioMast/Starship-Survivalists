/// @description Insert description here
// You can write your code in this editor

//INPUT
//everything to do with player input
if (keyboard_check(vk_right) || gamepad_button_check(0, gp_padr) || gamepad_axis_value(0,gp_axislh) > 0.9) {
	_right_input = true;
}

else {_right_input = false;}

if (keyboard_check(vk_left) || gamepad_button_check(0, gp_padl) || gamepad_axis_value(0,gp_axislh) < -0.9) {
	_left_input = true;
}

else {_left_input = false;}

if (keyboard_check(vk_up) || gamepad_button_check(0, gp_padu) || gamepad_axis_value(0,gp_axislv) < -0.9) {
	_up_input = true;
}

else {_up_input = false;}


//SHOOTING
//everything to do with player shooting
if _shooting_timer > 0 {
	_shooting_timer -= 1*objGame._dt;
}

if _shooting_timer <= 0{
	instance_create_layer(x, y, "Instances", objBullet,
	{
		speedVar : 600,
		directionVar : 0
	});
	_shooting_timer = _shooting_timer_now_length;
	motion_add(image_angle, -3*objGame._dt);
}

//upgrade player weapon
if instance_exists(objGame) {
	if (objGame.points >= 100 && _shooting_first_upgrade == false) {
		_shooting_timer_now_length -= .2;
		_shooting_first_upgrade = true;
		_upgrade_text_alpha = 3;
		_upgrade_text = "Weapon Upgraded!";
		audio_play_sound(sndUpgrade,2,false);
		}
		
	else if (objGame.points >= 250 && _shooting_second_upgrade == false) {
		_shooting_timer_now_length -= .2;
		_shooting_second_upgrade = true;
		_upgrade_text_alpha = 3;
		_upgrade_text = "Weapon Upgraded!";
		audio_play_sound(sndUpgrade,2,false);
		}
		
	else if (objGame.points >= 500 && _shooting_third_upgrade == false) {
		_shooting_timer_now_length -= .2;
		_shooting_third_upgrade = true;
		_upgrade_text_alpha = 3;
		_upgrade_text = "Weapon Upgraded!";
		audio_play_sound(sndUpgrade,2,false);
		}
		
	else if (objGame.points >= 1000 && _shooting_fourth_upgrade == false) {
		_shooting_timer_now_length -= .1;
		_shooting_fourth_upgrade = true
		_upgrade_text_alpha = 3;
		_upgrade_text = "Weapon Upgraded!";
		audio_play_sound(sndUpgrade,2,false);
		}
		
	else if (objGame.points >= 2000 && _shooting_fifth_upgrade == false) {
		_shooting_timer_now_length -= .1;
		_shooting_fifth_upgrade = true
		_upgrade_text_alpha = 3;
		_upgrade_text = "Weapon Maxed!";
		audio_play_sound(sndUpgrade,2,false);
		}
}

//secondary blasters shooting logic
if (_secondary_blasters_enabled = true) {
	if _shooting_timer_secondary_blasters > 0 {
	_shooting_timer_secondary_blasters -= 1*objGame._dt;
}

if _shooting_timer_secondary_blasters <= 0 {
	instance_create_layer(x, y, "Instances", objBullet,
	{
		speedVar : 600,
		directionVar : 45
	}) ;
		instance_create_layer(x, y, "Instances", objBullet,
	{
		speedVar : 600,
		directionVar : -45
	}) ;
	_shooting_timer_secondary_blasters = _shooting_timer_now_length_secondary_blasters;
	motion_add(image_angle, -5*objGame._dt);
	}
}

//bomb dropping logic
if (_bomb_enabled = true) {
	if _bombing_timer > 0 {
	_bombing_timer -= objGame._dt;
	}

	if _bombing_timer <= 0 {
		instance_create_layer(x, y, "Instances", objBomb)
		_bombing_timer = _bombing_timer_now;
	}
}

//upgrade text fading logic
if (_upgrade_text_alpha > 0)
{
	_upgrade_text_alpha -= objGame._dt;
}

//MOVEMENT
//everything to do with player movement
if _up_input {
	var randomValue = random_range(-20,20);
	motion_add(image_angle + randomValue, _movement_speed*random_range(0.5,1.5)*objGame._dt);
	_current_turning_speed += randomValue*objGame._dt;


	if _rocket_timer <= 0{
		var rocketFuel = instance_create_layer(x, y, "Instances", objRocketFuel);
		rocketFuel.direction = image_angle-180 + random_range(-10,10);
		_rocket_timer = _rocket_timer_now_length+random(_rocket_timer_now_length);
	}
}

//Lets try no back movement for a bit
//if keyboard_check(vk_down) {
//	motion_add(image_angle, -(_movement_speed/2)*random_range(0.5,1.5)*objGame._dt);
//}

if (_right_input) {
	_current_turning_speed -= _turning_speed*objGame._dt;
	if _current_turning_speed < _max_turning_speed*-1 { _current_turning_speed = _max_turning_speed*-1; }
}

if _left_input {
	_current_turning_speed += _turning_speed*objGame._dt;
	if _current_turning_speed > _max_turning_speed { _current_turning_speed = _max_turning_speed; }
}

if !_left_input && !_right_input {
	if _current_turning_speed > 0 { _current_turning_speed -= _turning_speed*objGame._dt; }
	else if _current_turning_speed < 0 { _current_turning_speed += _turning_speed*objGame._dt; }
}

if _current_turning_speed < .01 && _current_turning_speed > -0.01 {
	_current_turning_speed = 0;
}

image_angle += _current_turning_speed*objGame._dt;

move_wrap(true, true, 8);

if speed > _max_movement_speed {
	speed = _max_movement_speed;
}

//ROCKET TIMER
//decrements rocket timer every frame
if _rocket_timer > 0 {
	_rocket_timer -= 1*objGame._dt;
}