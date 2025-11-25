if (!orderPlaced && !orderReceived)
	if place_meeting(x+4, y, obj_wall)
	{
		speed = 0; 	//stop moving
		orderPlaced = true
	}
	
if orderReceived && !orderPlaced
{
	direction = 180
	speed = 2
}


if x <= -10 //basically outside frame
{
    speed = 0
	alarm[0] = irandom_range(30, 120); // (30 = 0.5 seconds, 120 = 2 seconds)
}






//if hit with wrong remove do not activavte bonus
//if hit with correct trigger points + bonus in there (<3)
//walk away to offscreen
//wait between this and that
//walk back again order something

/*if global.orderCorrect = 1
{
	direction = 180
	speed = 2
}
/*/
