/// @description  Create the bullet

// create the bullet at the end of the barrel
if _shoot_delay > 60{
    _shoot_delay = 0;
    instance_create(x+35*_player_xscale_flip, y-12, player_teste_bullet_obj);
}




