// if 2 or more playes were created, create the obj to controll the number of players 
// alive during the match

var _number_of_connected_gamepads = 0;
if _flag == true {
    for (var i=0; i<8; i++) {
        if gamepad_is_connected(i) {
            _number_of_connected_gamepads++;
        }
    }
    // lógica correta, mas para os testes com 1 controle é necessário 
    //testar caso apenas um gamepad esteja conectado //if _number_of_connected_gamepads > 1 {
    if _number_of_connected_gamepads > 0 {
        if global.player_count > 1 {
            instance_create(0, 0, PlayerCountController_obj);
            _flag = false;
        }
    }
}

