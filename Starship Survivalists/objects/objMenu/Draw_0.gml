/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(fontDefaultSmall);

ini_open("data.ini");
var highscore = ini_read_real("data", "highscore", 0);
draw_text (5, 5, "Highscore: " + string(highscore));

