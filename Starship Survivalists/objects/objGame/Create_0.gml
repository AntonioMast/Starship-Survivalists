/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(sndMenuMusic);
audio_sound_gain(sndGameMusic,1,0);
audio_play_sound(sndGameMusic,10,true);
time = 0
timeInTwoMinutes = time;
timeStartingAt15 = 15;
points = 0;
_dt = 1;
_gameOverTime = 2.5;
startCameraShake = false
cameraShakeLength = 2.5;
_startCamShakeDelay = 0.02;
_camShakeDelay = _startCamShakeDelay;
_nextCamShake = _camShakeDelay;
_gameEnded = false;
canSpawnEnemyRockets = true;
enemyRocketCooldown = 15;
enemyRocketCooldownTimer = 0;

canSpawnUfo = true;
ufoCooldown = 22;
ufoCooldownTimer = 0;

