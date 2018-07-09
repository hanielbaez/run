/// @description Animar barra de combo
if obControl.gameOver exit;

if obPlayer.volando 
{
	if audio_is_playing(sndHappy) audio_stop_sound(sndHappy);
	if !(audio_is_playing(sndCombo)) && !obControl.gameOver audio_play_sound(sndCombo,1,true); //	MUSICA ACELERADA
	obControl.combo -= 1/room_speed;
	if instance_exists(obNormalCar) obNormalCar.velocidad = 70; //Aumentar la velocidad de los carros
}
else
{
	if instance_exists(obNormalCar) obNormalCar.velocidad = 25; //Aumentar la velocidad de los carros
	if audio_is_playing(sndCombo) audio_stop_sound(sndCombo);
	if !audio_is_playing(sndHappy) audio_play_sound(sndHappy,1,true);
}

if obControl.combo = 0 
{
	obPlayer.volando = false;
}

image_index = obControl.combo;
