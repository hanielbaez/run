/// @description Acciones del carro normal
if obControl.gameOver 
{
	vspeed = 0;
	instance_destroy(obMasPunto);
}
else
{
	y += velocidad;
}
//if room = room0 and !obControl.gameOver velocidad += 0.05;
//if !obControl.gameOver velocidad += 0.05;

//Destruir carro
if y == room_height
{
	instance_destroy();
}
//Colision con player
if place_meeting(x,y,obPlayer) && !obPlayer.volando 
{	
	obPlayer.colision = true;
	instance_destroy(obMasPunto);
}

if image_index >= 13 && instance_exists(obPlayer)
{
	if distance_to_object(obPlayer) < 10 && !obPlayer.volando
	{
		if obControl.music == 1 and !audio_is_playing(sndTruck)
		{
			audio_play_sound(sndTruck,1,false);
		}
	}
}

//t = (t + increment) mod 360;
//shift = amplitude * dsin(t);
 
////clone the movement from the object's speed and direction
//xx += vspeed;
//if !obControl.gameOver x = xx + shift; //vertical wave motion