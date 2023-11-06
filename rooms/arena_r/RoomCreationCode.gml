//audio_play_sound(sound5, 1, true);
if audio_is_playing(menu_snd) {
    audio_stop_sound(menu_snd);
}

if audio_is_playing(score_snd) {
    audio_stop_sound(score_snd); 
}

/*if !audio_is_playing(sound5) {
   audio_play_sound(sound5, 0, true);
}*/


// reset score global vars if the room is called from "play again" (score room)
global.go = false;

global.player1_score = 0;
global.player2_score = 0;
global.player3_score = 0;
global.player4_score = 0;

global.player1_death = 0;
global.player2_death = 0;
global.player3_death = 0;
global.player4_death = 0;