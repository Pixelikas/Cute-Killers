// check the landing for the scale animation
if place_meeting(x, y+1, solids_parent) && !place_meeting(x, yprevious+1, solids_parent) {
    _x_scale = image_xscale * 1.2;
    _y_scale = image_yscale * 0.8;
}

// go back to normal scale
_x_scale = lerp(_x_scale, image_xscale, 0.2);
_y_scale = lerp(_y_scale, image_yscale, 0.2);
