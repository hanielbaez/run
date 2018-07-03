/// @description Animar barra de combo
if obPlayer.volando 
//{
//	if audio_is_playing(sndHappy) audio_stop_sound(sndHappy);
//	if !(audio_is_playing(sndHappyFaster)) && !obControl.gameOver audio_play_sound(sndHappyFaster,1,true); //	MUSICA ACELERADA
	obControl.combo -= 1/room_speed;
//}
//else
//{
//	if audio_is_playing(sndHappyFaster)	audio_stop_sound(sndHappyFaster);
//	if !(audio_is_playing(sndHappy)) && !obControl.gameOver audio_play_sound(sndHappy,1,true);
//}

if obControl.combo = 0 
{
	obPlayer.volando = false;
}

image_index = obControl.combo;
