if global.gameOver
{
	audio_sound_gain(snd_bkg_music, 0.05, 0);
	audio_sound_gain(snd_bkg_20sec, 0, 0);
	if (!alarm[1]) {alarm[1] = 60}
	if keyboard_check(ord("Z")) && keyboard_check(ord("R"))
	{
		room_restart ()
		global.gameOver = false
		global.score = 0;
		audio_sound_gain(snd_bkg_music, 0, 0);
		audio_sound_gain(snd_bkg_20sec, 0.05, 0);
	}

	if keyboard_check_pressed(ord("X"))
	{
		room_goto(rm_menu)
		global.gameOver = false
		global.menuscreen = true
		global.score = 0;
		audio_sound_gain(snd_bkg_music, 0.05, 0);
		audio_sound_gain(snd_bkg_20sec, 0, 0);
	}
	exit
}

if keyboard_check_pressed(ord("R"))
	{
		room_restart()
	}



//HighsScore Rewrite
	if (global.score > global.highScore)
	{
		global.highScore = global.score;

		ini_open("save.ini");
		ini_write_real("Score", "High", global.highScore);
		ini_close();
	}