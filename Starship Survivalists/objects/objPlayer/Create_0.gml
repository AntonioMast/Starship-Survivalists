/// @description Insert description here
// You can write your code in this editor

//player input variables
_up_input = false;
_down_input = false;
_right_input = false;
_left_input = false;

_max_movement_speed = 1;
_movement_speed = 3;
_max_turning_speed = 300;
_turning_speed = 900;
_current_turning_speed = 0;
_shooting_timer_starting_length = 0.9;
_shooting_timer_now_length = _shooting_timer_starting_length;
_shooting_timer = _shooting_timer_now_length;
_shooting_timer_now_length_secondary_blasters = _shooting_timer_starting_length;
_shooting_timer_secondary_blasters = _shooting_timer_now_length_secondary_blasters;
_bombing_timer_starting_length = 8;
_bombing_timer_now = _bombing_timer_starting_length;
_bombing_timer = _bombing_timer_now/4;

//weapon upgrade variables
_upgrade_text = "Weapon upgraded!";
_shooting_first_upgrade = false;
_shooting_second_upgrade = false;
_shooting_third_upgrade = false;
_shooting_fourth_upgrade = false;
_shooting_fifth_upgrade = false;

_2ndblast_first_upgrade = false;
_2ndblast_second_upgrade = false;
_secondary_blasters_fully_upgraded = false;

_bomb_first_upgrade = false;
_bomb_second_upgrade = false;
_bomb_fully_upgraded = false;

_upgrade_text_alpha = 0;

_secondary_blasters_enabled = false;
_bomb_enabled = false;



_rocket_timer_starting_length = 0.025;
_rocket_timer_now_length = _rocket_timer_starting_length;
_rocket_timer = _rocket_timer_now_length;