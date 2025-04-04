/// @description Insert description here
// You can write your code in this editor

timer -= objGame._dt;

if (timer <= 0) {
	instance_create_layer(x, y, "Instances", objBombExplosion) ;
	instance_destroy();
}