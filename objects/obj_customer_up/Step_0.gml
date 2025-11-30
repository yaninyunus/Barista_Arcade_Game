// HIT THE COUNTER
if (!orderPlaced && !orderReceived)
{
    if place_meeting(x, y + 4, obj_wall)
    {
        speed = 0;
		image_speed = 0
        orderPlaced = true; // waiting at counter
    }
}

//ORDERING POINT SYSTEM + COUNTDOWN
if (orderPlaced && !orderReceived)
{
    // If timer not started yet
    if (orderScore == 0)
    {
        orderScore = 3;        // start at 3 points
        orderTimer = room_speed; // 1 second timer
    }

    // Count down 1 second
    orderTimer -= 1;

    if (orderTimer <= 0)
    {
        orderTimer = room_speed; // reset for next second
        orderScore -= 1;         // lose 1 point

        if (orderScore < 0)
            orderScore = 0;      // don't go negative
    }
}

// ORDER RECEIVED MOVE WALK LEFT
if (orderReceived && !orderPlaced)
{
    direction = 90;
    speed = 2;
	sprite_index = spr_customer_back
	image_speed = 1
}

//IF CUSTOMER IS OFFSCREEN
if (y < -48 && direction == 90)
{
    offScreen = true;
    speed = 0;
    orderPlaced = false;
    orderReceived = false;

    // Trigger alarm to walk back in
    if (!alarm[0]) alarm[0] = irandom_range(300, 480);
}
