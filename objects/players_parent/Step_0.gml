/// @description  Player Controller
// Get gamepad movement input
moveInput();

if global.go == true {
    // Transform player position
    movePlayer();
    
    // Get gamepad shooting input
    shoot();
    
    // Katana
    katana();
    
    // Check for jumping and landing scale animation
    playerScaleAnimation();
    
    // test warp
    warp();
}

