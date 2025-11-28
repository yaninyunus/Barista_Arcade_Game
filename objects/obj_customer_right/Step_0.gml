// HIT THE COUNTER
if (!orderPlaced && !orderReceived)
{
    if place_meeting(x - 4, y, obj_wall)
    {
        speed = 0;
        orderPlaced = true; // waiting at counter
    }
}

// ORDER RECEIVED MOVE WALK RIGHT
if (orderReceived && !orderPlaced)
{
    direction = 0;
    speed = 2;
}

//IF CUSTOMER IS OFFSCREEN
if (x > room_width + 8 && direction == 0)
{
    offScreen = true;
    speed = 0;
    orderPlaced = false;
    orderReceived = false;

    // Trigger alarm to walk back in
    if (!alarm[0]) alarm[0] = irandom_range(180, 300);
}
