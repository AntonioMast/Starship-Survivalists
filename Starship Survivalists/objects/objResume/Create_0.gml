/// @description Insert description here
// You can write your code in this editor

_text = "Paused\nPress esc to resume!";
_angle_speed = 10;
_enbigify_speed = .13;
_alarm1_time_start = 5.2;
_alarm1_time = _alarm1_time_start/2;
_alarm2_time_start = 7.7;
_alarm2_time = _alarm2_time_start/2;
_scale = 1;
audio_pause_sound(sndGameMusic);
audio_play_sound(sndMenuMusic,10,true);
