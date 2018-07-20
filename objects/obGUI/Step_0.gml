/// @description Insert description here
// You can write your code in this editor
if obControl.gameOver && soloUnaVez
{
	Load();
	if !(mejorPuntuacion <= puntuacion)
	{
		instance_create_depth(global.room_halfx-100,300,-999,obGameOver); //GAME OVER
	}
	else
	{
		repeat(5)
		{
			part_emitter_region(systemConfety,emitterConfeti,global.room_halfx-350,global.room_halfx+350,global.room_halfy-900,global.room_halfy-300,ps_shape_rectangle,ps_distr_gaussian)
			part_emitter_burst(systemConfety,emitterConfeti,partTypeConfetti,10);
		}
	}
	instance_create_depth(600,96,-999,obHome); //Boton ir a Home
	instance_create_depth(global.room_halfx-100,1100,-999,obTryAgain) //Boton Try Again

	instance_create_depth(0,0,depth,obGUIGameOver); //GUI GameOver
	soloUnaVez = false;
}