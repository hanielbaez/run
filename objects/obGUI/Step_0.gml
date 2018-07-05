/// @description Insert description here
// You can write your code in this editor
if obControl.gameOver && soloUnaVez
{
	Load();
	if !(mejorPuntuacion <= puntuacion) instance_create_depth(global.room_halfx-100,300,-999,obGameOver); //GAME OVER
	instance_create_depth(600,96,-999,obHome); //Boton ir a Home
	instance_create_depth(global.room_halfx-100,1100,-999,obTryAgain) //Boton Try Again

	instance_create_depth(0,0,depth,obGUIGameOver); //GUI GameOver
	soloUnaVez = false;
}