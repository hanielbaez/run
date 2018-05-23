/// @description Insert description here
// You can write your code in this editor
y -= velocidad;

if place_meeting(x,y,obPlayer) //&& !obControl.gameOver
{
	obGUI.puntuacion++;
	instance_destroy();
}

//Destruir en caso de salir de la pantalla.
if y <= -10 instance_destroy();

