/// @description Acciones del carro normal
if obControl.gameOver 
{
	vspeed = 0;
	instance_destroy(obMasPunto);
}
else
{
	y += 30;
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
	instance_create_depth(x,y+sprite_height/2,obPlayer.depth-100,obExplosion);
	if instance_exists(obMachineGun) instance_destroy(obMachineGun);
	instance_destroy();
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

if place_meeting(x,y,obBullet) //Bullet hit
{
	destroyBullet = instance_nearest(x,y,obBullet)
	image_blend = c_red;
	instance_destroy(destroyBullet);
	life--;
}
else
{
	image_blend = c_white;
}

if life <= 0 
{
	instance_create_depth(x,y+sprite_height/2,obNormalCar.depth-1,obExplosion);
	obGUI.puntuacion+=5;
	instance_destroy();
}

//t = (t + increment) mod 360;
//shift = amplitude * dsin(t);
 
////clone the movement from the object's speed and direction
//xx += vspeed;
//if !obControl.gameOver x = xx + shift; //vertical wave motion