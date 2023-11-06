/// @description  Initialize speed and direction
_hspeed = 0;

if sign(player_teste._player_xscale_flip) > 0 {
    _hspeed = 10;
} else if sign(player_teste._player_xscale_flip) < 0 {
    _hspeed = -10;
}

