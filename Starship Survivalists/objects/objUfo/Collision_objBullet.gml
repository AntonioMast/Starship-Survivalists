/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);
audio_play_sound(sndExplosion,4,false);
effect_create_layer("Instances",ef_ring, x, y, 0.25, c_white);
instance_destroy();
instance_destroy(myBeam);
objGame.points += 25;