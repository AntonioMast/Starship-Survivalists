/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sndExplosion,4,false);
effect_create_layer("Instances",ef_ring, x, y, 0.25, c_white);
instance_destroy();
objGame.points += 25;