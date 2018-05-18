/// @description Insert description here
// You can write your code in this editor
if obControl.gameOver
{
	vspeed = 0;
}
else
{
	y -= velocidad;
}

//Destruir carro
if y == -150 
{
	instance_destroy(obMasPunto);
	instance_destroy();
}
//Colision con player
if place_meeting(x,y,obPlayer) 
{	
	obPlayer.colision = true;
	create_explosion(x,y);
	instance_destroy(obMasPunto);
	instance_destroy();
}