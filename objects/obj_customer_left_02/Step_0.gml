switch (state)
{
    // --------------------------------------------------------
    case CustomerState.ENTER:
        // walking right
        direction = 0;
        speed = 2;
        
        // If collided with wall → begin order
        if (place_meeting(x+4, y, obj_wall)) {
            speed = 0;
            state = CustomerState.ORDER;
        }
    break;

    // --------------------------------------------------------
    case CustomerState.ORDER:
        // Wait for collision with order object
        speed = 0;
    break;

    // --------------------------------------------------------
    case CustomerState.LEAVE:
        direction = 180; // walk left
        speed = 2;

        // Once fully offscreen, begin waiting
        if (x <= -16) {
            speed = 0;
            alarm[0] = irandom_range(30, 180); // 0.5–3 seconds
            state = CustomerState.OFFSCREEN;
        }
    break;

    // --------------------------------------------------------
    case CustomerState.OFFSCREEN:
        speed = 0;
        // Alarm will handle returning
    break;
}
