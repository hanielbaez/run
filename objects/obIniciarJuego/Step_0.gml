//Precionar Iniciar
if keyboard_check(vk_enter)
{
	if !audio_is_playing(sndEncender) && obControl.music == 1 audio_play_sound(sndEncender,1,0);
}

if alphaLetra != 0
{
	alphaLetra -= .02;
}
else
{
	alphaLetra = 1;
}