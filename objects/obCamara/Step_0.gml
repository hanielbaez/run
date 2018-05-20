///Agitar pantalla
view_xport[0] = random_range(-agitar,agitar);
view_yport[0] = random_range(-agitar, agitar);
agitar *= .9;

//Movimiento de la pista
if (layer_exists(layerPista))
{
	if (!obControl.gameOver)
	{
		layer_vspeed(layerPista, velocidadPista);
	}
	else
	{
		layer_vspeed(layerPista, 0);
	}
}