//tempo desce
steps++;
//Get secs
if steps > 60 {
    secs-=1;
    steps-=60;
}
//Get mins
if secs < 0 {
    mins-=1;
    secs+=60;
}
if secs<10 {
//    timer = "Timer   0"+string(mins)+":0"+string(secs);
    timer = "Timer   0"+string(mins)+"  0"+string(secs);
} else {
    timer = "Timer   0"+string(mins)+"  "+string(secs);
}

if mins < 1 && secs < 1 {
    room_goto(score_r);
}

// incremental
/*steps++;
//Get secs
if steps > 60 {
    secs+=1;
    steps-=60;
}
//Get mins
if secs > 60 {
    mins+=1;
    secs-=60;
}
if secs<10 {
//    secs="0"+string(secs);// crash
    timer = "Timer "+string(mins)+":0"+string(secs);
} else {
    timer = "Timer "+string(mins)+":"+string(secs);
}

/* */
/*  */
