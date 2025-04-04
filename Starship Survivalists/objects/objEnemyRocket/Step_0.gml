/// @description Insert description here
// You can write your code in this editor

image_angle += curveVar*objGame._dt;

motion_add(image_angle, speedVar*objGame._dt);

if speed > speedVar {
	speed = speedVar;
}

if _rocket_timer <= 0 {
	var rocketFuel = instance_create_layer(x, y, "Instances", objRocketFuel);
	rocketFuel.direction = direction-180 + random_range(-10,10);
	_rocket_timer = _rocket_timer_now_length+random(_rocket_timer_now_length);
}

if _rocket_timer > 0 {
	_rocket_timer -= 1*objGame._dt;
}

move_wrap(true, true, 40);