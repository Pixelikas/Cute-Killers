// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // player1_obj
global.__objectDepths[1] = 0; // player1_bullet_obj
global.__objectDepths[2] = 0; // player1_head_obj
global.__objectDepths[3] = 0; // player1_katana_box_obj
global.__objectDepths[4] = 0; // player2_obj
global.__objectDepths[5] = 0; // player2_bullet_obj
global.__objectDepths[6] = 0; // player2_head_obj
global.__objectDepths[7] = 0; // player2_katana_box_obj
global.__objectDepths[8] = 0; // player3_obj
global.__objectDepths[9] = 0; // player3_bullet_obj
global.__objectDepths[10] = 0; // player3_head_obj
global.__objectDepths[11] = 0; // player3_katana_box_obj
global.__objectDepths[12] = 0; // player4_obj
global.__objectDepths[13] = 0; // player4_bullet_obj
global.__objectDepths[14] = 0; // player4_head_obj
global.__objectDepths[15] = 0; // player4_katana_box_obj
global.__objectDepths[16] = 0; // players_parent
global.__objectDepths[17] = 0; // players_heads_parent
global.__objectDepths[18] = 0; // bullets_parent
global.__objectDepths[19] = 0; // solids_parent
global.__objectDepths[20] = 0; // solid_obj
global.__objectDepths[21] = 0; // solid_left_obj
global.__objectDepths[22] = 0; // solid_right_obj
global.__objectDepths[23] = 0; // solid_2_obj
global.__objectDepths[24] = 0; // solid_3_obj
global.__objectDepths[25] = 0; // invisible_solid_obj
global.__objectDepths[26] = 0; // player_teste
global.__objectDepths[27] = 0; // player_teste_bullet_obj
global.__objectDepths[28] = 0; // player2_teste
global.__objectDepths[29] = 0; // player2_teste_bullet_obj
global.__objectDepths[30] = 0; // GamepadController_obj
global.__objectDepths[31] = 0; // PlayerCountControllerCreator_obj
global.__objectDepths[32] = 0; // PlayerCountController_obj
global.__objectDepths[33] = 0; // SpawnController_obj
global.__objectDepths[34] = 0; // Spawn_obj
global.__objectDepths[35] = 0; // Timer_obj
global.__objectDepths[36] = 0; // title_obj
global.__objectDepths[37] = 0; // gamepad_menu_obj
global.__objectDepths[38] = 0; // options_menu_obj
global.__objectDepths[39] = 0; // back_btn_obj
global.__objectDepths[40] = 0; // replay_btn_obj
global.__objectDepths[41] = 0; // next_btn_obj
global.__objectDepths[42] = 0; // init_controller_obj
global.__objectDepths[43] = 0; // splash_controller_obj
global.__objectDepths[44] = 0; // countdown_obj
global.__objectDepths[45] = 0; // player1_score_obj
global.__objectDepths[46] = 0; // player1_death_obj
global.__objectDepths[47] = 0; // player2_score_obj
global.__objectDepths[48] = 0; // player2_death_obj
global.__objectDepths[49] = 0; // player3_score_obj
global.__objectDepths[50] = 0; // player3_death_obj
global.__objectDepths[51] = 0; // player4_score_obj
global.__objectDepths[52] = 0; // player4_death_obj
global.__objectDepths[53] = 0; // logo_obj
global.__objectDepths[54] = 0; // history_controller_obj
global.__objectDepths[55] = 0; // map_controller_obj
global.__objectDepths[56] = 0; // gamemode_obj


global.__objectNames[0] = "player1_obj";
global.__objectNames[1] = "player1_bullet_obj";
global.__objectNames[2] = "player1_head_obj";
global.__objectNames[3] = "player1_katana_box_obj";
global.__objectNames[4] = "player2_obj";
global.__objectNames[5] = "player2_bullet_obj";
global.__objectNames[6] = "player2_head_obj";
global.__objectNames[7] = "player2_katana_box_obj";
global.__objectNames[8] = "player3_obj";
global.__objectNames[9] = "player3_bullet_obj";
global.__objectNames[10] = "player3_head_obj";
global.__objectNames[11] = "player3_katana_box_obj";
global.__objectNames[12] = "player4_obj";
global.__objectNames[13] = "player4_bullet_obj";
global.__objectNames[14] = "player4_head_obj";
global.__objectNames[15] = "player4_katana_box_obj";
global.__objectNames[16] = "players_parent";
global.__objectNames[17] = "players_heads_parent";
global.__objectNames[18] = "bullets_parent";
global.__objectNames[19] = "solids_parent";
global.__objectNames[20] = "solid_obj";
global.__objectNames[21] = "solid_left_obj";
global.__objectNames[22] = "solid_right_obj";
global.__objectNames[23] = "solid_2_obj";
global.__objectNames[24] = "solid_3_obj";
global.__objectNames[25] = "invisible_solid_obj";
global.__objectNames[26] = "player_teste";
global.__objectNames[27] = "player_teste_bullet_obj";
global.__objectNames[28] = "player2_teste";
global.__objectNames[29] = "player2_teste_bullet_obj";
global.__objectNames[30] = "GamepadController_obj";
global.__objectNames[31] = "PlayerCountControllerCreator_obj";
global.__objectNames[32] = "PlayerCountController_obj";
global.__objectNames[33] = "SpawnController_obj";
global.__objectNames[34] = "Spawn_obj";
global.__objectNames[35] = "Timer_obj";
global.__objectNames[36] = "title_obj";
global.__objectNames[37] = "gamepad_menu_obj";
global.__objectNames[38] = "options_menu_obj";
global.__objectNames[39] = "back_btn_obj";
global.__objectNames[40] = "replay_btn_obj";
global.__objectNames[41] = "next_btn_obj";
global.__objectNames[42] = "init_controller_obj";
global.__objectNames[43] = "splash_controller_obj";
global.__objectNames[44] = "countdown_obj";
global.__objectNames[45] = "player1_score_obj";
global.__objectNames[46] = "player1_death_obj";
global.__objectNames[47] = "player2_score_obj";
global.__objectNames[48] = "player2_death_obj";
global.__objectNames[49] = "player3_score_obj";
global.__objectNames[50] = "player3_death_obj";
global.__objectNames[51] = "player4_score_obj";
global.__objectNames[52] = "player4_death_obj";
global.__objectNames[53] = "logo_obj";
global.__objectNames[54] = "history_controller_obj";
global.__objectNames[55] = "map_controller_obj";
global.__objectNames[56] = "gamemode_obj";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for