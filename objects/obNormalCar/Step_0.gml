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

if room = room0 and !obControl.gameOver velocidad += 0.05;

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

t = (t + increment) mod 360;
shift = amplitude * dsin(t);
 
//clone the movement from the object's speed and direction
xx += vspeed;
if !obControl.gameOver x = xx + shift; //vertical wave motion