/// @description  Initialize speed and direction
_hspeed = 0;

if sign(player2_obj._player_xscale_flip) > 0 {
    _hspeed = 11;
} else if sign(player2_obj._player_xscale_flip) < 0 {
    _hspeed = -11;
}

