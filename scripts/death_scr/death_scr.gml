/// @description death_scr(value)
/// @function death_scr
/// @param value
var inst = argument0;
var aux = object_get_name(inst.object_index);

if aux == "player1_obj" || aux == "player1_head_obj"{
    global.player1_death++;
} else if aux == "player2_obj" || aux == "player2_head_obj"{
    global.player2_death++;
} else if aux == "player3_obj" || aux == "player3_head_obj"{
    global.player3_death++;
} else if aux == "player4_obj" || aux == "player4_head_obj"{
    global.player4_death++;
}
