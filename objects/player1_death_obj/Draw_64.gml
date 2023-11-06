//draw_set_font(score_fnt);
draw_set_font(score_arcade_classic_fnt);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_alpha(0.5);
draw_set_colour(c_black);
draw_text(x + 3, y + 3, string_hash_to_newline("P1  deaths : "+string(global.player1_death)));
draw_set_alpha(1);
draw_set_colour(c_blue);
draw_text(x, y, string_hash_to_newline("P1  deaths : "+string(global.player1_death)));

