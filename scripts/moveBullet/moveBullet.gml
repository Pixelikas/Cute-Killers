/// @description BUG: sometimes "inst" used inside the functions doesnt find the instance, as it
// returns -4;

// corrects gap between bullet and cenario - horizontal
var inst = noone;

//--------------------------------------------------------------------
if place_meeting(x+_hspeed, y, solids_parent) {
    while !place_meeting(x+sign(_hspeed), y, solids_parent) {
        x += sign(_hspeed);
    }
    instance_destroy();
}

//--------------------------------------------------------------------
// checks if the player shoots inside another player
if place_meeting(x, y, players_parent) {
show_debug_message("Entrou no Shoot Inside");
    inst = instance_place(x+sign(_hspeed), y, players_parent);

    if inst != noone{
        score_scr();
        death_scr(inst);
        with (inst) {
            alive = false;
            bodyshot = true;
        }
    }
    instance_destroy();
}

// checks collision with players
if place_meeting(x+_hspeed, y, players_parent) {
show_debug_message("Entrou no Shoot Player");
    while !place_meeting(x+sign(_hspeed), y, players_parent) {
        x += sign(_hspeed);
        inst = instance_place(x+sign(_hspeed), y, players_parent);
    }

    if inst != noone {
//        global.player_count -= 1; // if needed to change levels/rooms
        score_scr();
        death_scr(inst);
        with (inst) {
            alive = false;
            bodyshot = true;
        }
    }
    instance_destroy();
}


//--------------------------------------------------------------------
// checks the head collision
if place_meeting(x+_hspeed, y, players_heads_parent) {
    show_debug_message("Entrou no Head Shot ");
    while !place_meeting(x+sign(_hspeed), y, players_heads_parent) {
        x += sign(_hspeed);
        inst = instance_place(x+sign(_hspeed), y, players_heads_parent);
    }
    
    if inst != noone {
        score_scr();
        death_scr(inst);
        var obj_name = object_get_name(inst.object_index);
        var inst_numb = instance_number(players_heads_parent);
        
        for (var i = 0; i < inst_numb; i++) {
            var head_idx = asset_get_index("player"+string(i+1)+"_head_obj");
            var head_name = object_get_name(head_idx);
            
            if obj_name == head_name {
                var player_idx = asset_get_index("player"+string(i+1)+"_obj");
                var player_name = object_get_name(player_idx);
                
                with (player_idx) {
                    show_debug_message("Entrou no with.");
                    alive = false;
                    headshot = true;
                }
            }
        }
    }
    instance_destroy();
}

x += _hspeed;
