/// @description  Draw player
if alive == true {
    if _show_katana == true {
        drawKatanaAnimation();
    } else {
        drawPlayer();
    }
} else {
    if headshot == true {
        drawHeadShotAnimation();
    }
    if bodyshot == true {
        drawBodyShotAnimation();
    }
}

