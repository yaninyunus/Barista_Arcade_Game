global.twentysec = false
global.endless = false
global.menuscreen = true

global.score = 0;
global.highScore = 0;
global.gameOver	= false;

audio_sound_gain(snd_bkg_music, 0, 0);
audio_sound_gain(snd_bkg_music, 0.05, 3000);
audio_play_sound(snd_bkg_music, 1, true);
audio_sound_gain(snd_bkg_20sec, 0, 0);
audio_play_sound(snd_bkg_20sec, 1, true);

gameOverAlarm = false




//SCORE LOAD SYSTEM
	if (file_exists("save.ini"))
	{
	    ini_open("save.ini");
	    global.highScore = ini_read_real("Score", "High", 0);
	    ini_close();
	}
	else
	{
		global.highScore = 0;
	}
	global.score = 0;
	
	
