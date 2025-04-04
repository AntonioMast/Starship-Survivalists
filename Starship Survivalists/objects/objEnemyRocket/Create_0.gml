/// @description Insert description here
// You can write your code in this editor

speedVar = 0.25;
image_angle = 90;
curveVar = random_range(-10,10);
sound = audio_play_sound(sndRocket,5,false);

_rocket_timer_starting_length = 0.025;
_rocket_timer_now_length = _rocket_timer_starting_length;
_rocket_timer = _rocket_timer_now_length;