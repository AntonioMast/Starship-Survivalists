/// @description Insert description here
// You can write your code in this editor

//speedVar = 600;
//directionVar = 0;
	
speed = speedVar*objGame._dt;
direction = directionVar+objPlayer.image_angle;
	
audio_play_sound(sndLaserBlast,5,false);