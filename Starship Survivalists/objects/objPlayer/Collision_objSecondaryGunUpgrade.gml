/// @description Insert description here
// You can write your code in this editor

if (!_secondary_blasters_enabled) {
	_upgrade_text = "Weapon Obtained!";
	_upgrade_text_alpha = 3;
	_secondary_blasters_enabled = true;
}

else if (!_2ndblast_first_upgrade){
	_upgrade_text = "Secondary Weapon Upgraded!";
	_upgrade_text_alpha = 3;
	_2ndblast_first_upgrade = true;
	_shooting_timer_now_length_secondary_blasters -= 0.2;
}

else if (!_2ndblast_second_upgrade){
	_upgrade_text = "Secondary Weapon Upgraded!";
	_upgrade_text_alpha = 3;
	_2ndblast_second_upgrade = true;
	_shooting_timer_now_length_secondary_blasters -= 0.2;
}

else if (!_secondary_blasters_fully_upgraded){
	_upgrade_text = "Secondary Weapon Maxed!";
	_upgrade_text_alpha = 3;
	_secondary_blasters_fully_upgraded = true;
	_shooting_timer_now_length_secondary_blasters -= 0.15;
}

audio_play_sound(sndUpgrade,2,false);

sprite_index = spr_player_upgraded;

