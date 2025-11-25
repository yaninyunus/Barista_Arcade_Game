/// States
enum CustomerState {
    ENTER,      // walking into the scene
    APPROACH,   // walking until hitting wall
    ORDER,      // placing order
    LEAVE,      // leaving scene
    OFFSCREEN   // waiting to return
}

state = CustomerState.ENTER;
speed = 2;
direction = 0; // coming in from left
alarm[0] = 0;  // no timer yet
