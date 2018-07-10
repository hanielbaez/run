/// Crear carros cada X frame

xInicial = irandom_range(300, 630);
yInicial = -200;
randomize();

instance_create_depth(xInicial, yInicial, 301, obNormalCar);

if !obControl.gameOver && instance_exists(obPlayer)
{
	if !obPlayer.volando
	{
		alarm[0] = irandom_range(25,40);
		//obNormalCar.velocidad += .16;
	}
	else
	{
		alarm[1] = 10;
	}
}
