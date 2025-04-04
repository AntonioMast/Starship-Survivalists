/// @description Insert description here
// You can write your code in this editor
_dt = delta_time / 1000000

_alarm1_time -= _dt;
_alarm2_time -= _dt;

image_angle += _angle_speed*_dt;
_scale += _enbigify_speed*_dt;

if _alarm1_time <= 0 {
	_angle_speed = _angle_speed*(-1);
	_alarm1_time = _alarm1_time_start;
}

if _alarm2_time <= 0 {
	_enbigify_speed = _enbigify_speed*(-1);
	_alarm2_time = _alarm2_time_start;
}