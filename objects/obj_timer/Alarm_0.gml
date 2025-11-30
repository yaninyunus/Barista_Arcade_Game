t_sec -= 1

if !(t_sec = 0)
{
	 alarm[0] = 60
}
else
{
	global.gameOver = true
	audio_play_sound(snd_gameover, 1, false)
}