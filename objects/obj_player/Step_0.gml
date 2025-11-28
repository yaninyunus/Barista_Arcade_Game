 if global.gameOver {exit;}

var spd = 3;
var moveX = 0;
var moveY = 0;

//MOVEMENT
if !global.coffeeBrewing
{
	if (keyboard_check(vk_right))
	{
		moveX = spd;
		facing = "right";
	}
	else if (keyboard_check(vk_left))
	{
		moveX = -spd;
		facing = "left";
	}
	else if (keyboard_check(vk_down))
	{
		moveY = spd;
		facing = "down";
	}
	else if (keyboard_check(vk_up))
	{
		moveY = -spd;
		facing = "up";
	}
}
	
	//Horizontal movement
	if (!place_meeting(x + moveX, y, obj_wall)) /*&& (!place_meeting(x + moveX, y, obj_machine))/*/ x += moveX;
	//Vertical movement
	if (!place_meeting(x, y + moveY, obj_wall)) /*&& (!place_meeting(x, y + moveY, obj_machine))/*/ y += moveY;





//IF IN MENU SCREEN
if global.menuscreen = true
{
		if (place_meeting(x, y, obj_brewing_station))
	{
		if (keyboard_check_released(ord("Z")))
				{
					global.menuscreen = false
					global.twentysec = true
					room_goto(rm_20sec)

				}
	}
}
		

//IF IN 20SECOND GAME MODE
if global.twentysec
{
	//If PLAYER IS IN THE BREWING ZONE
		if (place_meeting(x, y, obj_brewing_station))
		{
			//ENTER OR EXIT BREWING MODE
			if (keyboard_check_pressed(ord("Z")))
			{
			        global.coffeeBrewed = true;
				    // entering brewing mode
				    if (!global.coffeeBrewing)
				    {
				        audio_play_sound(snd_brewoff, 1, false, 1, 0, 2)
						global.coffeeBrewing = true;
				        global.esCounter += 1;
				    }
				    else
				    {
				        // exiting brewing mode: coffee is brewed!
				        audio_play_sound(snd_brewoff, 1, false)
						global.coffeeBrewing = false;
				        global.coffeeBrewed = true;
			
				    }

				    exit;
				}
			}
		
		
		//SHOOTING COFFEE
		if global.coffeeBrewed
		{
			if (keyboard_check_pressed(ord("Z")))
			{
					var coffee = noone;
					if (global.esCounter >= 1 ) { var coffee = instance_create_layer(x, y, "Instances", obj_es); }
					if (coffee != noone)
					{
						switch (facing)
						{
						    case "up":
						        coffee.direction = 90;
						        break;
						    case "down":
						        coffee.direction = 270;
						        break;
						    case "left":
						        coffee.direction = 180;
						        break;
						    case "right":
						        coffee.direction = 0;
						        break;
						}
						coffee.speed = 4;
						global.coffeeBrewed = false;
						global.esCounter = 0;

					}
				}
		}
		
}
		



//IF IN GLOBAL ENDLESS MODE
if global.endless
{
		//If PLAYER IS IN THE BREWING ZONE
		if (place_meeting(x, y, obj_brewing_station))
		{
		// ENTER or EXIT brewing mode (press Z)
		if (keyboard_check_pressed(ord("Z")))
		{
		    // entering brewing mode
		    if (!global.coffeeBrewing)
		    {
		        global.coffeeBrewing = true;
				instance_activate_layer("instances_brewingui")
		        global.esCounter = 0;
		        global.waterCounter = 0;
		        global.milkCounter = 0;
		    }
		    else
		    {
		        // exiting brewing mode: coffee is brewed!
		        global.coffeeBrewing = false;
		        global.coffeeBrewed = true;
			
		    }

		    exit;
		}

		// ADD INGREDIENTS
		if (global.coffeeBrewing)
		{
		    if (keyboard_check_pressed(vk_up))    global.esCounter += 1;
		    if (keyboard_check_pressed(vk_left))  global.waterCounter += 1;
		    if (keyboard_check_pressed(vk_right)) global.milkCounter += 1;
		}

		exit;
		}



		//SHOOTING COFFEE
		if global.coffeeBrewed
		{
			if (keyboard_check_pressed(ord("Z")))
			{
					var coffee = noone;
					if (global.esCounter == 1 && global.waterCounter == 0 && global.milkCounter == 0) { var coffee = instance_create_layer(x, y, "Instances", obj_es); }
					if (global.esCounter == 1 && global.waterCounter == 1 && global.milkCounter == 0) { var coffee = instance_create_layer(x, y, "Instances", obj_lb); }
					if (global.esCounter == 1 && global.waterCounter == 0 && global.milkCounter == 1) { var coffee = instance_create_layer(x, y, "Instances", obj_fw); }
					//else add screenshake and player blink maybe. counters reset
					if (coffee != noone)

					{
						switch (facing)
						{
						    case "up":
						        coffee.direction = 90;
						        break;
						    case "down":
						        coffee.direction = 270;
						        break;
						    case "left":
						        coffee.direction = 180;
						        break;
						    case "right":
						        coffee.direction = 0;
						        break;
						}
						coffee.speed = 4;
						global.coffeeBrewed = false;
						global.esCounter = 0;
						global.waterCounter = 0; 
						global.milkCounter = 0;
					}
				}
		}
}

		
		
