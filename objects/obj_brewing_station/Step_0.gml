depth = 4

//IF IN MENU SCREEN
if global.menuscreen = true
{
	if !place_meeting(x, y, obj_player)	
	{
		image_alpha = 0.5
		image_index = 0
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
}

//IF IN GAMEMODE
if global.twentysec || global.endless
{
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
}