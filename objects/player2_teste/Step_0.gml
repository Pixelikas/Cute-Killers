_shoot_delay += 1;
show_debug_message(_shoot_delay);

// Movement Inputs
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
var vinput = keyboard_check(vk_up);

// Horizontal speed - left and right
if hinput != 0 {
    _hspeed += hinput * _acceleration;
    _hspeed = clamp(_hspeed, -_max_hspeed, _max_hspeed);
    // Set running animation
    image_speed = 0.1;
    if sprite_index != player2_running_spr {
        image_index = 0;
    }
    sprite_index = player2_running_spr;
} else {
    _hspeed = lerp(_hspeed, 0, _friction);
    // Set idle animation
    sprite_index = player2_idle_spr;
    image_speed = 0.05;
}

// Vertical speed - gravity and up/jump
if !place_meeting(x, y+1, solids_parent) {
    _vspeed += _gravity;
} else {
    if vinput == 1 {
        _vspeed = _jump_height;
        _x_scale = image_xscale * 0.8;
        _y_scale = image_yscale * 1.4;
    }
}

// check the landing for the scale animation
if place_meeting(x, y+1, solids_parent) && !place_meeting(x, yprevious+1, solids_parent) {
    _x_scale = image_xscale * 1.2;
    _y_scale = image_yscale * 0.8;
}

// go back to normal scale
_x_scale = lerp(_x_scale, image_xscale, 0.2);
_y_scale = lerp(_y_scale, image_yscale, 0.2);

// corrects gap between player and cenario/solid - horizontal
if place_meeting(x+_hspeed, y, solids_parent) {
    while !place_meeting(x+sign(_hspeed), y, solids_parent) {
        x += sign(_hspeed);
    }
    _hspeed = 0;
}
// updates player x position on screen (its set before the next place_meeting to prevent that if the player hits a perfect pixel jump on a solid edge it doesn't
// get stuck
x += _hspeed;

// corrects gap between player and cenario/solid - vertical
if place_meeting(x, y+_vspeed, solids_parent) {
    while !place_meeting(x, y+sign(_vspeed), solids_parent) {
            y += sign(_vspeed);
        }
        _vspeed = 0;
}
// updates player y position on screen
y += _vspeed;

