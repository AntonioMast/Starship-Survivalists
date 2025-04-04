/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sndShipExplosion,3,false);
audio_sound_gain(sndGameMusic,0,500);
effect_create_layer("Instances", ef_flare, x, y, 3, c_white);
instance_destroy();

objGame._gameEnded = true;