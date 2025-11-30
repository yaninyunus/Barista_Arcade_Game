global.twentysec = false
global.endless = false
global.menuscreen = true

global.score = 0;
global.gameOver	= false;

audio_sound_gain(snd_bkg_music, 0, 0);
audio_sound_gain(snd_bkg_music, 0.05, 3000);
audio_play_sound(snd_bkg_music, 1, true);
audio_sound_gain(snd_bkg_20sec, 0, 0);
audio_play_sound(snd_bkg_20sec, 1, true);

gameOverAlarm = false