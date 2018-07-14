/// @description Crear carros cada X frame

xInicial = irandom_range(300, 630);
yInicial = -200;
randomize();

instance_create_depth(xInicial, yInicial, 301, obNormalCar);

if !obControl.gameOver && instance_exists(obPlayer)
{
	alarm[0] = irandom_range(25,40);
	//obNormalCar.velocidad += .16;
}
