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
	part_emitter_region(partMonedaSystem, partMonedaEmisor,x-5,x+5,y-5,y+5,ps_shape_ellipse,ps_distr_gaussian);
	part_emitter_burst(partMonedaSystem,partMonedaEmisor, partMonedas, 1);
	obGUI.monedas++;
	instance_destroy();
}

//Destruir moneda
if y <= -100 instance_destroy();