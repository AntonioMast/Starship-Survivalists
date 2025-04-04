/// @description Insert description here
// You can write your code in this editor

//aligns to center
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, "Move with arrow keys\nEsc to pause");

//resets alignment after changing it because apparently thats a good thing to do
draw_set_halign(fa_left);
draw_set_valign(fa_top);