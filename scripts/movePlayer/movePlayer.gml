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
