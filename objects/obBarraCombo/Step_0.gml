/// @description Animar barra de combo
if obPlayer.volando 
{
	audio_sound_pitch(sndHappy,1.3) //	MUSICA ACELERADA
	obControl.combo -= 1/10;
	if instance_exists(obNormalCar) obNormalCar.velocidad = 150; //Aumentar la velocidad de los carros
}
else
{
	audio_sound_pitch(sndHappy,1)
	if instance_exists(obNormalCar) obNormalCar.velocidad = 25; //Aumentar la velocidad de los carros
}

if obControl.combo = 0 
{
	obPlayer.volando = false;
	
}

image_index = obControl.combo;
