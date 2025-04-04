/// @description Insert description here
// You can write your code in this editor

if (!_bomb_enabled) {
	_upgrade_text = "Bomb Obtained!";
	_upgrade_text_alpha = 3;
	_bomb_enabled = true;
}

else if (!_bomb_first_upgrade){
	_upgrade_text = "Bomb Upgraded!";
	_upgrade_text_alpha = 3;
	_bomb_first_upgrade = true;
	_bombing_timer_now -= 1.5;
}

else if (!_bomb_second_upgrade){
	_upgrade_text = "Bomb Upgraded!";
	_upgrade_text_alpha = 3;
	_bomb_second_upgrade = true;
	_bombing_timer_now -= 1.5;
}

else if (!_bomb_fully_upgraded){
	_upgrade_text = "Bomb Maxed!";
	_upgrade_text_alpha = 3;
	_bomb_fully_upgraded = true;
	_bombing_timer_now -= 1;
}

audio_play_sound(sndUpgrade,2,false);