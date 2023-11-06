/// @description  Draw head - Not necessary, only for debugging purposes as its possible aswell 
// to disable the visible checkbox in the head obj

// Handles drawing and fliping player
var spr_headshot_mask_idx = asset_get_index("players_head_mask_spr");
var player = asset_get_index("player"+string(player_num)+"_obj");
// draws the headshot mask
draw_sprite_ext(spr_headshot_mask_idx, image_index, x, y, player._x_scale * player._player_xscale_flip, player._y_scale, 0, image_blend, image_alpha);

// -------------------------------------------------------------------------
// Testes para desenhar sem precisar de objetos extras (cabeças)
// desenha na posição certa (x e y do player object)
//draw_circle(x + 3 * _player_xscale_flip, (y - sprite_get_height(sprite_index)/2) - 2, 15, false);
