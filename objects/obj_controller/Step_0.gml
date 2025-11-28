if global.gameOver
{
	if (!alarm[1]) {alarm[1] = 60}
	if keyboard_check(ord("Z")) && keyboard_check(ord("R"))
	{
		room_restart ()
		global.gameOver = false
		global.score = 0;
	}

	if keyboard_check_pressed(ord("X"))
	{
		room_goto(rm_menu)
		global.gameOver = false
		global.menuscreen = true
		global.score = 0;
	}
	exit
}


if keyboard_check_pressed(ord("R"))
	{
		room_restart()
	}