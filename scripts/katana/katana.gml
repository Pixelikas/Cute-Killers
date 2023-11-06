// Katana
var katana_input = gamepad_button_check_pressed(pad_num, gp_face1);
var katana_index = asset_get_index("player"+string(player_num)+"_katana_box_obj");
    
// Create the bullet at the end of the gun barrel
if katana_input != 0 && _katana_counter > _katana_delay {
    _show_katana = true;
    _katana_counter = 0;
    with (instance_create(x, y, katana_index)){
        image_xscale = other._player_xscale_flip;
        katanaCollision();
    }
}
_katana_counter += 1;
