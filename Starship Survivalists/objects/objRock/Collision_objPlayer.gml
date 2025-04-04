/// @description Insert description here
// You can write your code in this editor

//game over condition
audio_play_sound(sndExplosion,4,false);
effect_create_layer("Instances",ef_ring, x, y, 0.25, c_white);

direction = other.direction;

if sprite_index == spr_rock_big {
	sprite_index = spr_rock_small;
	instance_copy(true);
}

else {
	instance_destroy();
}