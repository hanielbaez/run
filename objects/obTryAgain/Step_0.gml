//@decription Precionar Reiniciar
if keyboard_check(ord("R"))
{
	image_index = 1;
	if !audio_is_playing(sndEncender) && obControl.music == 1 audio_play_sound(sndEncender,1,0);
	if !audio_is_playing(sndHappy) && obControl.music == 1 audio_play_sound(sndHappy,1,1);
}
else
{
	image_index = 0;
}
