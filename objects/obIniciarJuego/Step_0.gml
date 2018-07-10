//Precionar Iniciar
if keyboard_check(vk_enter)
{
	image_index = 1;
	if !audio_is_playing(sndEncender) audio_play_sound(sndEncender,1,0);
}
else
{
	image_index = 0;
}

