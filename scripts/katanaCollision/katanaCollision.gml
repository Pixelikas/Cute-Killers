if place_meeting(x, y, players_parent) {
    inst = instance_place(x, y, players_parent);
    
    if inst != noone{
        with (inst) {
            alive = false;
            bodyshot = true; // trocar a animação para morte por katana
        }
    }
}
