var bullet_name = object_get_name(object_index);

if bullet_name == "player1_bullet_obj"{
    global.player1_score++;
} else if bullet_name == "player2_bullet_obj"{
    global.player2_score++;
} else if bullet_name == "player3_bullet_obj"{
    global.player3_score++;
} else if bullet_name == "player4_bullet_obj"{
    global.player4_score++;
}
