/// @description Crear carros cada X frame
xInicial = irandom_range(290, 640);
yInicial = -2000;
randomize();

instance_create_depth(xInicial, yInicial, 301, obNormalCar);

if !obControl.gameOver //&& instance_exists(obPlayer) 
{
	alarm[0] = irandom_range(20,maxTime);
	maxTime-=(35/60);
	maxTime = clamp(maxTime,30,200);
}
