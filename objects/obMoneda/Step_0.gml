//Moverse a la misma velocida que los otros carros
if !obControl.gameOver
{
	y -= velocidad;
}
else
{
	vspeed = 0;
}

//Choque con el jugador(SUMAR MONEDAS)
if place_meeting(x,y,obPlayer)
{
	
	obGUI.monedas++;
	effect_create_below(ef_firework,x,y,1,c_yellow);
	effect_create_below(ef_firework,x,y-10,.5,c_white);
	instance_destroy();
}



//Destruir moneda
if y <= -100 instance_destroy();