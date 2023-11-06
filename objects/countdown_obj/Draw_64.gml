timer--;
//draw_set_font(countdown_fnt);
draw_set_font(countdown_arcade_classic_fnt);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var rw = room_width/2;
var rh = room_height/2;

if timer > 180 && timer <= 240 {
    draw_set_alpha(0.5);
    draw_set_colour(c_black);
    draw_text(rw + 4, rh + 4, string_hash_to_newline("3"));
    draw_set_alpha(1);
    draw_set_colour(c_red);
    draw_text(rw, rh, string_hash_to_newline("3"));
} else if timer > 120 && timer <= 180 {
    draw_set_alpha(0.5);
    draw_set_colour(c_black);
    draw_text(rw + 4, rh + 4, string_hash_to_newline("2"));
    draw_set_alpha(1);
    draw_set_colour(c_red);
    draw_text(rw, rh, string_hash_to_newline("2"));
} else if timer > 60 && timer <= 120 {
    draw_set_alpha(0.5);
    draw_set_colour(c_black);
    draw_text(rw + 4, rh + 4, string_hash_to_newline("1"));
    draw_set_alpha(1);
    draw_set_colour(c_red);
    draw_text(rw, rh, string_hash_to_newline("1"));
} else if timer > 0 && timer <= 60 {
//    draw_set_font(fnt);
    draw_set_font(arcade_classic_fnt);
    draw_set_alpha(0.5);
    draw_set_colour(c_black);
    draw_text(rw + 4, rh + 4, string_hash_to_newline("KILL MWhAhaH!!!"));
    draw_set_alpha(1);
    draw_set_colour(c_red);
    draw_text(rw, rh, string_hash_to_newline("KILL MWhAhaH!!!"));
} else {
    global.go = true;
    if !audio_is_playing(gameplay_snd) {
        audio_play_sound(gameplay_snd, 0, true);
//        sound_volume(sound5, 0.1);
    }

    instance_create(0, 0, Timer_obj);
    instance_destroy();
}

