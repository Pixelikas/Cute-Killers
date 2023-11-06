switch (mpos) {
    case 0:
//        room_goto(arena_r);
        room_goto(gamemode_r);
        break;
    case 1:
        room_goto(options_r);
        break;
    case 2:
        room_goto(credits_r);
        break;
    case 3:
        game_end();
        break;
}
