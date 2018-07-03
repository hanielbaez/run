///Game Over
if obControl.gameOver && soloUnaVez
{
	instance_create_depth(global.room_halfx,350,-999,obGameOver); //GAME OVER
	instance_create_depth(608,96,-999,obHome); //Boton ir a Home
	instance_create_depth(350,1100,-999,obTryAgain) //Boton Try Again
	
	soloUnaVez = false;
}
