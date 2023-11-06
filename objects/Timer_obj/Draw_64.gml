//draw_set_font(timer_fnt);
draw_set_font(timer_arcade_classic_fnt);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var rw = room_width/2;
var rh = 40;

draw_set_alpha(0.5);
draw_set_colour(c_black);
draw_text(rw + 4, rh + 4, string_hash_to_newline(timer));
draw_set_alpha(1);
draw_set_colour(c_red);
draw_text(rw, rh, string_hash_to_newline(timer));

