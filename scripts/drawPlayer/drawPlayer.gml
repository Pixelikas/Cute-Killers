/// @description  Draw player
// Handles drawing and fliping player
var spr_running_idx = asset_get_index("player"+string(player_num)+"_running_spr");
var spr_idle_idx = asset_get_index("player"+string(player_num)+"_idle_spr");

if _hspeed == 0 {
    draw_sprite_ext(spr_idle_idx, image_index, x, y, _x_scale * _player_xscale_flip, _y_scale, 0, image_blend, image_alpha);
} else {
    draw_sprite_ext(spr_running_idx, image_index, x, y, _x_scale * _player_xscale_flip, _y_scale, 0, image_blend, image_alpha);
}
// arrumar o bouding box do personagem, quando o xscale da sprite é trocado o 
// bounding box continua na mesma posição.
//draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
//draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom, c_aqua, c_aqua, c_aqua, c_aqua, true);
