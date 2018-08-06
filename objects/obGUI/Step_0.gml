/// @description Insert description here
// You can write your code in this editor
if obControl.gameOver && soloUnaVez
{
	Load();
	if !(mejorPuntuacion <= puntuacion) || puntuacion <= 10
	{
		instance_create_depth(global.room_halfx-100,300,-999,obGameOver); //GAME OVER
	}
	else
	{
		if !audio_is_playing(sndVictoria) audio_play_sound(sndVictoria,10,0);
	}

	instance_create_depth(600,96,-999,obHome); //Boton ir a Home
	instance_create_depth(global.room_halfx+25,860,-999,obVerVideo) //Boton video
	instance_create_depth(global.room_halfx-100,1100,-999,obTryAgain) //Boton Try Again

	instance_create_depth(0,0,depth,obGUIGameOver); //GUI GameOver
	soloUnaVez = false;
}