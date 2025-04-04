/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

_is_on_default_screen = !_is_on_default_screen;

if !_is_on_default_screen {
	objButtonPlay.y = -400;
	objButtonQuit.y = -400;
	objButtonToggleFullscreen.y = _top_button_Y;
	buttonText = "Return";
}

else {
	objButtonPlay.y = _top_button_Y;
	objButtonQuit.y = _bottom_button_Y;
	objButtonToggleFullscreen.y = -400;
	buttonText = originalButtonText;
}

if (instance_exists(objControls)) {
	instance_destroy(objControls);
}

else {
	instance_create_layer(room_width/2, room_height-75, "Instances", objControls);
}
