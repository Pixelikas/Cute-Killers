/// @description  Draw player and gun
// Handles drawing and fliping player
if sign(_hspeed) > 0 {
    _player_xscale_flip = 1;
    draw_sprite_ext(player2_running_spr, image_index, x, y, _x_scale * _player_xscale_flip, _y_scale, 0, image_blend, image_alpha);
} else if sign(_hspeed) < 0 {
    _player_xscale_flip = -1;
    draw_sprite_ext(player2_running_spr, image_index, x, y, _x_scale * _player_xscale_flip, _y_scale, 0, image_blend, image_alpha);
} else if _hspeed == 0 {
    draw_sprite_ext(player2_idle_spr, image_index, x, y, _x_scale * _player_xscale_flip, _y_scale, 0, image_blend, image_alpha);
}

