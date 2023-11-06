var hover = false;
//draw_set_font(fnt);
draw_set_font(arcade_classic_fnt);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

if point_in_rectangle(mouse_x, mouse_y, room_width/2 - text_replay_width/2, y, room_width/2 - text_replay_width/2 + text_replay_width, y + text_replay_height) {
    if mouse_check_button_pressed(mb_left) {
        room_goto(arena_r);
    }
    hover = true;
}

//draw shadow
draw_set_alpha(0.5);
draw_set_colour(c_black);
draw_text((room_width/2 - text_replay_width/2) + 4, y + 4, string_hash_to_newline(text_replay));

if(!hover) {
    draw_set_alpha(1);
    draw_set_colour(c_white);
    draw_text(room_width/2 - text_replay_width/2, y, string_hash_to_newline(text_replay));
}
else {
    draw_set_alpha(1);
    draw_set_colour(c_red);
    draw_text(room_width/2 - text_replay_width/2, y, string_hash_to_newline(text_replay));
}

