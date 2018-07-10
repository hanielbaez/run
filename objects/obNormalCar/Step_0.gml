/// @description Insert description here
// You can write your code in this editor
if obControl.gameOver 
{
	vspeed = 0;
	instance_destroy(obMasPunto);
}
else
{
	y += velocidad;
}

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
	//instance_destroy();
}

t = (t + increment) mod 360;
shift = amplitude * dsin(t);
 
//clone the movement from the object's speed and direction
xx += vspeed;
if !obControl.gameOver x = xx + shift; //vertical wave motion