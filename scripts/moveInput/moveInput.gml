// Movement Inputs
var hinput = (keyboard_check(vk_right) || (gamepad_axis_value(pad_num, gp_axislh) > 0)) - (keyboard_check(vk_left) || (gamepad_axis_value(pad_num, gp_axislh) < 0));
var vinput = keyboard_check(vk_up) || gamepad_button_check_pressed(pad_num, gp_face3);

// Horizontal speed - left and right
if alive == true {
    if _show_katana == true {
            image_speed = 0.7;
            var spr_index = asset_get_index("player"+string(player_num)+"_katana_spr");
            if sprite_index != spr_index {
                image_index = 0;
            }
            sprite_index = spr_index;
            if image_index > 6.7 {
                _show_katana = false;
            }
    }
    if hinput != 0 {
        if hinput > 0 {
            _player_xscale_flip = 1;
        } else if hinput < 0 {
            _player_xscale_flip = -1;
        }
        _hspeed += hinput * _acceleration;
        _hspeed = clamp(_hspeed, -_max_hspeed, _max_hspeed);
        
        if _show_katana == false {
            // Set running animation
            image_speed = 0.1;
            var spr_index = asset_get_index("player"+string(player_num)+"_running_spr");
            if sprite_index != spr_index {
                image_index = 0;
            }
            sprite_index = spr_index;
        }
    } else {
        _hspeed = lerp(_hspeed, 0, _friction);
        if _show_katana == false {
            // Set idle animation
            var spr_index = asset_get_index("player"+string(player_num)+"_idle_spr");
            image_speed = 0.05;
            sprite_index = spr_index;

        }
    }
} else if alive == false {
    if headshot == true {
        // Set headshot animation
        image_speed = 0.12;
        var spr_index = asset_get_index("player"+string(player_num)+"_headshot_spr");
        if sprite_index != spr_index {
            image_index = 0;
        }
        sprite_index = spr_index;
        // at the end of the animation destroy the player or 
        // respawn him (with invicibility or not for a couple of seconds)
        if image_index > 12.5 {
            randomSpawnerVariables_scr();
            var spawner = randomSpawner_scr();
            x = spawner.x;
            y = spawner.y;
            alive = true;
            headshot = false;
            immune_while_dead = false;
        }
    } else if bodyshot == true {
        // Set the bodyshot animation
        image_speed = 0.12;
        var spr_index = asset_get_index("player"+string(player_num)+"_bodyshot_spr");
        if sprite_index != spr_index {
            image_index = 0;
        }
        sprite_index = spr_index;
        if image_index > 9.6 {
            randomSpawnerVariables_scr();
            var spawner = randomSpawner_scr();
            x = spawner.x;
            y = spawner.y;
            alive = true;
            bodyshot = false;
        }
    }
}

// Vertical speed - gravity and up/jump
if global.go == true {
    if !place_meeting(x, y+1, solids_parent) {
        _vspeed += _gravity;
    } else {
        if vinput == 1 {
            _vspeed = _jump_height;
            _x_scale = image_xscale * 0.8;
            _y_scale = image_yscale * 1.2;
        }
    }
}
