//@decription Precionar Iniciar
if keyboard_check(ord("H"))
{
	image_index = 1;
	if !audio_is_playing(sndHappy) && obControl.music == 1 audio_play_sound(sndHappy,1,0);
}
else
{
	image_index = 0;
}