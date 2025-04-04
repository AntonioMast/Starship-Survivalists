/// @description Insert description here
// You can write your code in this editor

instance_deactivate_all(false);
instance_create_layer(320, 180 - 50, "Instances", objResume);
instance_create_layer(320, 360 - 80, "Instances", objButtonQuit);
objButtonQuit.buttonText = "Or quit..."