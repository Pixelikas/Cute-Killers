/// @description  Initialize variables
_hspeed = 0;
_vspeed = 0;
_max_hspeed = 5;
_jump_height = -18;
_gravity = 1;
_acceleration = 1;
_friction = 1;
_player_xscale_flip = 1;
_shoot_delay = 60;
_x_scale = image_xscale;
_y_scale = image_yscale;

// Mapping keyboard control keys
keyboard_set_map(ord("I"), vk_up);
keyboard_set_map(ord("J"), vk_left);
keyboard_set_map(ord("K"), vk_down);
keyboard_set_map(ord("L"), vk_right);

