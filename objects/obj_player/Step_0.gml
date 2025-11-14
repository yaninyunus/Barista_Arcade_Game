if global.gameOver {exit;}

var spd = 3;
var moveX = 0;
var moveY = 0;

//MOVEMENT
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
	
	
	//Horizontal movement
	if (!place_meeting(x + moveX, y, obj_wall)) && (!place_meeting(x + moveX, y, obj_machine)) x += moveX;
	//Vertical movement
	if (!place_meeting(x, y + moveY, obj_wall)) && (!place_meeting(x, y + moveY, obj_machine)) y += moveY;


//SHOOTING BULLETS
	if global.coffeeBrewed = true
	{
		if (keyboard_check_pressed(ord("Z")))
		{
		    var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
    
		    switch (facing) {
		        case "up":
		            bullet.direction = 90;
		            break;
		        case "down":
		            bullet.direction = 270;
		            break;
		        case "left":
		            bullet.direction = 180;
		            break;
		        case "right":
		            bullet.direction = 0;
		            break;
		    }
		    bullet.speed = 4;
			global.coffeeBrewed = false;
		}
	}




//If player is in brewing zone
if (place_meeting(x, y, obj_machine_trigger))
{
    if (keyboard_check_pressed(ord("Z")))
	{
		global.coffeeBrewed = true;
    }
}
