/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(fontDefault);


draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text_transformed(x, y, _text, _scale, _scale, image_angle);

draw_set_halign(fa_left);
draw_set_valign(fa_top);