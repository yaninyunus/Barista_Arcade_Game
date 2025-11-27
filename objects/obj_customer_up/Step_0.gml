// HIT THE COUNTER
if (!orderPlaced && !orderReceived)
{
    if place_meeting(x, y + 4, obj_wall)
    {
        speed = 0;
        orderPlaced = true; // waiting at counter
    }
}

// ORDER RECEIVED MOVE WALK LEFT
if (orderReceived && !orderPlaced)
{
    direction = 90;
    speed = 2;
}

//IF CUSTOMER IS OFFSCREEN
if (y < -8 && direction == 90)
{
    offScreen = true;
    speed = 0;
    orderPlaced = false;
    orderReceived = false;

    // Trigger alarm to walk back in
    if (!alarm[0]) alarm[0] = irandom_range(30, 300);
}
