//@decription Precionar Reiniciar
if keyboard_check(ord("R"))
{
	image_index = 1;
	if !audio_is_playing(sndEncender) audio_play_sound(sndEncender,1,0);
}
else
{
	image_index = 0;
}
