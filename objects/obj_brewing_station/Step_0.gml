depth = 4

if !place_meeting(x, y, obj_player)	
{
	image_alpha = 0.5
	image_index = 0
	instance_deactivate_layer("instances_brewingui")
	global.inTheZone = false
}

if global.coffeeBrewing
{
	image_index = 1
}
else if place_meeting(x, y, obj_player)
{
	image_alpha = 1
	image_index = 0
	global.inTheZone = true

}