//DESTROY BULLET IF HIT MACHINE
	if (place_meeting(x, y, obj_machine))
	{
		instance_destroy();
	}