var hover = false;
draw_set_font(arcade_classic_fnt);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if point_in_rectangle(mouse_x, mouse_y, x, y, x + text_back_width, y + text_back_height) {
    if mouse_check_button_pressed(mb_left) {
        room_goto(menu_gamepad_r);
    }
    hover = true;
}

//draw shadow
draw_set_alpha(0.5);
draw_set_colour(c_black);
draw_text(x + 4, y + 4, string_hash_to_newline(text_back));

if(!hover) {
    draw_set_alpha(1);
    draw_set_colour(c_white);
    draw_text(x, y, string_hash_to_newline(text_back));
}
else {
    draw_set_alpha(1);
    draw_set_colour(c_yellow);
    draw_text(x, y, string_hash_to_newline(text_back));
}

