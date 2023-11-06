// System event responsável por identificar quando um gamepad é conectado ou desconectado. Ele cria ou remove o jogador para cada um deles. Faz o 
// mesmo que o Step event mas apenas quando os gamepads são conectados ou desconectados.

/*switch(async_load[? "event_type"]) {             // Parse the async_load map to see which event has been triggered
    case "gamepad discovered":                     // A game pad has been discovered
        var pad = async_load[? "pad_index"];       // Get the pad index value from the async_load map
        
        // assigning original/xbox gamepad slot values (0, 1, 2 and 3) to the generic gamepad ones (4, 5, 6 and 7)
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
        
        gamepad_set_axis_deadzone(pad, 0.5);       // Set the "deadzone" for the axis
        gamepad_set_button_threshold(pad, 0.1);    // Set the "threshold" for the triggers
        if !(instance_exists(player[pad])) {         // Check to see if an instance is associated with this pad index
            // with random it can be created inside solids. need to use spawners + random fuctions instead.
    //        player[pad] = instance_create(64 + random(room_width - 128), 64 + random(room_height - 128), obj); 
            
            // Create a player object and assign it a pad number 
            // Default method
            var obj = asset_get_index("player"+string(pad+1)+"_obj");
            player[pad] = instance_create(240 * (pad + 1), 10, obj);
            with (player[pad]) {
                pad_num = async_load[? "pad_index"]; // sends the recognized gamepad slot to the player object
                player_num = pad+1;
            }    
        }
        break;
        
    case "gamepad lost":                           // Gamepad has been removed or otherwise disabled
        var pad = async_load[? "pad_index"];       // Get the pad index
        
        // assigning default original gamepad values/indexes
        if pad == 4{ 
            pad = 0;
        } else if pad == 5{
            pad = 1;
        } else if pad == 6{
            pad = 2;
        } else if pad == 7{
            pad = 3;
        }
        
        if (instance_exists(player[pad]))          // Check for a player instance associated with the pad and remove it
            {
            with (player[pad])
                {
                instance_destroy();
                }
            player[pad] = noone;                   // Set the controller array to "noone" so it detects a new pad being connected
            }
        break;
}

/* */
/*  */
