/// @description  Draw Bodyshot animation

// Set the bodyshot animation
var spr_bodyshot_idx = asset_get_index("player"+string(player_num)+"_bodyshot_spr");
    
// Draw the animation
draw_sprite_ext(spr_bodyshot_idx, image_index, x, y, _x_scale * _player_xscale_flip, _y_scale, 0, image_blend, image_alpha);
