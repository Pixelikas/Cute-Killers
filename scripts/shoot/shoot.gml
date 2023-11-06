// Shooting
//var shoot_input = gamepad_button_check_pressed(pad_num, gp_shoulderr);
var shoot_input = gamepad_button_check_pressed(pad_num, gp_face4);

// Create the bullet at the end of the gun barrel
if shoot_input != 0 && _shoot_delay > 30{
    //poe o efeito do som aqui =D
    _shoot_delay = 0;
    var obj_index = asset_get_index("player"+string(player_num)+"_bullet_obj");
    instance_create(x+35*_player_xscale_flip, y-12, obj_index);
}
_shoot_delay += 1;
