/// @description Insert description here
// You can write your code in this editor
y -= obNormalCar.velocidad;

if place_meeting(x,y,obPlayer) && !obControl.gameOver
{
	obGUI.puntuacion++;
		instance_destroy();
}

