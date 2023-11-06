// Step event responsável por identificar a quantidade de gamepads conectados e criar um jogador para cada um deles.
if _flag == true {
    _flag = false;
    for (var i=0; i<8; i++) {
        if gamepad_is_connected(i) {
            var pad = i;
            if pad == 4{
                if !(instance_exists(player[0])){
                    pad = 0;
                } else if !(instance_exists(player[1])){
                    pad = 1;
                } else if !(instance_exists(player[2])){
                    pad = 2;
                } else if !(instance_exists(player[3])){
                    pad = 3;
                }
            } else if pad == 5{
                if !(instance_exists(player[1])){
                    pad = 1;
                } else if !(instance_exists(player[2])){
                    pad = 2;
                } else if !(instance_exists(player[3])){
                    pad = 3;
                }
            } else if pad == 6{
                if !(instance_exists(player[2])){
                    pad = 2;
                } else if !(instance_exists(player[3])){
                    pad = 3;
                }
            } else if pad == 7{
                pad = 3;
            }
            
            if !(instance_exists(player[pad])) {
                var spawner = randomSpawner_scr();
                // Create a player object and assign it a pad number
                var obj = asset_get_index("player"+string(pad+1)+"_obj");
                var obj2 = asset_get_index("player"+string(pad+1)+"_head_obj");
                player[pad] = instance_create(spawner.x, spawner.y, obj);
                player_head[pad] = instance_create(spawner.x, spawner.y, obj2);
                with (player[pad]) {
                    pad_num = i;
                    player_num = pad+1;
                }
                with (player_head[pad]) {
                    pad_num = i;
                    player_num = pad+1;
                }
                
                //remover - player2 para testes com 1 gamepad
                /*var p = asset_get_index("player2_obj");
                var p_head = asset_get_index("player2_head_obj");
                player[1] = instance_create(500, 250, p);
                player_head[1] = instance_create(500, 250, p_head);
                with (player[1]) {
                    pad_num = 1;
                    player_num = 2;
                }
                with (player_head[1]) {
                    pad_num = 1;
                    player_num = 2;
                }*/
            }
        }
    }
}

/* */
/*  */
