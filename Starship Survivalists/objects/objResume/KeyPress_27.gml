/// @description Insert description here
// You can write your code in this editor

instance_activate_all();
audio_stop_sound(sndMenuMusic);
audio_resume_sound(sndGameMusic);
instance_destroy();
instance_destroy(objButtonQuit);