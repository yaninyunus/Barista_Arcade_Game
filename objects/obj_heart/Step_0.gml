//HEART FOLLOW PLAYER
if (instance_exists(follow_target))
{
	x = follow_target.x;
	y = follow_target.y + offset_y;
}
	
//LEFT CUSTOMER
	if x = 0
	instance_destroy(self)
	
//RIGHT CUSTOMER
	if x = room_width
	instance_destroy(self)
	
	
//DOWN CUSTOMER
	if y = room_height
	instance_destroy(self)
	
	
//UP CUSTOMER
	if y = 0
	instance_destroy(self)